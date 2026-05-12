Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBUNDOX5AmokzQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 11:59:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A64251E2BB
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 11:59:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A0110EA07;
	Tue, 12 May 2026 09:58:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TCrw0zZn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 164BA10E57B;
 Tue, 12 May 2026 09:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778579938; x=1810115938;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BPS2jFbZMOQfT6ntE+XHLZ9Zipw1qjEisyYV0YKeQy8=;
 b=TCrw0zZnq9y2wdIELXG8Nai3aLY5ZzjbXf6aH5gRd2PD+bL51eaO2YaN
 sxatZkjwgOWOAs5jR5vkFocxkKiPPCNGd1QEvlGmHHatLJyp+5oPbU5iv
 va6oXZe6i9BtXU8tAoqV2KyQxOknAPSmyOjBCNOIUEGGz2Eh76gIjfb/l
 aWxPZwAY+dK/h2uDVRzqMY4Cp7+eHsRqGNYMRzPTu0uO1rFX/Gay1yTbR
 Cg2grK5lBwzUP2kmK/9f8Y8yhseKK/zSBhTdA42ggCNnzbJQ6hJk9kvqt
 XPxXLvB9/o3MVFTjzRsTHwhmeaxAY+fgNcn94e5CSfr119B8kSR1NlUbt w==;
X-CSE-ConnectionGUID: Qvo+e2+aQ7KMi9yClnAB+g==
X-CSE-MsgGUID: qu29W9UQRQaMkQYqMZfO8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90866643"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="90866643"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 02:58:57 -0700
X-CSE-ConnectionGUID: NId9WfUfT9+82ReJk7DI2Q==
X-CSE-MsgGUID: 97y2oOv7SqqfvxMK0sJjSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="242694410"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 02:58:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 02:58:57 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 02:58:57 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.61) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 02:58:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zl6vDXVmH0/ESVaPgvof+ZX9WeHVvCw1cLcjlohu6AfiaX+pFJaucIrvVe5eh20ZtY7cKKcCNxM1ZtCtuZu5qGl0j8NmGrdAKOUw1us/MxkIKTSv9ZZ27BzxIODn3YlWk2KfXhNZvrFi3ejw1Av9Q+Z2NtBTmk4EUy6Zw+EfVPQTaddj4dnmL8XrRUhUKdbWhG+lRwcVZoRDQGxLM9i2pVw8rP2mAvYxTRfpVwAASP6+JfHDbS/CUjJMLtuwFGjwQ1DStR4be1uo8yTPeAsYa2Jf25wdyh1ITO5ibMGwkReYLwhjIhAlpxIMaiWSvRkFQ0FzpAvzYTWmdnE6IXwdMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tlqt/6RD6lWRYS8CjQpDgWqvrjbxWf/zB7v5s0BeGp0=;
 b=c76KGp6u8HtZmay//Egz1zhzEbtWqGNZGLpBoMp7Zzd2vjdVpoRsZvc8frhYOnEyCcU4eShWxqZbAF82eUPnD/yK3GSAkubaW1+rekg2k9RJKdsJdBxKYP7DZ1FFGVkd7pB6oSwySpSXeX4IPkVo2GxVzj4BFhk9dKe1yfytfn45K44Ly0G+2UlJCzn0dwTry7/+r0jxEFv4BU5si2mVP5h5dINHIGtgd/x/Rs9+DAPI1BN1Cdg6G6ROfFWAO96jIVX0Wj6PlUsejk4P5XPCUpl1UU81WSypTmQA1zpJvACpL71j2tF1CZKS/KGdVK4dYVK9l72MvE3MuwUYig4luw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB8576.namprd11.prod.outlook.com (2603:10b6:806:3b5::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.21; Tue, 12 May 2026 09:58:55 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9891.021; Tue, 12 May 2026
 09:58:54 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Samala, 
 Pranay" <pranay.samala@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, "Srinivas, Vidya" <vidya.srinivas@intel.com>
Subject: RE: [PATCH v3 1/4] drm/i915/display: Copy color pipeline from plane
 in the primary joiner pipe
Thread-Topic: [PATCH v3 1/4] drm/i915/display: Copy color pipeline from plane
 in the primary joiner pipe
Thread-Index: AQHc4Qr8gan366uAZU2Bs8Dd7yupK7YKJbOg
Date: Tue, 12 May 2026 09:58:54 +0000
Message-ID: <DM4PR11MB63601C5AE2DD7F406CDCDF45F4392@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
 <20260511053213.3122314-2-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260511053213.3122314-2-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB8576:EE_
x-ms-office365-filtering-correlation-id: d83b77c9-a804-435e-dd2e-08deb00d13e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|11063799003|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: PN6RTYCJ1hTAWSagnklDHxQY/wvkZPQpAaERDiUw3/jr/3VV6Af2R8A4Dsahjbe7H45mREBHHx4kr8mX28kXGfVFDMlhPThHjIleQc3CwQP1iRDuSjtIuLWwTu5KM/aiDoS4gI7PC1OfIsbhR8dO57w+oUK63YrkPr8G57+l4b5ykUUgwc8efVzhgNRdYOd15Sdwu1V5zGkFKJsURrfzwiyBW0gBtB0YMyjnP0YfzP6QFTgwYLlmItAxtXbN+PxgNB44azIWA+y3cX3ZJ5xNhOZyPjDqoOGf3b56R447/dum+Ai3hzxB2AeOT73Pc5dclFnI12Zyxr1/vBqTUuaWkEt3E3YNM9zK0Fg8f1NuMx+oY9Nh7VammIwo3g9McqVSLSepUqGcRSc9q6cyo/SRfwiFwgpWnGEDq8rzSDQVc5CTnFkQXtjFRcg3BLpuOsRz6aMjFzG741xPIpfN5R6rCbw+rjrBBtsD0cIurk6KOOsFYebAzw9eSiOJ8Xi0xPCi7V9lGV+iBRgYjeGF0hyUZRDZxO9WvOfuOA1A3WsJTbM66Ua7tAKnH2S/dIPtR87lNayvZ3mCjz8ZNPL0s9DpVuRg/i6KAK0HfYp2oFAtMms0eGsms0A+WJWts2ESMHvPLPqG8Dc+LU+R+5QY8D74lGZNImTovgXIZYgqyT9Tf137BZ0bE9MZAfogQheFE+l3Q5g6EjwAi2uhi44TywEWiQuqcDjK7GGUvPzEqK8ww5posNhx5SfYAqGgASHWKA2e
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(11063799003)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IfMCJ5PMSL5WquvDpl7t4JjhtktFAgEhUB5uVU1D4Gy3eYYsxYgZ4u7i1IO7?=
 =?us-ascii?Q?sp6Ut53PhYYSxvE/AQTTiPaywJgVONiT+FW44ttzqY5NFsIbIDIFpXVzYCmy?=
 =?us-ascii?Q?/h1O5qM4BwVqXWmVTjH4r/nEToEP1dR36ybr+NxtcdRGkIZrna2e+7dH5him?=
 =?us-ascii?Q?8Dk01rcyG9mbTtw8CgVagmT687xqUzKjRLwe+xT27yYs8ozQYZ+ieJBjXEW+?=
 =?us-ascii?Q?qCFnMOhM42a1qxasVMpfu3Z3ZQ4QOoEZJqPXW5EwDtNg3Kb2eSuFjnqTMKtb?=
 =?us-ascii?Q?GkwPO2aONSA+hyq6pe4WZ5k0YamDl9vpLZ4fufQBaqE70aMowpMMJ6K0FnCP?=
 =?us-ascii?Q?WCA5NEPMUIIvmjuvsVuiAXm7Nh/ykHbqoMfcbGsTHNBqymjJrx7hTv9dZRK0?=
 =?us-ascii?Q?MrhTHb9qRjDrV1dPXaWxDUEIkaUgsSuX/ZSa2Kevua20O3kfRNMvQUVLnmjY?=
 =?us-ascii?Q?0fnZOJ5tFcJqkOIkyeRZQryTZLB4fVhoo5VGTkTVK+817JLLQ/Sd9ws0wlrf?=
 =?us-ascii?Q?AoQHOGCNnyRij8fYJ9sX+gDz6KcgA5RMLKc6t8reNrhluQS2x99cGvYH+RZ5?=
 =?us-ascii?Q?8E5zwmNYCGYjALqlJ82vge/wYI9lZHSL+cnMRyULA2MA2fou7QcQlVs2ELvB?=
 =?us-ascii?Q?N1mLdPJxZr9ZWZbWCONC1JnJ65t7xprvIV9weV47tx1VzOwX6QPkXj6TBLdB?=
 =?us-ascii?Q?UXPWINzJu2s1hL1vETRdKrF0tjomUtFZFCymP7FHx2P2Nzao5Zt5+8vh4dwk?=
 =?us-ascii?Q?xE/yDMDlISytLZ6GhLFr39mqno+Ufo2D132MuZNYUVP/S9btWPtFxkWHc6CI?=
 =?us-ascii?Q?5MHVgsS3vNzVLJ+821pCIgmd29XX4bie1GpUgo5HngCAEG6lzT+/AQ3kU2Ev?=
 =?us-ascii?Q?mIo55qkvCz4dhNV5ce3n9aUlsy6kuV/1zKPiA5bJeSeYkFeDHgAUQAsXeDvw?=
 =?us-ascii?Q?r5vPIgR53sNsxa8avH8lQV+w5NzV+du88kba/+9LDynV2RrgW/SflxSpOIaD?=
 =?us-ascii?Q?NLVJSfn5E9WDBV7Ig8/vxhLDBHnMLHLQNxw3K9hO3AWFCwIzlrLJt2tic4yW?=
 =?us-ascii?Q?qJUnydFqdXkWqCjriKB7UvWTX9P/6PGtQUCoGw5bPQSng1r1Gl0cQq1WQvPl?=
 =?us-ascii?Q?CWQ8/m81B5ooqUscGd5GqCw+dINBz0/DpkApAZhRi1UygbY/Ju0c4le7yQJ2?=
 =?us-ascii?Q?OiCxlLFJXWK2Y0BOLr4eG3ufKbeLw+MnRBXN9BPlM27Tph7LJm1YSv4imbRD?=
 =?us-ascii?Q?qtU8yIPnNTNkFi6sHegx6/7zAiO283wIcQNc6c5CxzQUtV+FJQKYbYaG++R2?=
 =?us-ascii?Q?p6GRX2K1Hot9Qg9l1ZacmiMrabRELV+/f0Dm9+GVM6Cbc+j8Q5hvyFuWcQio?=
 =?us-ascii?Q?Vif2IXP4srnh9arnB+2DAfC3xSpMZtYLaTprVyns9Wz+1ZpJFalU1mdwaGaa?=
 =?us-ascii?Q?sFKcJ0zA6TADJKcBq/YdWw5cM/3yoSJBKvHn4aDWWAsJvU+Cs7Ws1i7mkgno?=
 =?us-ascii?Q?R5+GWFO98jI3xtq6JrNKXDjWK61+aphA/tlLPcPh2yXW1uHNvFmpdDrAF6zv?=
 =?us-ascii?Q?K0QQbsSBAcIU8Q3M61D2qEYIqVvV68bgNPq6y+JNaFsTNTTGUSpT/k4HSN1L?=
 =?us-ascii?Q?zk3Yr9qDqGXASV4ZK5S9xtyi+LPYg9x9XEKvWedlk1Py0Rnw19YKAwnuI8Vq?=
 =?us-ascii?Q?SERHhC53L7ywPXGH/yHnRcGsLHSuPAOfExrHTDPwii04k+PiETaf+XLTv0UW?=
 =?us-ascii?Q?KfZQA2Q51Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cpI+x/aeavSMapf7sItv2iIxPcFWCCQtJN6ZIjmEoG3UVJ2CIrDHqZi9VNDTzH9gTBeYLVPDX/xs/8XIghm6bPRagpUjuRpxXo0OMng3K+majMu7UZf6N988nI8Vm6gvsWTxJWCt7me4ECNFboyBvrh35KAXxNi0TqY912YxmxwYEHxmgHsytNJb508M96m8FL3Dz8hubHb+Xv0D1MurYtGojir/BgMOXCN2Pzu78ibuCIJZsDd/VwtIa2WaSLW6uvJAfV0h1d9um1I5I4v8mYUAtOL+QBZ2QBXeeeLgjzlVcwRBqh8EBuXcscp2nHmDWpjlrcXCINJbnHv7VQ2Vhg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d83b77c9-a804-435e-dd2e-08deb00d13e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2026 09:58:54.7684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tTXY/DZ7vsM/MiVUKQkkruxGu19V0zvhtdq8rou1exZRT6S2VXb6cI8GGEO27uXD8ZnZJTFBBIHXV/501c/84w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8576
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 8A64251E2BB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Monday, May 11, 2026 11:02 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Samala, Pranay
> <pranay.samala@intel.com>; stable@vger.kernel.org; Srinivas, Vidya
> <vidya.srinivas@intel.com>
> Subject: [PATCH v3 1/4] drm/i915/display: Copy color pipeline from plane =
in the
> primary joiner pipe
>=20
> When copying plane color state in a joiner configuration, use the plane i=
n the
> primary joiner pipe since it carries the pipeline number selected by the =
user-
> space.
>=20
> This assumes that all pipes in the joiner are symmetric in their plane co=
lor
> capabilities.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: stable@vger.kernel.org # v6.19+
> Fixes: a78f1b6baf4d ("drm/i915/color: Add framework to program CSC")
> Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_plane.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c
> b/drivers/gpu/drm/i915/display/intel_plane.c
> index c181a7d063ec..e403fe4a8a20 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -396,7 +396,7 @@ intel_plane_color_copy_uapi_to_hw_state(struct
> intel_plane_state *plane_state,
>  	bool changed =3D false;
>  	int i =3D 0;
>=20
> -	iter_colorop =3D plane_state->uapi.color_pipeline;
> +	iter_colorop =3D from_plane_state->uapi.color_pipeline;
>=20
>  	while (iter_colorop) {
>  		for_each_new_colorop_in_state(state, colorop,
> new_colorop_state, i) {
> --
> 2.25.1


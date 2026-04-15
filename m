Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAVZM47a3mkyJQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 02:23:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF323FF4A5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 02:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B766710E099;
	Wed, 15 Apr 2026 00:23:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AcXHQA9L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C861510E096;
 Wed, 15 Apr 2026 00:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776212619; x=1807748619;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CVFxw2FdQMx1Pro+6RH4nOxwfQb1x8Bm/tBwrWyKST4=;
 b=AcXHQA9LdgZN7XXl+k2ZFId1xHOusw8ej8lJr4pMsS4kB6FyP7gAHtsj
 CitLpuzi5rHyZnqvISjBeabubjOu1ErT3v+cnoJOMAbtqAETXjNPJle0v
 meXcfxYWWCPUTZyU2mBMhtZe4IB7ZTcCQNL/aWGgs0yiPlR6diBYeIml2
 Ifrp/Q9AMzdSJSBP6ti522xFlmhPdxGsxQnqR4ebo1vKazwuDLQFyr2dX
 naxiKEjAzJ4LS2bv/870OtWlxgZ7NyAKJp/rFf5sfx1z2ce46aRAUdpeH
 3MxvlKqOH/+1v7jRuJgEG7DLkQv6CG7xDPHq3sKZoFdzOZiw7pDznJdSO Q==;
X-CSE-ConnectionGUID: +yKTdO2VSj2++qDvxW1roQ==
X-CSE-MsgGUID: 43phtwmqTOO6dT9dH5GwyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="81047103"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="81047103"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 17:23:38 -0700
X-CSE-ConnectionGUID: X1/K/Q4sQS6Oajtx9EcpXg==
X-CSE-MsgGUID: yamttyWDQaCjGJENtKNTKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="225944848"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 17:23:38 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 17:23:37 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 17:23:37 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.46) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 17:23:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UANUhGAj6rjUuknaLUu/pHsjDmBpKtyVFvb5lrT6mhaSYWz/0jBF7MgCrGGJYePa6KzYNmqsk4qw/RyqUaIq7e4WX3Esq6SehODhaYiZ1ZZSnvOyw+DzHnQyx4A1EAYGvT9mc2nUWtLuaCMx3ExxeS/5vFyJyqpbiPrITyoMIRyrHL4QPvWRTdiKhrR4/9Wx+iCucQmPFyHjAhRthA7fLxK5l1wGVQMKu7R4ad8nn2h8eo3ZTyr0f7YeC0pKNn5RVuU1W16K1iPwbzXgO51nqDhCLtyrx80jZZt/bvXfDW6deIEvMrydn1Oi5DWGiMSqo/hq3gTvBwtY8W50jozQig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F5RxoxqreKdhiD94x6RvIAXNuSVJsThlzPf2w/yLeMg=;
 b=gP0PqV26isvyW5AOMBIHx5XTa6YUAyJY2cOSUGNUgJ9kQlDfcAddELWDtw1jF1Nqpka2MB4naWGFL01Zf1UeEXRotJ282DOdOR53ihFfGJA8wBaQkokog0Peky6amNTtqd6/lE49EXinEq7gnLgHgi22fei+mM+kBm43u4JaCoP5taXpSh0cLfdfMS7IyVS9uwmN0PWdlsNhkA1kQehcxvAje3NsMFUotMi/bxq0G9yLaiF3VSX5/pSztxII07Z4S+GpkBZ4jkVKGfub2cvOzlOISzHav3zD5nYc1Y3Eq743IXJQL3jQaxhLqjyWi0unIThXVuWj0hkZWHVI6OYL1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by MW4PR11MB5869.namprd11.prod.outlook.com (2603:10b6:303:168::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.49; Wed, 15 Apr
 2026 00:23:33 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%4]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 00:23:33 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV12 UV
 surface offset calculation
Thread-Topic: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV12
 UV surface offset calculation
Thread-Index: AQHcydeH95mm/srKq0CqfRo0nHMO8LXetv2AgAAXdCCAAA6/AIAAaxtQ
Date: Wed, 15 Apr 2026 00:23:33 +0000
Message-ID: <PH7PR11MB8252849373D4DE7C3498F5D589222@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260411171521.162189-1-vidya.srinivas@intel.com>
 <bf735bb719753185479461767d7c077bd9c3bfda@intel.com>
 <PH7PR11MB82520337B2387D40ECBC4FDA89252@PH7PR11MB8252.namprd11.prod.outlook.com>
 <CY5PR11MB63446BF7619834EE2219371EF4252@CY5PR11MB6344.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB63446BF7619834EE2219371EF4252@CY5PR11MB6344.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|MW4PR11MB5869:EE_
x-ms-office365-filtering-correlation-id: 617bc5b7-b31f-448f-ac33-08de9a853a41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: dtnuaHZrdvyCePJQHyov4erKmbBZ2/2EimrkxZ719lv0b2SDGXtt2bVsNrd05p2r0pwfKSBLBW1CNUJGIn8zoLgDHuQuJeBZViJalSguglgDovQMTCfxfhKMRJ1NPGc8bOLYOhWLr+XDH6wCfsGmP2rxXSO58OC9paii6wyTIfWjgj1Lxor8gonxXYMIX4qffpXGlfTTUAJARjPew869W2VCzln1lpvUhmhIwVpAWEYcUMqdAzfgYofNkgcYYH1/ke41xA0sp7Jf1ZX1E+/+E3CGhbMmxBtxhlarb5kJtyfRah9CG6CchyNRWv+edx9uKVNT5LCnLO+fLtlWBYmEEvBH5tCnnPfzhuEIDAs8eXMuwpmZrCBsEQM28WcIawcLMSuABW8Dlb041KejSTsBAR3cwG7yYwLRMYyRNX01a1PMQruFWnzm6nMWBZXr5xPsASiDIQmeA2A3oPSBU8Ye/TGWKoSWN0TrqsTZr15mq+r66+v5WAkFBAymzQ9IaDCrqo4GqE1EhFqX6jUQPtUmjnAzwAsZzCf/shQdJu1Edw11yQeFGXJdgCg3OeNCgilkxK+3NAgoMYPQMm2iRTQ7SqFkP6PJwIrK9e6e87E/bOMMzBtXN4xLh9ri1giEDTZd1vfuYL0KKxt3qxXTXtItQ5CzH1zcZjvssPC9aKwnrF40us8rv+1rxbDlGMF/v74jgg/NRfIRGydWj5D4PDMyWFLwn6wivi1jhN486ZH2l/0iYDEmiwKsYqHiZZD5eV07
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uEMUdyPgyT1qSCWa33iYJKnlnAqkTFst+iwKDrHcNUtjIb2Qkc5i6uX7smrr?=
 =?us-ascii?Q?S0sJFLEEhAWB083aYKSvi7EVU86VFIQndceDK42aBeffXjGky521E9fZzR8D?=
 =?us-ascii?Q?p9hsTXp69s3gafD1C/OJ3NsJLTcmDBNW/gDsMTLzk0/moZZQc5EZaOXLfcv3?=
 =?us-ascii?Q?uQW1eLP1mnTObophzLzD2O+/WX7KylxC1s4yoT5Mob/oezU07dLEsgBbujJK?=
 =?us-ascii?Q?qUCzJ5d+0fvN8KA3DWZL7iVGYl7NdkUXFjgGneDSVZSYDhK4aV3c1SKjRkbC?=
 =?us-ascii?Q?cZfK3vo7hvW4IB4QiooS2eP/szriTYX3cH9Fy8vLEo+g2J1DlI29Q4WcdctY?=
 =?us-ascii?Q?n/rJW6fe2jBzVkqKto/bBK31oDvj6nJVATpnFr4/rPQy2Hax03Klekx5oq2W?=
 =?us-ascii?Q?xoHaMXVlSJyd4HPsiRIahCrZgTQrGWVC6eIB0J8lgRUKESqCUpnRZViwnOOJ?=
 =?us-ascii?Q?thq7fsp3LbwcC7cY4UzcqLtruZPZq/ZJa/q/ALH98EJ2qsHi5RUhPPzYv8XW?=
 =?us-ascii?Q?Omt2bvpjEdcz0buVnvuOfYqiVnPQjU9wh7Z9uCmwEPE6HXs7+AXxA7WA0Twt?=
 =?us-ascii?Q?JVVkOWb3POUlxQP4dxvjgEay/fRyIMgOhMEFt+iQCBMmn6ek6BW/qtmiaQK9?=
 =?us-ascii?Q?BW5ySzTqms0+GAquH3JR0bIGHLt/ivR9jVWEBYwyMLLSwFTwvNg8VsK8NRIF?=
 =?us-ascii?Q?flSVHBarIXsTiWIoKKy6tms1QrkDtgkK1niLTUlc0XQ2kxZm4/cpL5EgTbYm?=
 =?us-ascii?Q?dc3JeNx19dKlEPSyRythwTMEdByWfrZVnqw+8azIeyee6kYTy9rH4wip0g+9?=
 =?us-ascii?Q?bAQqWrRBsJMMP2EwAtrTmgfkbe/rviS90TXN3y7/nWG2KR9jkFgbsgdqpEr3?=
 =?us-ascii?Q?FzQr2cwAjYyUjjohZQeyemvh0JbtiSdeDKl6ru1e7SfpmCIt+l20slNyQsaV?=
 =?us-ascii?Q?7CPTi36FI1s+ouN4jZTRD1p0A9+kKiXTBD33nKttKUqZ0UyfFW+5o+1WBs+S?=
 =?us-ascii?Q?+AY8TtYdkYjm9LyLKAFPpYxtegaUqObhOFS3mflQ9Bcj1GiWjpUEUDjf/b2z?=
 =?us-ascii?Q?McfpOs3xUvC5b2txzkfEMmSnM64jnyNV7+fYvECoR4HU3QS646yojMq8uQNi?=
 =?us-ascii?Q?cniBOkSKdqcuOJnDNHMsfn/8JIvpyr8QlUxDB4mxYmaBY1gkjs53HlQB5SDb?=
 =?us-ascii?Q?W3K4W7UMLMROvnMT6YaFtQ5FkNsnTShm6usTfS6+LH4Qx+PzRWctm9F/NfvX?=
 =?us-ascii?Q?D50zdyj8afhUNquffn6mu/u3PYFkEd/lNqLemYV3eRsWM0PEsbWZPNmMIerm?=
 =?us-ascii?Q?3NmLn1Su1Ww4CnyH6qH1l/yHhTJfqttB9uh+Nh/HYnLaXKWGWVjdS3R1dcn5?=
 =?us-ascii?Q?uhm9iSuypD+l0mIbK0DnkRKcgCbbYzt3/WExG72XiDfYzbR0UjwRqbYgz34V?=
 =?us-ascii?Q?6mYB898e0L9YrzrYl/eJUjgqTqJn3kqexfm7yhIdwsCxyk1Gsaq9wG4nD8Iq?=
 =?us-ascii?Q?E1cATYdYZV4bGxIpLKU0zm+u4g+FqLgw2NlzmkHXQqiLtcTBEkp+XtPcCs+r?=
 =?us-ascii?Q?4Al24gokSPtJ/EqqIr/Tnd7FrKgpA/2WDTOiuoKKvdq23TZB3C854EhSetF8?=
 =?us-ascii?Q?fuUC9HOsfYOMNtbdvDLJhGl/UQNFuzJmqshDyAgYxgsSvZ5DZGbB3xI09Yzr?=
 =?us-ascii?Q?y3FypW7334ME4UXV449zF2Di2K6jVd8RI58KVKkvG5fMmKqfIUb9/3Wv7da/?=
 =?us-ascii?Q?nUp1fzTwvQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: S0E+jNB7C2J74CLj2vMvuR2ZvaExlR+4Dcs8o0Zrpy1Hjfoaqz9/ckfBB9oYTkbulVaPnhPKQIp+sDieLu72uneDiLJ69xfMfl0BLj9XlQjWp+fVxjiX6PdgUxtLZVFRZ8gtJcsDgcczf+OiOCAQ2jDcK3yYfDgtqRug6uaQBR/vn5JHJlDAso8yPL/SA3OFEsvTbuxFFgvN2K0iONMI8/+rtpQ2yVwsLJjXw0JxKhdAjkYw4LRZ1m31JdZhpPAuJuaGxgQcgE2jJGRmJZ8Lmxi7cfn3hOLZB4PQiTThHnqEDq3hH7UVhahc/tiYpzjp+c1nAjsi7X4jhumkthYclQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 617bc5b7-b31f-448f-ac33-08de9a853a41
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2026 00:23:33.1451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zr5cjpQIgvTPD3KkNt2+9VY5DdeP+naSCyC4OfXigDaiyPD71FqoTT3aGm0SD3m+r/todtMUMpuClCUR71kQA/uRCANMaZA+P39ffT/d3HU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5869
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url,PH7PR11MB8252.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0AF323FF4A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: 14 April 2026 23:29
> To: Srinivas, Vidya <vidya.srinivas@intel.com>; Jani Nikula
> <jani.nikula@linux.intel.com>; intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV=
12 UV
> surface offset calculation
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > Srinivas, Vidya
> > Sent: Tuesday, April 14, 2026 10:41 PM
> > To: Jani Nikula <jani.nikula@linux.intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org
> > Subject: RE: [PATCH] [RFC]: drm/i915/display: Use ceiling division for
> > NV12 UV surface offset calculation
> >
> >
> >
> > > -----Original Message-----
> > > From: Jani Nikula <jani.nikula@linux.intel.com>
> > > Sent: 14 April 2026 21:13
> > > To: Srinivas, Vidya <vidya.srinivas@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Cc: intel-xe@lists.freedesktop.org; Srinivas, Vidya
> > > <vidya.srinivas@intel.com>
> > > Subject: Re: [PATCH] [RFC]: drm/i915/display: Use ceiling division
> > > for
> > > NV12 UV surface offset calculation
> > >
> > > On Sat, 11 Apr 2026, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> > > > For LNL+, odd source size and panning for YUV 422/420 surfaces is
> > > > supported. However, it requires the UV (chroma) surface Start X/Y
> > > > and width/height to be calculated as ceiling(half of Y plane
> > > > value) rather than floor. The current code uses (>> 17) which is
> > > > floor division. For odd Y plane values this produces an off-by-one
> > > > error in the UV plane offset.
> > > >
> > > > On Android systems we see PLANE ATS fault when NV12 overlays are
> > > > used with odd source dimensions:
> > > >
> > > > [  126.854200] xe 0000:00:02.0: [drm:intel_atomic_setup_scaler
> > > > [xe]] [CRTC:148:pipe A] attached scaler id 0.0 to PLANE:33 [
> > > > 126.854617] xe
> > > > 0000:00:02.0: [drm:skl_update_scaler [xe]] [CRTC:148:pipe A]
> > > > scaler_user index 0.0: staged scaling request for
> > > > 1279x719->1340x753 [ 126.854837] xe 0000:00:02.0:
> > > > [drm:intel_plane_atomic_check [xe]] UV plane [PLANE:33:plane 1A]
> > > > using Y plane [PLANE:123:plane 4A] [ 126.854926] xe 0000:00:02.0:
> > > > [drm] *ERROR* [CRTC:148:pipe A] PLANE ATS fault
> > > >
> > > > With Y plane width 1279:
> > > >   floor(1279/2) =3D 639 (current)
> > > >   ceil(1279/2)  =3D 640 (required)
> > > >
> > > > Change the UV offset/size calculation to use ceiling division by
> > > > adding
> > > > (1 << 17) - 1 before shifting. This is a no-op for even values
> > > > since ceiling and floor are equal when the dividend is even.
> > > >
> > > > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 14
> > > > ++++++++++----
> > > >  1 file changed, 10 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > index 7a9d494334b5..c455bf92ae99 100644
> > > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > @@ -2139,10 +2139,16 @@ static int
> > > > skl_check_nv12_aux_surface(struct
> > > intel_plane_state *plane_state)
> > > >  	int min_height =3D intel_plane_min_height(plane, fb, uv_plane,
> > > rotation);
> > > >  	int max_width =3D intel_plane_max_width(plane, fb, uv_plane,
> > > rotation);
> > > >  	int max_height =3D intel_plane_max_height(plane, fb, uv_plane,
> > > rotation);
> > > > -	int x =3D plane_state->uapi.src.x1 >> 17;
> > > > -	int y =3D plane_state->uapi.src.y1 >> 17;
> > > > -	int w =3D drm_rect_width(&plane_state->uapi.src) >> 17;
> > > > -	int h =3D drm_rect_height(&plane_state->uapi.src) >> 17;
> > > > +
> > > > +	/*
> > > > +	 * LNL+ UV surface start/size =3D
> > > > +	 * ceiling(half of Y plane start/size). Use ceiling division
> > > > +	 * unconditionally; it is a no-op for even values.
> > > > +	 */
> > > > +	int x =3D (plane_state->uapi.src.x1 + (1 << 17) - 1) >> 17;
> > > > +	int y =3D (plane_state->uapi.src.y1 + (1 << 17) - 1) >> 17;
> > > > +	int w =3D (drm_rect_width(&plane_state->uapi.src) + (1 << 17) - 1=
)
> > > > +>>
> > > 17;
> > > > +	int h =3D (drm_rect_height(&plane_state->uapi.src) + (1 << 17) -
> > > > +1)
> > > > +>> 17;
> > >
> > > The problem I have with this is that the original >> 17 is already
> > > too magic. It divides a U16.16 fixed point in half, and this is compl=
etely
> non-obvious.
> > >
> > > The commit message doesn't even mention this.
> > >
> > > I think this needs a clean separation between the division and the
> > > conversion to int.
> >
> > Hello Jani
> > Thank you very much.
> > Thought of using DIV_ROUND_UP(value >> 16, 2) but it would lose
> > sub-pixel precision from 16.16 I guess. Kindly suggest.
>=20
> Hi Vidya,
> We can maybe divide full value by 2^17 directly and do the ceiling operat=
ion.
> DIV_ROUND_UP(plane_state->uapi.src.x1, 1 << 17);
>=20
> This should preserve the sub pixel precision and also ceiling gets applie=
d.
>=20
> Regards,
> Uma Shankar

Hello Uma

Thank you very much.
I tested your suggestion and have pushed v2
https://patchwork.freedesktop.org/patch/718371/?series=3D164739&rev=3D2
Kindly have a check.

Regards
Vidya

>=20
> > Regards
> > Vidya
> >
> > >
> > >
> > > BR,
> > > Jani.
> > >
> > >
> > > >  	u32 offset;
> > > >
> > > >  	/* FIXME not quite sure how/if these apply to the chroma plane
> > > > */
> > >
> > > --
> > > Jani Nikula, Intel

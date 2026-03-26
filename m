Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCu/NZyrxGnl2AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:44:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3417B32EE2D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:44:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E52AE10E24C;
	Thu, 26 Mar 2026 03:44:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A0xwnFXH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F5910E8FA;
 Thu, 26 Mar 2026 03:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774496664; x=1806032664;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RRBpAwrGgmwhHDRp2WalNeSYcAK/klEocaTnHrpsowo=;
 b=A0xwnFXHDq7+hXVkHhkiU3lzN/q47ltcmDnk1hjuCUco8zTmfoiE/u0o
 lJ4XdBMHFR49mXQLWTczmVS69Xva3chrDS9zdm33wlaZd+FzQvZ0cpS9F
 EQb3fwRs6Uj+xc7DMX0qvgGh7NV6KuLfMUjbniJJxIa4IhXGL2HOe+gyr
 Ei8CIkLcXmenAc31wmLSt2YL87vNqpiGeqKPZuac8C8dgoEHK2wD8GHlI
 lVWHATfl1Fwvo7UgykyBXeoG76KTpr9LIlyQqwCEy5KXGhe2g4h4qipBj
 8YRZpx89XgATAtL02qIKqsGdMM4SeNj6GDDpXWDYVWRuK53GriwD+K+oF g==;
X-CSE-ConnectionGUID: W0XAamCxTO2BMyzibaETDA==
X-CSE-MsgGUID: 29Qd8kzbR62eDQLaPEVfDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75566672"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75566672"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:44:24 -0700
X-CSE-ConnectionGUID: G6DAS4/fRWKIapxZNCmowQ==
X-CSE-MsgGUID: Odh4s5rNSxin9TmCx046Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="226511837"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:44:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:44:22 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 20:44:22 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.6) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:44:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dnJSCc9gveoAj1xv5+5aCH0eTmJ5KJlxvt1FSFLr3Sm/JscnMQMOrHW96hur3bZpYIRhwYN06rNk84KxFuEJdqXRsMNTWJEk8knsEYxhXsfQdpfVcx7jpT7X8rFowERWIfndhhGHUazFWSNFg36xiDW/cfBnatxS0QukQ7l5jIFztaVq+PcysP+hh+ieE1Qec08r/OEl5FU7J3mGxNO+74m/H85xCiOCfBjReMk72GZzOHrEGcOgrk1WqJNWjnY3oqbYyXklLsiXROK+wt0g01avifBfB6PzQPtrj5BosRNDlPBJqRMj/7Aadm87RWftfLMRpybHpNhEehdihvGlmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VW5hIhkpeY9sLNPrrV2W5Jka/pF+g1L655Of8vbom1Y=;
 b=EfV0yZBbtAAUdabEeqmWC/tbYqXHaVgUtGg3X0Hj9pK2kRTvp6GP5fMnNqw9MVhFDpajd08T5TSYTVNQ3aHohxc9Ugo1q2F/infRfHRwZveHBMlFozhypY+vbtd5AqaCoIbJ2dWHdUZZc21BKWzSuQ/acKuaqbm9KxlJ2AZmEGJhVD/ElRvmKb8IkMW+zKWKT8csM7p/5aPA95FVylbDDNDvVK0X/HS3aNWqQwXLFlNlGfjtuP4HS3Nk6ba3mSgeNX69mdDQnUXEqX6D8COaTRjm8311Q667HsM1cyJbo2jDKEnkvbYmyXc/EkeQ+4bGmeT7SlMaQjkkMoFpBedTgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM3PR11MB8758.namprd11.prod.outlook.com
 (2603:10b6:0:47::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.13; Thu, 26 Mar
 2026 03:44:18 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 03:44:18 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 16/26] drm/i915/writeback: Add writeback to xe Makefile
Thread-Topic: [PATCH v3 16/26] drm/i915/writeback: Add writeback to xe Makefile
Thread-Index: AQHcvEe8wQ1U4Hbi1EK/LbOhCuLzgbW/LHeAgAEAhfA=
Date: Thu, 26 Mar 2026 03:44:18 +0000
Message-ID: <DM3PPF208195D8D3C6BAA18F7E72DE5E984E356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-17-suraj.kandpal@intel.com>
 <acPUTVa3Qc47KpQQ@intel.com>
In-Reply-To: <acPUTVa3Qc47KpQQ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM3PR11MB8758:EE_
x-ms-office365-filtering-correlation-id: f52b6aa3-38e0-4d97-5c7e-08de8ae9f5bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: aNzGuufDhU7tH9QBol/bPuGV3HViPQHI3hY4XU7RutRhhbRsJAFpQRwBoxdujLYzVYqcCQcYyeffsvDPT1DBuCqVCqwoGCPFsj7wvxV3m3TlF8ulmiQSZfWILnluK0P2WhX+clYZFkY1ZGOUUI1DY00LVjQOvqDpO7zfdGUronQ1xlbuJwqaNALV0BsxMZMh11mjT1czX+tSzlE0HSIrlnDqcaj7DikQwrUCqqbJnDz7yBFas612shXwUK28xvqo6ed66hY/4GP0Dn5FZWJ2RcV0YzJ7JrsjdZUXeHXbF3DRdaBXRYp98JffImGMwEdKMsbZ0+/Zs0tes9eIuxgGHbbMZFgwh+i9hSDD+WkKhLRGorEGOKdSFE/3ZdmsFUqEfWJUdv165QMT9Jz4sdmRtZ1fUrnGkJF4Rf6yI+sf14pZCFiyUozyNnXxaKFDb1hM9WWKxNMHi6bMVM1Vc1lTjYAZqUrECO3IIXSPknLvqjT1g5ESw8CHQuHeQkT9BThYHfoaSrC13mVK59MejkGPbqEo99l7y4YkmFFLvLaOfmCTIOCa1S7KFiXRS8fkpGZ/3ax5e7jdqtH+fmqzSA06mMdb8gZ/YXveAbGbyhaZdFHW3vdfSxfqo93yoLalt7qge1Q+05J2Tqw1YZnKZviSSYQ/3rbpLLwp71MdZlXoVwy7rBLdgdNu6deNlNcvVEpzQPLi3A/atCSk3LOez4buRyeH8/btc0N4zmzybeCsQWbnyd+gRDFeC4rwCV9mHpexDFtl2L4/Z82Efa7qQKfku/on4gtexDxYGq4RwMGmBg4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?DXMJ5Rm3ms25OjJscfecVYVmP5fd07yoyPHTbcCwKl0w0+eijWDaAjmmZd?=
 =?iso-8859-1?Q?9AP/GeurohYGHmfv4O9xiG3u967HrV3OBFzUUKs+Z2KZ1X1atrInLTtCS0?=
 =?iso-8859-1?Q?HxhakePUOdBHEf14OScpRpgWSdnypQyZVZO0FvQ4D73PT1jn19LcQ0bZl2?=
 =?iso-8859-1?Q?VkMl+hp6NvwIZl+RQxP11CnlFJ6tqXbdo2L/YHKq0I7ptblUIQWRmsdtdv?=
 =?iso-8859-1?Q?2Wc4KxaVrFIaG5NFgKREJhwCBSxW2bBQp+0yzGwkhsMh40W9/yc11ulCTZ?=
 =?iso-8859-1?Q?MYoiv5vwyz3YEWJ8l3Xe31CkYWIua9X3z3omDghEbZLJGotvj5eSEE9+VC?=
 =?iso-8859-1?Q?vfgIPXZjzeaaWv/iNNOR0dbhX0UMU5XAHcb+v6e2hJ68s1p0pIncbpdMbm?=
 =?iso-8859-1?Q?7rb1Egl4hGi2quU1tCzKv95Ri5qxfbCozCkpwQJX+AiA0ZBtnVM2uzIRrZ?=
 =?iso-8859-1?Q?5m7Qym4yNDg8i2SoDeXbWwPEdLSsYRCgARg1jxEyF+l04VtWPU6gjD1zQl?=
 =?iso-8859-1?Q?cfow+Qk8j8mbASPjd0MqBnhBh6HObEo+VgbDB/ovaKbLk5NSiCpBLPX8z1?=
 =?iso-8859-1?Q?Xt2qqW5tLOegL4gdq1a1whiRUCxA2d4zdaGBBJWLKgqeEo1LGJl+OGqSmY?=
 =?iso-8859-1?Q?eSnQ9KlRq5XILU06yKEQe407QQF5DOcVdwPbW5XDiM2N1zSDiJu3HL0Bue?=
 =?iso-8859-1?Q?A+nUSa8UblsH33mi8d+zRs6lzyZjUaV8mACo8UzmAkuWkihHuIkToy8C55?=
 =?iso-8859-1?Q?jHV4nLho4016f2ghTzFAkGzzY97tNlHdsKIYGVGjBXRCDBnPfcQwgLQrrC?=
 =?iso-8859-1?Q?AiBMaQ1sxfn03En0GEDRBdExCSeGpwC+k8lXZtEBiBn3vAp0GoJJ/kkwrk?=
 =?iso-8859-1?Q?JHntT3Kt0CMAT6TqPc66/axRViNobJVKZRiCHUpCK2qLSlt/EEGYHB89Gx?=
 =?iso-8859-1?Q?4lLHdGvIQuQuRTteyJbv35gA3WkVkweo/gZDl1KHnLV06cnjyKEi/YehGg?=
 =?iso-8859-1?Q?kiEVc9NdlCjVcX3cocl3NW45FJXXvE7oz+FHjvFL4vTA0cwjH1d/mMc7wj?=
 =?iso-8859-1?Q?kw80PJQmVSvWAnYQQg2XI37Y2N0rdNdOmSeOQMK14E7I3Y+ZJQ03io7vqK?=
 =?iso-8859-1?Q?T8gdEwwusTDhNVFJfZWHVziCmzu7wCgyXwdvibQbwLS/2iiAtn8Fp1a3v2?=
 =?iso-8859-1?Q?XDd2dG4chTaI3c34+CXWmT1RqQV+ZSNTsmkX0dwXxN5XjgZ1EfDjoCgoIL?=
 =?iso-8859-1?Q?jA0RGafXQgoQi/Mbly4MiZpHiJ28UISq+IBrJoSLhufzIRWG4DBW+SC6j2?=
 =?iso-8859-1?Q?aS70UUj0OVgA09wi3jvlRofW/o+gkSalKINSVlXqEY6wEsw8QgW3Q+sEGs?=
 =?iso-8859-1?Q?Z2FRsPr2B10lss8xHlN0Xo60M6VOsgzbtj5WhtSX4XE6A0gqzkLWP5CZHe?=
 =?iso-8859-1?Q?WXKk/Bp9ZULYtIotyvwkG2kZROyECEguhSGiQcde7TBxGHRcm4jXAPHTXs?=
 =?iso-8859-1?Q?Kqw4KV7EX1CMWWADdFGLsNyY43EkvqqRrmAJCZ4BpWIEqIHOHMNSzh+MWk?=
 =?iso-8859-1?Q?zrvhzx69Tg5NCQqU4e9k5igBKSw6kVtH/0Vc/y/emGNQpgMpvRqPeOvHf2?=
 =?iso-8859-1?Q?CuKTsi26Gv1DelPyko54wRjuyKQ3Jp4oYeIzOZfShSfUrJW01VVe2QWVbW?=
 =?iso-8859-1?Q?FfVxzABqN3dswWLhEkIOwTZuXDIL6FLzM/ED76sp5RIwWAAit5oSCvppcG?=
 =?iso-8859-1?Q?ERLiwPARYzmhJg2w77NHXDa5ipmSM2pVlwPCGDN6hmlZTIxpq4MRrnhcsI?=
 =?iso-8859-1?Q?Fv8sdi2Ing=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: F3e4FuvN+bvWryf7WpyvSW651RcBOQqK72tjg2zcWMnPLI+Ko6qftu9qnmXvqo220y+qq7SvHik+Ww0uFrWueodQ2t1JbfnGMS5OjYfnrV1pj/agdbf9+1Eg4f0fQxwe7LZsUVYXCIwWum1+vQqF+G90azYts9z9VCBYbudaCih+WRHJhGl6DMTQZWY//7TlRedYKhnXP5MBUNKnOULXrZEfWrpOjDK2Koyth3s8Vdfk8x0A3HHOSdsrYvDFvKSMy9x1Sr5nvAvpgmm8486ZSE2W1U9Joqwsxmo+hfpRM69c1EGPOtYX0G56Urd9KdraeDgRDEWeQn4as/irIJDt7g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f52b6aa3-38e0-4d97-5c7e-08de8ae9f5bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 03:44:18.7429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tlaX3RuXtneCCavy1sdkMHLDhiKaouOBQ8CA4mCNtvzE8C+LU1MTpO8Y+j8al6SMjicwyur9OYDs6ILONI/C1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8758
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3417B32EE2D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 16/26] drm/i915/writeback: Add writeback to xe
> Makefile
>=20
> On Wed, Mar 25, 2026 at 04:37:34PM +0530, Suraj Kandpal wrote:
> > Add a intel_writeback.c to xe so that it builds for xe.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/xe/Makefile | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > index 49de1c22a469..2e456070895a 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -327,6 +327,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
> >  	i915-display/intel_vga.o \
> >  	i915-display/intel_vrr.o \
> >  	i915-display/intel_wm.o \
> > +	i915-display/intel_writeback.o \
>=20
> Another one that should be squashed.
>=20

Got it

Regards,
Suraj Kandpal

> >  	i915-display/skl_prefill.o \
> >  	i915-display/skl_scaler.o \
> >  	i915-display/skl_universal_plane.o \
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel

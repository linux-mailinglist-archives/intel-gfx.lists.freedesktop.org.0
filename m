Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDq0FdZxiWlA9QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 06:34:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A614010BC7A
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 06:34:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3B610E1BC;
	Mon,  9 Feb 2026 05:34:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c1OGT+Xt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A21110E1BC;
 Mon,  9 Feb 2026 05:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770615250; x=1802151250;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5ydZkobogWQ1lrHvCsM6gB9lRha+1MdWvUkBa6miJ3s=;
 b=c1OGT+Xtu+yw+9khie4M8J+7OFRwZHotbNU6f7BPUFMV2SkOOzZmiTxX
 nn8ODbGT4ZiSplraobOsqtbFMtW1PJEBzkTem4IgK5hdQaqQVFmJJ5W9u
 A6+Ql63bgZqdBEGxWY0yFI2JRL4SV1x2hI9PcyXJD0by5ybg486O34JXt
 A1NYyz3A4ho/7bBSKFkS5xYHbxUOamQtF5pRepgvH0rvixis0dW9cMZ2/
 y6megXSA2BWqn5HIxj16ViVxORywFlpuliqJKQmx5uhBtmfvHytoraXeo
 hIJB6nfx+ZKRBthsV0Bl7PZVsCFkGPEUP37e18Pb6xibtSwNZMpVOl3Iz w==;
X-CSE-ConnectionGUID: tEHmvPJlQn25hT4er85q1g==
X-CSE-MsgGUID: QHIramgyT12g6olgfoxGsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11695"; a="70734772"
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; d="scan'208";a="70734772"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2026 21:34:09 -0800
X-CSE-ConnectionGUID: 0rHZ5BX9TZ26KC59gc93YA==
X-CSE-MsgGUID: io+UZblCS4SycD0aJ6/V7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; d="scan'208";a="242106410"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2026 21:34:10 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 8 Feb 2026 21:34:09 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 8 Feb 2026 21:34:09 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.3) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 8 Feb 2026 21:34:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BW+yqhQB/XecXz1lVFMmIE45q1Z8LoB15Nsp+A7Mu5rQdXHzcA4z7Xo6D0s4nD02xZIbFqQF4fAek/i7V8KmFvXTdRx66r/PJYyTcd+njMHNw905i/htFr1IUV30xuHanJbt6yfXxdzNu9PcCKfU+FI8Ncb61+ZFkXNKkl4oAFJl8gcbySnneP1hjH17X+ILEggF3pYPQ3eL8jADveJhQdg2zFoYUH13GHBI1RnhF4N9H1fuwurM+TREY+DDknj757mlSCETpHRWPxA1g8mybv3KejCwCoNf1/oAIuk2ZHXaxpta0XKpJx3+kh4OZAr1xsFmoP97iQze70MDGNbPhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ydZkobogWQ1lrHvCsM6gB9lRha+1MdWvUkBa6miJ3s=;
 b=EIqrUHc+x3kKeGVJtrfIMVQ4u2GFBe5oe5HnkvHAm8wpbttvatWaURcMXbUexx4HrejEiAhrpUVVOJJ5rb6gR/iYv/QfrGbBxUJSkx2EwrKBRUnfchwIhzhzGmXrdZhsRg1GJD8aBaKiN14Gz8B3vvb0Stcg/GQ47I3U+oPYfnKU/viy8nynLXq9EWIRD6nnRrG0MghkMM0NW4OYgq04PwieVpQY7VYQX1q4ueOmDqogcR3cXYNytXgBYRsE0HQ+FYS0TwjAHVa0C37askpv//cPqL8Xjmnrs80Gvy1Cg4MzVZUcBYueUy7++S5vfx1tg6nAFYnc6yIt/VIEsoTc0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6282.namprd11.prod.outlook.com (2603:10b6:930:22::7)
 by IA1PR11MB8248.namprd11.prod.outlook.com (2603:10b6:208:447::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 05:34:01 +0000
Received: from CY5PR11MB6282.namprd11.prod.outlook.com
 ([fe80::ef69:c0e7:fe83:848a]) by CY5PR11MB6282.namprd11.prod.outlook.com
 ([fe80::ef69:c0e7:fe83:848a%5]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 05:34:01 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [PATCH v3 05/15] drm/xe/xe3p_lpg: Add MCR steering
Thread-Topic: [PATCH v3 05/15] drm/xe/xe3p_lpg: Add MCR steering
Thread-Index: AQHcl5eNynvGQgZ3IUC0/lU4ldGyn7V53BSQ
Date: Mon, 9 Feb 2026 05:34:01 +0000
Message-ID: <CY5PR11MB6282F7BEF8EF9322A5796972E265A@CY5PR11MB6282.namprd11.prod.outlook.com>
References: <20260206-nvl-p-upstreaming-v3-0-636e1ad32688@intel.com>
 <20260206-nvl-p-upstreaming-v3-5-636e1ad32688@intel.com>
In-Reply-To: <20260206-nvl-p-upstreaming-v3-5-636e1ad32688@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6282:EE_|IA1PR11MB8248:EE_
x-ms-office365-filtering-correlation-id: 3adf68f1-8df0-4576-7a3b-08de679cd4da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?RjFnYVZkdHZpS1VQRWorM3d3cEdKb0hBcDZhR21RNXpIS0NJWGFWNWxZQlBV?=
 =?utf-8?B?ZDlySXVkM3cyMFhxVGNtYzRtLytCUGFlZDBQUVFjaU9MYWQ0bEMvMzRoRDl5?=
 =?utf-8?B?UUdjT3NFK1Z5MWZHQXNjUnVoL2N0dFZ4UWE5R3FCbDF0MVRRTVRGZEk4bzRk?=
 =?utf-8?B?OUlJL2VmTlZ3cnFobmZtS0JhZHN3SzR6cm5xNGFra1liUStzL2ZaakFTUnhF?=
 =?utf-8?B?YTlkQ0dRYmg4YTF0OWJKYkdyNjVmTWI3ZlJ3NlVGa2tFNUg0NXdOQnJiMEll?=
 =?utf-8?B?dVAyMWgrejBReUJzelRXbnl2dlNvdW1pWUpkUUYxeWRNSVh2cExZdzdaRGZu?=
 =?utf-8?B?ZVlpNEsxMUpWUHVqZTByR2RUUExuYzNhZmJpS1JFMVNpNkRCM3N6N1BtQnJz?=
 =?utf-8?B?VUdPMHN2Z21QTDVSTjJSdktCN1JyT0RnYUd0MXNqdDlvOW4xekNUYzVCYmJ0?=
 =?utf-8?B?Ym13MEROdHNuUWQvT1lxSWJXU0xOSlhRbmVJNEVtUVFqWW1yc1ZiODRaMDJU?=
 =?utf-8?B?SFNkNDgwL2V2bm5yNDRmcFFpVDlXc1ZNS2pNNitRYyt4bUVFcEQ2bTVmTXht?=
 =?utf-8?B?VEpqanBoRld0bVB0eU1Lc1pyMnlWcDNpTnYzd251VDUxVUhuaFN0KzBGUVRu?=
 =?utf-8?B?M3gxenp1MHh3cmtsYjVqMHl0a2k4WEdVVE04U2pxTE40eG5nVzdpY3kvT2Zp?=
 =?utf-8?B?eWswdkJ2ODNkaVlyK1ZsSjdoaTVPNXVmaldHc0xWZU1keDN6STYyWXEzMnNW?=
 =?utf-8?B?SmI4cHRwaU8rbkw1SnJ2cFhZWlh1ek92RHNwUXlJZUhOZ2NMZkw1V0Y1Ynd4?=
 =?utf-8?B?MFdsVG9YTUI1QWJvaS9leWhtSEVWa3FMYVV1d2tTTm1GNnFiaHVXOXdEKzE4?=
 =?utf-8?B?NE1ITkxmcVhvMExSeFVobjZKQVFYUHpLcDU0UGExZG9kVDNwVGxxbjNOMEQx?=
 =?utf-8?B?R1BTZE5ZV1ZjbDVtVU9KWW96c0VERzlVMy92WkFlYVMydW9SY3RvUTMrdHM4?=
 =?utf-8?B?Wm5yWmdrS3c1QlJPOC9xY1hzQ2FkSEtlOWY1M0Z5WEpKYVl3eFVpcmlWWCtu?=
 =?utf-8?B?UFlsZ0xSVjdTQ1NQazJWM0JtU3NuQVpXMklEL1lXVjA5d0xld3ZIbUJKL0ZY?=
 =?utf-8?B?NzRZUEY3eTllSkpFcDE1UnduZ2w5R2tZV25TdzBNMGttZ3BHMGNQVkJ6Tkx4?=
 =?utf-8?B?Rzh3VFpnS2NINGxKWVoxZjRUTFE3VVBMdDBxd2hBN2N5WU9ZTkJMZkZndEdl?=
 =?utf-8?B?TmtacWlVbXlJTG9WbjFoR3k1TmRnV3VrcXlTWXYvNU04Nk5DQUxSUUJQWWhT?=
 =?utf-8?B?STlBT3hmcklyWHFuOE5WZ3J3ODR5VnJnNHNrTW54K0RzeWJRdDEzaHZuQVM1?=
 =?utf-8?B?YkEvVTVIb01Menc5LzhqMkRISlNZdW85QkhQNExaWnR6TUo3NThycENSYXdp?=
 =?utf-8?B?Q09XQlZ4YnFaTnZRL1FkZE0raHpReVFsd3Y1d1l5L2RGMmlJMXpadlIxNmtv?=
 =?utf-8?B?WXNqOHhneGd4MTNIRitaVk1FQXlteUxzbVZFWDVZd1BIYWpUQlo0elhkUmtm?=
 =?utf-8?B?SWhJakdodUpqOTNBbVU1VEM0V2xZQkNwUUdYb0dORlRoUGpqZ3phelhaZHZp?=
 =?utf-8?B?MUwzWHErTm5Ca0ZMUnN1UDRxRTZlRG05ZTZNK2ZvYllwczRpN3VkRVlCT21W?=
 =?utf-8?B?Z2RIcmVWK1RpaG5kVUlEWHNLbEs5azNvbjNPQTM1VElQWGJIenRjV2V0T2hO?=
 =?utf-8?B?N0ZncFFYc2ltUFlRNWdlUDNHK3B0QVpvVGZCNjMxNHQwTkNabDduQ1M0eHVo?=
 =?utf-8?B?Q2JhVHUxeHMrcjg1YnFrR1p5dUYwWXhyR0pNME0zUGxXdDRDaHJ5Sy8vVTZE?=
 =?utf-8?B?b3h1MWtqQmRJVHJuVVJEL3RWYUJ2VnROTHFpdDlzQ2hGT2kzaTZYd2JCUnRO?=
 =?utf-8?B?Qysycm9RMjUwT3JMNThFc2haMGJ4Rzl3UVZicy9RbkZUY0hIbnZXZGxjMlE5?=
 =?utf-8?B?SWR0dXF4TmNFRmVHdWFRa1pSQWRiNW15QWs4NFdXYlJtNk1FcXVJMkFFa05q?=
 =?utf-8?B?Q2VkaDBiYW4rcnpHNnZhdFJicXcxeDQvQVZYMmQ0WWFzMUNlc2d3NDBSUE1U?=
 =?utf-8?B?QmNXaUVkbzhrdWJ0ak1KWU5YdDhKdkZMR2hhUzY2Rkg4TEdhS2pVbHViVDh1?=
 =?utf-8?Q?oh+j7BA00U2ApXPEzcSBEIw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXBjYVM0U3ZrVHJDRXVYZGtlNkR5cVlxTWRWUmUxUTNuV3FhemZmRkFmTXVM?=
 =?utf-8?B?S0ozSWJKcGRRaFljU3RzcW1yRnllQys1N1VSOVVsU0dpV3ZaelVzS3VPNFlN?=
 =?utf-8?B?Uzc5VGQvQkVrUTNDYUNrWmJwaEhoZTR4Qng2YW5QMGgwQnR5QloyWnpmb3B5?=
 =?utf-8?B?QUpaNS9TeVRrYTNFaEFiWm1QVDVwTzdVY1NTNjJWK0hRMnFhVElZczRySlhJ?=
 =?utf-8?B?NTZ6MHRJcVRIZGhGcVFrQlVGQ2xXOUVHaDdDK0djYnhwNDdaamhZKzNNa1ZV?=
 =?utf-8?B?UGp3L3dobzQ4U212TzdPZUxMbFJVVUxOemlmVFFONzdUUnVNelNWTkVJSmNL?=
 =?utf-8?B?czI3TFEveW9JdFNHbGlvWE8ybDc3ZjJERVNOYVRGajZ0d2EyeWx1SS9BdkFU?=
 =?utf-8?B?Y21ET1lNZ3lockJMSmJTOEhXU3MwcmRTRy9OR0Z0MEpVSlB1MEhVTXAyQTBy?=
 =?utf-8?B?bnd3amZvSm5GOVZkUS9UN2RGRjk5UmxDN1R0TG5YVk54dm5XNmx2Wi9HMnY4?=
 =?utf-8?B?TTA0ZG9mRUxLVDc2bHIrQjlqVkNmeUN0L2dxaXQwOTF5cjlERXh5T1c4czBQ?=
 =?utf-8?B?Smx2dEFXVlFkOHRHekdpVUNTZjdDMVlCUnZWaUtOeWxWWmErWE14RGpUOUtz?=
 =?utf-8?B?M0t4WkQ1aGlaVVpkdjJXNWRWTG9DQjJCTXhLYS9RRmt6eHArWStMRkVJUjJq?=
 =?utf-8?B?Q1pwNnVHWW9pMmRhdTJFeVVPb1ZDWGdvTG96NFFVbGhkTE43dVNiOC91aEJo?=
 =?utf-8?B?dG1WcWFtUzJuZ254WVNadFVjSFJQdW05OVNPNlJ3YmNIRDc0M0ZKWUJKK1Vq?=
 =?utf-8?B?SUhINVVuMW5KekI3UHU3OVdFd1o5WU51Q0FXRFVqQmtRS2lRcVdtdDZucG5E?=
 =?utf-8?B?bStvMTJKUlU5YnladnZJU1daNW1jTW4yY2hEWEh1aWNDcHBFMUd4bElObTBD?=
 =?utf-8?B?QW5ETWdhQnFUd3JFSk1oSUJIWjBrb3lwdWJDRFE0YkVyMWllcW83NG5tSDdh?=
 =?utf-8?B?bEgxTW90d0NDajRIaVRtb25DUFVZRUhIdDh0T1k2d2JNbkVncFhGT3JsZDgw?=
 =?utf-8?B?eHlwbjlrRWY3NUNiaXJiQXpPZ0hVZG45UlE5ZmREbWI4K0c3emFlRGRhellD?=
 =?utf-8?B?dG5VNE1DbHRScmhTNW9LK0xqamkvMXFFMmxjSVQvYkNDbU1HUlo5Y3BnOE5I?=
 =?utf-8?B?ODFYd1loWk9aQVJndThVamtrbjVCMjE0eHpCWnlPeDg2N0xkMys3TjFRVEMx?=
 =?utf-8?B?dmZqL0JWemVKSE1SWEJicktJb2phaXh4WEdGMDBPYmkzMEIvTDIyZmhqZlA5?=
 =?utf-8?B?TXoyVEZUUXpYZUtqRUptMG1jSHdabUhQVWtJZ3VEblpSTlBadUtNV3JMQnJM?=
 =?utf-8?B?ZnpxM205MDlNeUtIZkxLdGgyclVDU3puNU1HWFpPZHNUZS9oWGJsaGFDbzhs?=
 =?utf-8?B?R3BIK1BwbTlIV3VrTDJHSUIxbmlmNWlYeXY5TmVKUDN1S0pDd2lzRmdtRTU1?=
 =?utf-8?B?WXZKQVJPbCs2ZGhvazNRUWk4UG82Q0xvbEJtTjdYMktPOWdFNE1mWjR3cmR1?=
 =?utf-8?B?ZVRKTWk2bVNscUVBelF0d3QzM3c4MjlkWjcxbCtuekhwck1FT2YzcWlXSVFw?=
 =?utf-8?B?MHZ1N2ozR3dGWHhqZ1NHZlNUc2pGdXBOWUNDUEV5bVJzMVpnanpKaVB4Rmto?=
 =?utf-8?B?ajlZbEx4ZFE2QWhWOVpvdUZtQS9PWDIrNWJoK2tMNHh6OTFPTkVwb2NlanUw?=
 =?utf-8?B?YzMyaEdzM203VTN2MFByM1FCeDdnSDY0ZnhvNmNIU3A5UzJ1V1R6T0ZmZkVV?=
 =?utf-8?B?Qi9TcElMbGExblJ3MEh6UlVJVzJrU2s3eCtUbGlIVEdvTzcxQU16WXo2WHl0?=
 =?utf-8?B?WU5Ed0FVRmRIZDJPaTdxb1YvdFE1LzJHaHF5emdvSmhSeGRPUjVQR2Nxemdw?=
 =?utf-8?B?d3BPVUJabGlpK3o1cWdidVhnMStFWEVRQXV3S2NId1dWL3ppejIrRVNIWVVt?=
 =?utf-8?B?REJqYStaRnA5YmRuZnN1biszL1lsVnFibUZOU1B3MUpqcmgyelFHRDdaME1m?=
 =?utf-8?B?VjB6cmxxY20xZmwxc3JOSlNlZXd5M01QN3ZRNG01WjFyWkUxSDJQaHNZMmJU?=
 =?utf-8?B?THhLb09TNnVJZGRXSHl1d05QZDc2b0lUTDk0aU5wR0NaZVJxd1VRclBseGhv?=
 =?utf-8?B?TjJGM1g0Y3RLN1NPNFhpNEtNa1JJQndtZk9oVXdsb3VkWHAzRjIxYXlSbzMz?=
 =?utf-8?B?SWlFeHpnR0luY3V2OU9jUWRTWFoxTzlLT3AzRlcveE4wN3UvOUpmTTlkb1du?=
 =?utf-8?B?Q05IQWJpQ3h0N2VpR3AyRmF1UzRDWEYwMGV2UnpSZHZrWDNQMzFVdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3adf68f1-8df0-4576-7a3b-08de679cd4da
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2026 05:34:01.5894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0TOPpXRrw4vEqUYrOQoQS30M0vM+g5qCO71tnoAmaiG7covf6WWd7NwoFwSsM2B+F57nyZrZ8XaLalLq++w2Ezx5OpWSfjNx3tiq/AMR8KU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8248
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,CY5PR11MB6282.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dnyaneshwar.bhadane@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A614010BC7A
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291c2EsIEd1c3Rhdm8g
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBTYXR1cmRheSwgRmVicnVhcnkgNywg
MjAyNiAxMjowNiBBTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTb3VzYSwgR3VzdGF2byA8Z3VzdGF2
by5zb3VzYUBpbnRlbC5jb20+OyBSb3BlciwgTWF0dGhldyBEDQo+IDxtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tPjsgQmhhZGFuZSwgRG55YW5lc2h3YXINCj4gPGRueWFuZXNod2FyLmJoYWRhbmVA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDUvMTVdIGRybS94ZS94ZTNwX2xwZzog
QWRkIE1DUiBzdGVlcmluZw0KPiANCj4gRnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4NCj4gDQo+IFhlM3BfTFBHIGhhcyBuZWFybHkgaWRlbnRpY2FsIHN0ZWVyaW5n
IHRvIFhlMiBhbmQgWGUzLiAgVGhlIG9ubHkgRFNTL1hlQ29yZQ0KPiBjaGFuZ2UgZnJvbSB0aG9z
ZSBJUHMgaXMgYW4gYWRkaXRpb25hbCByYW5nZSBmcm9tIDB4REUwMC0weERFN0YgdGhhdCB3YXMN
Cj4gcHJldmlvdXNseSByZXNlcnZlZCwgc28gd2UgY2FuIHNpbXBseSBncm93IG9uZSBvZiB0aGUg
ZXhpc3RpbmcgcmFuZ2VzIGluIHRoZQ0KPiBYZTIgdGFibGUgdG8gaW5jbHVkZSBpdC4gIFNpbWls
YXJseSwgdGhlICJpbnN0YW5jZTAiIHRhYmxlIGlzIGFsc28gYWxtb3N0IGlkZW50aWNhbCwNCj4g
YnV0IGdhaW5zIG9uZSBhZGRpdGlvbmFsIFBTTUkgcmFuZ2UgYW5kIHJlcXVpcmVzIGEgc2VwYXJh
dGUgdGFibGUuDQo+IA0KPiB2MjoNCj4gICAtIERyb3AgcmVzZXJ2ZWQgcmFuZ2UgZnJvbSBNRU1Q
SVBFIHJhbmdlLiAoRG55YW5lc2h3YXIpDQo+IA0KPiBCc3BlYzogNzUyNDINCj4gQ2M6IERueWFu
ZXNod2FyIEJoYWRhbmUgPGRueWFuZXNod2FyLmJoYWRhbmVAaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBHdXN0YXZvIFNvdXNhIDxndXN0YXZvLnNvdXNhQGludGVsLmNvbT4NCg0KDQpUaGFu
a3MgZm9yIHRoZSB1cGRhdGUuDQoNCkxHVE0sDQpSZXZpZXdlZC1ieTogRG55YW5lc2h3YXIgQmhh
ZGFuZSA8ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0veGUveGVfZ3RfbWNyLmMgfCAxOCArKysrKysrKysrKysrKysrKy0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2d0X21jci5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L3hlL3hlX2d0X21jci5jIGluZGV4IDdjMWZlOWFjMTIwZC4uZGE4ZjYxODdmODkzDQo+IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfZ3RfbWNyLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3hlL3hlX2d0X21jci5jDQo+IEBAIC0yMDEsNyArMjAxLDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCB4ZV9tbWlvX3JhbmdlDQo+IHhlMmxwZ19kc3Nfc3RlZXJpbmdfdGFibGVbXSA9
IHsNCj4gIAl7IDB4MDA5NjgwLCAweDAwOTZGRiB9LCAgICAgICAgIC8qIERTUyAqLw0KPiAgCXsg
MHgwMEQ4MDAsIDB4MDBEODdGIH0sICAgICAgICAgLyogU0xJQ0UgKi8NCj4gIAl7IDB4MDBEQzAw
LCAweDAwRENGRiB9LCAgICAgICAgIC8qIFNMSUNFICovDQo+IC0JeyAweDAwREU4MCwgMHgwMEU4
RkYgfSwgICAgICAgICAvKiBEU1MgKDB4RTAwMC0weEUwRkYgcmVzZXJ2ZWQpICovDQo+ICsJeyAw
eDAwREUwMCwgMHgwMEU4RkYgfSwgICAgICAgICAvKiBEU1MgKDB4RTAwMC0weEUwRkYgcmVzZXJ2
ZWQpICovDQo+ICAJeyAweDAwRTk4MCwgMHgwMEU5RkYgfSwgICAgICAgICAvKiBTTElDRSAqLw0K
PiAgCXsgMHgwMTMwMDAsIDB4MDEzM0ZGIH0sICAgICAgICAgLyogRFNTICgweDEzMDAwLTB4MTMx
RkYpLCBTTElDRQ0KPiAoMHgxMzIwMC0weDEzM0ZGKSAqLw0KPiAgCXt9LA0KPiBAQCAtMjgwLDYg
KzI4MCwxOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHhlX21taW9fcmFuZ2UNCj4geGUzcF94cGNf
aW5zdGFuY2UwX3N0ZWVyaW5nX3RhYmxlW10gPSB7DQo+ICAJe30sDQo+ICB9Ow0KPiANCj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgeGVfbW1pb19yYW5nZSB4ZTNwX2xwZ19pbnN0YW5jZTBfc3RlZXJp
bmdfdGFibGVbXSA9IHsNCj4gKwl7IDB4MDA0MDAwLCAweDAwNEFGRiB9LCAgICAgICAgIC8qIEdB
TSwgcnN2ZCwgR0FNV0tSICovDQo+ICsJeyAweDAwODcwMCwgMHgwMDg4N0YgfSwgICAgICAgICAv
KiBOT0RFICovDQo+ICsJeyAweDAwQjAwMCwgMHgwMEIzRkYgfSwgICAgICAgICAvKiBOT0RFLCBM
M0JBTksgKi8NCj4gKwl7IDB4MDBCNTAwLCAweDAwQjZGRiB9LAkJLyogUFNNSSAqLw0KPiArCXsg
MHgwMEM4MDAsIDB4MDBDRkZGIH0sICAgICAgICAgLyogR0FNICovDQo+ICsJeyAweDAwRDg4MCwg
MHgwMEQ4RkYgfSwgICAgICAgICAvKiBOT0RFICovDQo+ICsJeyAweDAwREQwMCwgMHgwMEREN0Yg
fSwgICAgICAgICAvKiBNRU1QSVBFICovDQo+ICsJeyAweDAwRjAwMCwgMHgwMEZGRkYgfSwgICAg
ICAgICAvKiBHQU0sIEdBTVdLUiAqLw0KPiArCXsgMHgwMTM0MDAsIDB4MDEzNUZGIH0sICAgICAg
ICAgLyogTUVNUElQRSAqLw0KPiArCXt9LA0KPiArfTsNCj4gKw0KPiAgc3RhdGljIHZvaWQgaW5p
dF9zdGVlcmluZ19sM2Jhbmsoc3RydWN0IHhlX2d0ICpndCkgIHsNCj4gIAlzdHJ1Y3QgeGVfZGV2
aWNlICp4ZSA9IGd0X3RvX3hlKGd0KTsNCj4gQEAgLTUzMyw2ICs1NDYsOSBAQCB2b2lkIHhlX2d0
X21jcl9pbml0X2Vhcmx5KHN0cnVjdCB4ZV9ndCAqZ3QpDQo+ICAJCQlndC0+c3RlZXJpbmdbSU5T
VEFOQ0UwXS5yYW5nZXMgPQ0KPiB4ZTNwX3hwY19pbnN0YW5jZTBfc3RlZXJpbmdfdGFibGU7DQo+
ICAJCQlndC0+c3RlZXJpbmdbTDNCQU5LXS5yYW5nZXMgPQ0KPiB4ZWxwZ19sM2Jhbmtfc3RlZXJp
bmdfdGFibGU7DQo+ICAJCQlndC0+c3RlZXJpbmdbTk9ERV0ucmFuZ2VzID0NCj4geGUzcF94cGNf
bm9kZV9zdGVlcmluZ190YWJsZTsNCj4gKwkJfSBlbHNlIGlmIChHUkFQSElDU19WRVJ4MTAwKHhl
KSA+PSAzNTEwKSB7DQo+ICsJCQlndC0+c3RlZXJpbmdbRFNTXS5yYW5nZXMgPSB4ZTJscGdfZHNz
X3N0ZWVyaW5nX3RhYmxlOw0KPiArCQkJZ3QtPnN0ZWVyaW5nW0lOU1RBTkNFMF0ucmFuZ2VzID0N
Cj4geGUzcF9scGdfaW5zdGFuY2UwX3N0ZWVyaW5nX3RhYmxlOw0KPiAgCQl9IGVsc2UgaWYgKEdS
QVBISUNTX1ZFUih4ZSkgPj0gMjApIHsNCj4gIAkJCWd0LT5zdGVlcmluZ1tEU1NdLnJhbmdlcyA9
IHhlMmxwZ19kc3Nfc3RlZXJpbmdfdGFibGU7DQo+ICAJCQlndC0+c3RlZXJpbmdbU1FJRElfUFNN
SV0ucmFuZ2VzID0NCj4geGUybHBnX3NxaWRpX3BzbWlfc3RlZXJpbmdfdGFibGU7DQo+IA0KPiAt
LQ0KPiAyLjUyLjANCg0K

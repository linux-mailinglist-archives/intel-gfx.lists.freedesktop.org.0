Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AC2A4B3C2
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Mar 2025 18:28:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE1810E15D;
	Sun,  2 Mar 2025 17:28:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EXOTX8Dg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E48FB10E15D
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Mar 2025 17:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740936531; x=1772472531;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=2cQwGvqnyO5Escdl6MJFHf1Yc4ygVXDr6qyB2JonCpo=;
 b=EXOTX8DgfGcp4gBMkKCwQWUp6KQ5XQ0MU7bv5H0gocdkpIuMd+5KgtY5
 1Dza7Pd25j0AehSdD0ucGyMWTwUVG5QKpyHsChoEqpaOn5bNXH9j1OYMg
 m+5UNh8ayNF5KLmrftMKGpuzIzN7RSZZ24U1+mJGyBUMZvld1hzN32qXH
 WExfw12nTYzlZmvLfS8zX5WNgczu/L2DM7C+4gUDLsFvTk3EcEwIR1rqg
 Nba3iB86kGqv8GYOsiyapIcwhsdDPnotRPZJD0gW/60Zkp55T093Oobh7
 +KE95x7qVxpCF+uxscZkQEPw1MUMiTMsB1FxGun+5uzcXvle8pPWFRIKM A==;
X-CSE-ConnectionGUID: Jt/p/WxhTB2CJiMDzeaTOg==
X-CSE-MsgGUID: xttylFQiT6CKIU6HPE2eug==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="29396742"
X-IronPort-AV: E=Sophos;i="6.13,327,1732608000"; d="scan'208";a="29396742"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 09:28:46 -0800
X-CSE-ConnectionGUID: IW0rWIILRMS7O73FnvuEBQ==
X-CSE-MsgGUID: WATLQqbaQimwrFw5NipG0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,327,1732608000"; d="scan'208";a="117993587"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 09:28:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 2 Mar 2025 09:28:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 2 Mar 2025 09:28:45 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 2 Mar 2025 09:28:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bdFGW4MnHZkmDYtKnxrLE4JPXvNrW4vphCKPbpP4R9IP8SMScnnDtXYkXAVESi5KoDNWweQYaa+VjKQvYT8nUD4aR/TI21WAziIGXSNRs4MwVXC9biWq0V+Oj6ezBvVxJU++Hvoafn7SI0nxipkyMw1pkfGwEwHLkUyN/IW2dlizMWkwNQyT6M6osng6pzlhP7G0zK2hnO9y3h8gZuYPGJLcGDy+yEHGiNysV2RFK61jHrmNbdrVh0Js6l4xVe6PwXVVRF/KrUySZKkXXeT+GqP6IohAorkfcWtrYaH81RoOuTwxSC/2Mm4oeituF7J3041UkyMXNOGA+80Db0sk+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2cQwGvqnyO5Escdl6MJFHf1Yc4ygVXDr6qyB2JonCpo=;
 b=TTTXm+qaOlFTINXhRka09d3PEYZIXKhXT/2r7fbF/yH7XNX/2p6JgUHGGWxIgZYsWsVtMRfCg1u53gzG8ysY/YUrUTD2SG7kH5LSHT18tUIaq9TPZZm8qk7FNNKzSWmi89eAptaLD4KbsEXiUIJvjrPBbYHl0Jz+HzEpQMucSdp/a0jT5VK+bRScdRmNhnVIxsYbOVNIJxJKZHcOJX0pO1QO0NJ27J6eEVvmbdEFSTA2mhFQTRmuQg3sQ44n7N/fsYRk2TAObrID1vmI68LIaY3YHjIDvVlEqqRVBpBCpfpGkB+H/T/ek2gn+IHFcVN7SzAgVnV0ZRm0ppnDa0vxMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH8PR11MB8285.namprd11.prod.outlook.com (2603:10b6:510:1c5::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Sun, 2 Mar
 2025 17:28:41 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8489.025; Sun, 2 Mar 2025
 17:28:41 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 03/19] drm/i915: Don't clobber crtc_state->cpu_transcoder
 for inactive crtcs
Thread-Topic: [PATCH 03/19] drm/i915: Don't clobber crtc_state->cpu_transcoder
 for inactive crtcs
Thread-Index: AQHbgkrjD7z3XoGW90GCiN/983QjUbNgLHsA
Date: Sun, 2 Mar 2025 17:28:41 +0000
Message-ID: <fca75928ea91759ddba4650c4a7ed7ec77398583.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH8PR11MB8285:EE_
x-ms-office365-filtering-correlation-id: b633cc6d-6e71-4dd9-6f52-08dd59afad07
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RWtJWnNyYW54VHBya1ZmeDZYbGFCK01zZE96eVQ1aWtqTGJqb3VwMGhYcDFw?=
 =?utf-8?B?VjJHaUZwQmNwMGNyZW5oNFhzYTZmYWF4dmRDdmRNT2RmaU1Qb0xldXpLVnR4?=
 =?utf-8?B?UHlITFpoS1Q4cXFlR2svTWlUengvNUlBcWY3UWxvYWtMSFd6SVNUSS91VDkw?=
 =?utf-8?B?NDRZcnpaQVBSelBFckEzalR0d2RsMkJoaXdMSVA1UHhOSVBlT3I1SVhTVWtU?=
 =?utf-8?B?cWdxY0xaYzVNTGV5YVpBTkJ5MjBvZDJ6Sm1aMndPUHVLSlpyd2RvcHJnVnRO?=
 =?utf-8?B?NnliVEdhaHNhOGpMNWxzTXN6SnM3WXdpNjVDZElHRkQvUXpPY0hKcitqUHJt?=
 =?utf-8?B?SHdQNjc2T1NCbEhhV254VjliQ0NWUURuUkZVRVNpRzlmbG0veENFSytVU2Mv?=
 =?utf-8?B?R2pFWGZTQTQwMk12Tll0R1liWit2REVvRmJUbDZiSWtWc2xNWUpqODR0WEYy?=
 =?utf-8?B?OXFDYjVrSEUxVkpvekI5ZEk0S20wR2FjYjF4Y3oxU21LT3htTS92T1NReFZk?=
 =?utf-8?B?OTBIc3lWNnZhNERZTTlKZ3VEdWlRVDYySEM0TExZeENpaklkU3hpckx4YmFC?=
 =?utf-8?B?TmFQN1dPeVIrZTFrQWFUWXJKZXgvNWlWQjd2VG9FRW5CMm81dnFLTDJybjlG?=
 =?utf-8?B?V3UxcmNNanA0Vk84VTgxYzF4SWt1dUVYQ0Z1TStWOHdJZXh5bDdROGZrMHlz?=
 =?utf-8?B?c01EdTNFRDU4RVBEaWxCdytrMTJwbGlNVU1sVEdRVW9GelUxQXFEVi9kQ2c3?=
 =?utf-8?B?QmNNVndNZ3h5U1dlNVhpQW5OWXdhODVid1JxY0VLRERLRDJDQnN0VnIzMTQ0?=
 =?utf-8?B?RTZPS0xPSVc3a05MRWp0TFBVaE9wWFZ2V0w2cmFOa2JuWlFxQTZoYml0M1Vn?=
 =?utf-8?B?a3BDNjFISElUV2JOei9mNzZoaFFPd1lrNVdqVmdpRVRLanllQ1pzMUZJYlNR?=
 =?utf-8?B?QXlteG5IRWxmQkM4R0FHSjVBcWQ4anl6bnIrRlFQVmx0aEI0dmVFV2ZJUlMz?=
 =?utf-8?B?bzJENWVTVUZkY005RWMxOXorVTNNZjFWbmdodVk2dTlsUERSMWIvNXhFc2FD?=
 =?utf-8?B?dmRRUXJPK0lUWmlWQTQ4azFaSSt5UTNrZE1QSFZMaDUyUWpvQmxGbzBhTmdq?=
 =?utf-8?B?SHNkdXYxUmsyVWkwbjhTSlZIVUhhd3FlOXNycThScGF2eDNSZVBCL1ZQN0Uz?=
 =?utf-8?B?ZEtKcStTZ1Q0dXd4OGdubVN1L2VsZmF5c3k5Qm1NdzdqT0pmdWo3RnZmcFM0?=
 =?utf-8?B?a2FTRVRBYkxGVVlYUHlWMlBNUDNxRjNmalBtRm5uT2hXWW1tSVhRak5WV2pY?=
 =?utf-8?B?Y3BHK3YzWnVHaTVMa1VuN1FYNU05ZmtlY3N6SDZYbnRrcERVeGE4OWZkdGp2?=
 =?utf-8?B?N2ZRTVpXcHRnbmFZV2dFVE9LWHMwWGF1WmpBUGgzS2d4cCtrdWgwb0NmM2Ji?=
 =?utf-8?B?ZEp4RWtha0pOamlYZnAza29yUjFqQWE4ZmlkTXJjSU82L1F0Z2xNWFN2OHpN?=
 =?utf-8?B?WkVwc2JFS3lINXBpZ2lTcFVTd01hMlpGWWxBTHZzL1JkUXV0NEpZYk5EbWZl?=
 =?utf-8?B?M0lMTGdXb1B1ZStFTUhYOEZZL1VnS05WVHJ2Nk9jZFd3TW5BWU1LLzJJeDla?=
 =?utf-8?B?cUpyVDczbkovOGZoVnQ1VU13RWlNZzMwTHh2QytLMFRCNElYL28rcEtENXNs?=
 =?utf-8?B?eUI1K3JGNW1NOTJNQmhwTHdiSThyV3piVGR3ei9BdUpRZ09DUDFXeXZoazJB?=
 =?utf-8?B?UVA5MnBwVk1UV2p1dFc4dUJZS1JoTThtN0tkb1YvYmJETzdaQXd6SFd0ZnNp?=
 =?utf-8?B?V25oK0k3VWs1WktVTkdQOGNpQ0xUVGdDYUtIUWVKdUNCbGpWV0FHVGRaQmVL?=
 =?utf-8?B?MHM2RHBsZmYzMGJxcFZqZktQM2pMRDN1YVlPdklVUEZOVmhINXlPckZVcmxU?=
 =?utf-8?Q?kglqZ6pd4CN1AXWDXYQcZfPe4MAbhuuy?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0QyRVZuTEI5YW4rcXhXRThVQlE0Tm5WNEFBK0dqelVmckRQUDd2Y0Z5Yzcx?=
 =?utf-8?B?UmRVVjlqbW1pVUZUUldCaEtSaEs3K20vMUZlTlNkZmpKbzNCZ0FWYUNjL3pr?=
 =?utf-8?B?N2hsa1BZclZkekxwd2d3TU1zM2FzM2ZRVktPQi9qZ0poMnRuZVFSRlVoSXlY?=
 =?utf-8?B?RlhXL3dXbFVmWnFFY1dUVlhiQWJ4eTgwZ0hkM2FSTFVoTGRuemZGWXhYUTJK?=
 =?utf-8?B?LzZ3NDN3Y1d2RUczWmp3YmNQc004TUJ2K1lLL3lNUGhvT3BHYWxjZFRqUmNm?=
 =?utf-8?B?dThOU0E4clVNRm8zb3lsV1pZZ290cGxxR3p5QmNxQ29yc0hsT2d0WTFVZ2RN?=
 =?utf-8?B?TUpPbTlQd2lHVnIyVWd1enlYR0E3RGsyOFptM0hiKzlqOS9vV0pTS0JXUlor?=
 =?utf-8?B?VjVybDZTejBCbGdPUEVweHJYRDd5Qmh1MkZXM1plWC9KVnExTWJNZ1Q4Zk92?=
 =?utf-8?B?a00rV1NGWVJTanVySlhFVGR3bExEMnBZMjJIUFFieG5zSmZxNXdTUTdaMmVR?=
 =?utf-8?B?KzhDU2FsNk91Z3UvemQzdDI2NkIzVDBhcFhyVGRpS2V5UFB5RGl6VEhJckUv?=
 =?utf-8?B?cldaMmc1TE95OWVwOGNOaTVMc0dqc0JMcGZUYnRSd3JIOUE0eURpM2xmcWE1?=
 =?utf-8?B?SVZRcU5hZUQ0dGlGNGhhajVOV1JsMTVWQXhmZXVFbE5iSnlNRUkwMXp6M1RN?=
 =?utf-8?B?N1FFMWNBcXFvYUR4UFkrYzhpTGhVVFpnZk9vMGFmWGpDU1ZWVmlUN2t4aEZW?=
 =?utf-8?B?aVpOWUp0TnlUK28zOFB5NGh1aEF1K3ZYTG9YSWIrMnVEUjN2c1hXZDA3eGtP?=
 =?utf-8?B?TmVsYldTRGYwS0dGYUFrM2Q3N0prWkdnYWtQZVFWdkNWZjhnMExxdEd0UzJU?=
 =?utf-8?B?T2RoOFdwQzZpeU9namhjMk1kcHhIbll1TUxZR0I0QmZKV0VycnNGTlVnaTVK?=
 =?utf-8?B?ZjhGSGFEc3M3d0x1Q0d1em9tMmFYSWFSdWhNNzJJcVNoeEJGaWdtTGRlRWwv?=
 =?utf-8?B?Ny9VRFZudVQ1aTAvcnZteFVYVldlNmZBQW9uck54T1R1N0R3VmVSdHdlcFln?=
 =?utf-8?B?Mlp5V2kxOVRRT09kelBIcDM0UllYbGNQTHQydU1oeHN0VTBaQ1poejZtSmtN?=
 =?utf-8?B?NjkyeXRaT2JSMSsrQnRtUWhadEtjQWVzL3Z0SUZwcWovQjcvTVNYb3hPSE1Z?=
 =?utf-8?B?WHNNcmlWcTNRSU92RzVsUWwySERKNmdGcEZGUy9yT1pJWjQ4cmhML3hxSUJx?=
 =?utf-8?B?dkwzZmlwOUZuRFdhSVE4WW41Z2hzTHRZZ0dodG9qRlF4bHIxZm5WMDlNb3lI?=
 =?utf-8?B?V29ncnJLcU5CZjc4T1JWTXRDQ1RzZmduWGpzMjhVU0IyUU41b0tXbVVudXhl?=
 =?utf-8?B?bTN2V2MwVU0zZlhnamhINVZnaExkUG1CSUw2eVFsMUNLUXlNaGwzdkxBVjFQ?=
 =?utf-8?B?VThHWi95b3JGOEVvWG44YkJGOXo5MWRyc2I3Q2hjNTgzQS9Mdlk0azNVbjhk?=
 =?utf-8?B?bGpVSmNsemQ1R240L2o2SEtaeWtXYzQrRlVpZU1aS3pBR2FvZTRnd1VZNXNv?=
 =?utf-8?B?bEtLVWE0R2xWOVh5QTEzeDh6OGdlUDlxR3ZRaXN0TmJnV3V4QU5IZmY3dDhM?=
 =?utf-8?B?M1VNRFR3bGFLeExRS29kRE1wZVp4Z2xhdWo5b3Eyaks5N2YzTGxrZ3JPMlZG?=
 =?utf-8?B?SGloQzh3aVJuZDdMdTJPVVJiVk1OdERXdUU3Z2lDcEIwcFRwS2VtK1VYVUNF?=
 =?utf-8?B?R3pnTk5uK0crczh1ejFodVE3YzRrc0FUSzZPcklUNCtOMVB4SUk1clJONE5X?=
 =?utf-8?B?QzVZbXAxUVRrdVUvWWJQSjNoQk9CaFA4TGZmeWVKNjExQVJDUFU0T3VEUlh4?=
 =?utf-8?B?RGdLVFhBZ1Vkcm5vS3cvOExGZDlSekxoT2RHemxOZUNua3p4QSsrVHNXZUx4?=
 =?utf-8?B?cVF2SVptODBmenY1aVYrZjZ1bDcxUVVNdFpGUVZIK0trQnVDVXl6c0JGMUpW?=
 =?utf-8?B?ZWRRRVk0L1hKV0orTGFndlRqMkd0MjFyaGdKMUZGZW0yM0FsMU1ET2szbEF6?=
 =?utf-8?B?UytCWFJYTEliV3YwK2kramZWM0dUdWV1T0FueDVXd1ZzT0ozWndFdkY3ckFs?=
 =?utf-8?B?d2NRNGJpNEd4SndGWjdEMVlXTUM3M2FRRjFVOGdaZWM3RDRQbkpJZmhOd1Fk?=
 =?utf-8?Q?pRjRQe7z29QRce0jJBZcd8g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <80C91DB4D3C23745868C41ECC1134E02@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b633cc6d-6e71-4dd9-6f52-08dd59afad07
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2025 17:28:41.3285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: czZdSR8aj1YAUVuJSCsI3viWbn4TKxBbqmUuL0dC8i267i02tb/oxNqopVN1PhPx7DtOcsX/Qq64l+EcuEbv4KbPOLBOfcyuD1muFTZ94Bg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8285
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSW5hY3RpdmUgY3J0Y3MgYXJlIHN1cHBvc2VkIHRvIGhhdmUgdGhlaXIgY3J0Y19zdGF0
ZSBjb21wbGV0ZWx5DQo+IGNsZWFyZWQuIEN1cnJlbnRseSB3ZSBhcmUgY2xvYmJlcmluZyBjcnRj
X3N0YXRlLT5jcHVfdHJhbnNjb2Rlcg0KPiBiZWZvcmUgZGV0ZXJtaW5pbmcgd2hldGhlciBpdCdz
IGFjdHVhbGx5IGVuYWJsZWQgb3Igbm90LiBEb24ndA0KPiBkbyB0aGF0Lg0KPiANCj4gSSB3YW50
IHRvIHJld29yayB0aGUgaW5oZXJpdGVkIGZsYWcgaGFuZGxpbmcgZm9yIGluYWN0aXZlIGNydGNz
DQo+IGEgYml0LCBhbmQgaGF2aW5nIGEgYm9ndXMgY3B1X3RyYW5zY29kZXIgaW4gdGhlIGNydGMg
c3RhdGUgY2FuDQo+IHRoZW4gY2F1c2UgY29uZnVzaW5nIGZhc3RzZXQgbWlzbWF0Y2hlcyBldmVu
IHdoZW4gdGhlIGNydGMgbmV2ZXINCj4gY2hhbmdlcyBzdGF0ZSBkdXJpbmcgdGhlIGNvbW1pdC4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMjggKysrKysrKysrLS0tLS0tLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTog
Vmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5k
ZXggOGVlOGMxZGYwNzVhLi43NWIxODRjOTMzZTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0zMTA5LDI1ICszMTA5LDI0IEBA
IHN0YXRpYyBib29sIGk5eHhfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LA0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXko
Y3J0Yyk7DQo+IMKgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
Y3J0Yy0+YmFzZS5kZXYpOw0KPiDCoAllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIHBv
d2VyX2RvbWFpbjsNCj4gKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSAoZW51bSB0
cmFuc2NvZGVyKWNydGMtPnBpcGU7DQo+IMKgCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0KPiAr
CWJvb2wgcmV0ID0gZmFsc2U7DQo+IMKgCXUzMiB0bXA7DQo+IC0JYm9vbCByZXQ7DQo+IMKgDQo+
IMKgCXBvd2VyX2RvbWFpbiA9IFBPV0VSX0RPTUFJTl9QSVBFKGNydGMtPnBpcGUpOw0KPiDCoAl3
YWtlcmVmID0gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXRfaWZfZW5hYmxlZChkaXNwbGF5LCBwb3dl
cl9kb21haW4pOw0KPiDCoAlpZiAoIXdha2VyZWYpDQo+IMKgCQlyZXR1cm4gZmFsc2U7DQo+IMKg
DQo+ICsJdG1wID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgVFJBTlNDT05GKGRldl9wcml2LCBj
cHVfdHJhbnNjb2RlcikpOw0KPiArCWlmICghKHRtcCAmIFRSQU5TQ09ORl9FTkFCTEUpKQ0KPiAr
CQlnb3RvIG91dDsNCj4gKw0KPiArCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciA9IGNwdV90
cmFuc2NvZGVyOw0KPiArDQo+IMKgCXBpcGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0ID0gSU5URUxf
T1VUUFVUX0ZPUk1BVF9SR0I7DQo+IMKgCXBpcGVfY29uZmlnLT5zaW5rX2Zvcm1hdCA9IHBpcGVf
Y29uZmlnLT5vdXRwdXRfZm9ybWF0Ow0KPiAtCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciA9
IChlbnVtIHRyYW5zY29kZXIpIGNydGMtPnBpcGU7DQo+IC0NCj4gLQlyZXQgPSBmYWxzZTsNCj4g
LQ0KPiAtCXRtcCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsDQo+IC0JCQnCoMKgwqAgVFJBTlND
T05GKGRldl9wcml2LCBwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIpKTsNCj4gLQlpZiAoISh0
bXAgJiBUUkFOU0NPTkZfRU5BQkxFKSkNCj4gLQkJZ290byBvdXQ7DQo+IMKgDQo+IMKgCWlmIChJ
U19HNFgoZGV2X3ByaXYpIHx8IElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpIHx8DQo+IMKgCcKgwqDC
oCBJU19DSEVSUllWSUVXKGRldl9wcml2KSkgew0KPiBAQCAtMzQ5MiwyMyArMzQ5MSwyMiBAQCBz
dGF0aWMgYm9vbCBpbGtfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0K
PiDCoAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7DQo+IMKgCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsNCj4gwqAJZW51bSBp
bnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBwb3dlcl9kb21haW47DQo+ICsJZW51bSB0cmFuc2Nv
ZGVyIGNwdV90cmFuc2NvZGVyID0gKGVudW0gdHJhbnNjb2RlciljcnRjLT5waXBlOw0KPiDCoAlp
bnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gKwlib29sIHJldCA9IGZhbHNlOw0KPiDCoAl1MzIg
dG1wOw0KPiAtCWJvb2wgcmV0Ow0KPiDCoA0KPiDCoAlwb3dlcl9kb21haW4gPSBQT1dFUl9ET01B
SU5fUElQRShjcnRjLT5waXBlKTsNCj4gwqAJd2FrZXJlZiA9IGludGVsX2Rpc3BsYXlfcG93ZXJf
Z2V0X2lmX2VuYWJsZWQoZGlzcGxheSwgcG93ZXJfZG9tYWluKTsNCj4gwqAJaWYgKCF3YWtlcmVm
KQ0KPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiDCoA0KPiAtCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNj
b2RlciA9IChlbnVtIHRyYW5zY29kZXIpIGNydGMtPnBpcGU7DQo+IC0NCj4gLQlyZXQgPSBmYWxz
ZTsNCj4gLQl0bXAgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LA0KPiAtCQkJwqDCoMKgIFRSQU5T
Q09ORihkZXZfcHJpdiwgcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyKSk7DQo+ICsJdG1wID0g
aW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgVFJBTlNDT05GKGRldl9wcml2LCBjcHVfdHJhbnNjb2Rl
cikpOw0KPiDCoAlpZiAoISh0bXAgJiBUUkFOU0NPTkZfRU5BQkxFKSkNCj4gwqAJCWdvdG8gb3V0
Ow0KPiDCoA0KPiArCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciA9IGNwdV90cmFuc2NvZGVy
Ow0KPiArDQo+IMKgCXN3aXRjaCAodG1wICYgVFJBTlNDT05GX0JQQ19NQVNLKSB7DQo+IMKgCWNh
c2UgVFJBTlNDT05GX0JQQ182Og0KPiDCoAkJcGlwZV9jb25maWctPnBpcGVfYnBwID0gMTg7DQoN
Cg==

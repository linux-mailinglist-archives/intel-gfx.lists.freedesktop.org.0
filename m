Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A1A9001C2
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 13:15:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D8910EBE7;
	Fri,  7 Jun 2024 11:15:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iBipufqI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44E010EBE7
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 11:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717758902; x=1749294902;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=00uoiKp7rCRMTe+E04X/iN8UAa1uyqtYrBcC4KrAsZ0=;
 b=iBipufqIvPLWTGVxQZmL+9VvtDDedqnZyqDbZK8PbFNkaWtijH/gD0UT
 9ZJYTLPPhnQg2JF8tEJ3Lwtrm0Kv+6GIt6SoBUCn2De+YqIWXqLBh0uM/
 NLw+u9xdYzIYOe/A1LZ0GfWBJUx0Of2Sp1TRWbuXyQcU38AIrRjQSL5cZ
 TooCmigvSQWgqMXT0nmVkS1KaKxY7qr2xsc5vxv8ENCf7X7TI0ha2o0k6
 rXtjrV5001Yclvsv6reJRARx2aDX3WQPoNM3b2nQgYiNUK8YqBM3n2gUW
 KCGMQiL+j5G3s/ygcMAdfxv8pjXq/GUmojCiB3zUV9MnyfXjpkiA6xRkN w==;
X-CSE-ConnectionGUID: Bpo414l4SsqBUdw513LALw==
X-CSE-MsgGUID: Wg1ryER+TBaV0tHsB8U9iw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="17403202"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="17403202"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 04:15:01 -0700
X-CSE-ConnectionGUID: 8TQ2+wqqQmKSfudpVgPVAw==
X-CSE-MsgGUID: LPqA7UIuS52dL65IxYZiIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="42857674"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jun 2024 04:15:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 04:15:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 04:15:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 7 Jun 2024 04:15:00 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 7 Jun 2024 04:14:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kwSF8ctCuw8/iNvrnQf1M9k81E3WTgtTBzd5/8FCWivPmgcVrt/vuWXM+2ICXnS4TEhFXyhd9lNAFzqN/9EhVkC+FgC5IpN70ZB3bJV31c01Q1On6m2V8eqYTC88AqOKZDLvFm5Z5oyRB7ujoaNtpe2SuXc+yec+5GTnTXQAVshayuDyTiZ4a4r/5l+DEWbG0LSLPIHgJ4GoPiK71HxQC2PxVGkvCPCghyTRMvi/PfanQo89LziWL8/9npCkKNsbbczv7H8iM+yJ4+TRrNWfSGpQoPo7Gty1rfF61gW8xDNXw0U6xzMY53PWOFeyk9gaiY+o3VO24VUPOeTLmjUwZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=00uoiKp7rCRMTe+E04X/iN8UAa1uyqtYrBcC4KrAsZ0=;
 b=FGYy35NlT3UTirdyqRVzCqhQTES+iQWPjiNs5ffczwNwhZLxYZw/EKHCuZaEfLpfde8+BtnxMidlqfo2MTkr1oCUI5nCnrToxasP5VCAXb0TVzQdEsHZgKvmeILF0kpdnu3OpWu2ITN2BY/PTRhjED7lx6a8uB3JvkFJvSJyBfaS4Q1atcRwPlZPNdAmm5xiiuGh2AQRCqYLOfA8fH9aV+NivHFK67f2qDuinPVeVJjNbfACG1j2+Eyigyu8624eKwS1U/lTuUNU0OAdqwng6sfo7BYWaooNRK5gsE61uuIg0GGqFRhBNq2i3TAtKdTZ5ZQsu5qAd7bOO+2CEZii0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB6723.namprd11.prod.outlook.com (2603:10b6:510:1af::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.31; Fri, 7 Jun
 2024 11:14:54 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Fri, 7 Jun 2024
 11:14:54 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 14/26] dmr/i915/psr: Wake time is aux less wake time
 for Panel Replay
Thread-Topic: [PATCH v6 14/26] dmr/i915/psr: Wake time is aux less wake time
 for Panel Replay
Thread-Index: AQHatzLogrf2r4GVTk+1MORHNP2RrLG6ugtggAApPYCAAUXTwA==
Date: Fri, 7 Jun 2024 11:14:53 +0000
Message-ID: <PH7PR11MB5981967B5FFD5089A42060FAF9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-15-jouni.hogander@intel.com>
 <PH7PR11MB5981807A08755648E5D6A350F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <87e85c014c41ad64225769914e519697bbeee583.camel@intel.com>
In-Reply-To: <87e85c014c41ad64225769914e519697bbeee583.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB6723:EE_
x-ms-office365-filtering-correlation-id: 0597cdf0-00ab-415f-896a-08dc86e30e96
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?YjdlRkR6WnFSZDB0UjV0RXdnZE5RMitOamVpL3Y4OTRNZmxBaWllWW5wcjBN?=
 =?utf-8?B?SVBicm5ZbDgybDlJcEJTVDIydWpKVzVibVFTTlBxRWhGa2RadjllNW1OenB4?=
 =?utf-8?B?T3l2ckVmdTBVRGxub1FUM01BSWxNL1hFVExCZ205bVlWV25vWW83TkdmdVpz?=
 =?utf-8?B?YWVpalJIYnc0UHNRdzlldHY1YW44amZHajNhOU5BVXo4NXYxbEZUN2Q4OFNx?=
 =?utf-8?B?amdmMWRwcHU1NzNmQjVtdEIrdDNxL29HQm9xQ0tKd2k4bjBPMnY5SzlhMDI5?=
 =?utf-8?B?L1c0eVhDM3ZzY0N5NWRyQUJ4YVR6SGhWWUh5NnVkRDlNTkxncWowQ1dVWXVE?=
 =?utf-8?B?NHRBM1lpdXdINkx1Q0hpS0diUnUxajA1eE1rZG5QUWFuRFgzdVgyYUp6bnQy?=
 =?utf-8?B?RDBGOTJqVmo5NGxxM2lrQ0swQm9IdWhXOUk1RHZrZGhSc2QreDZubVVsOTM0?=
 =?utf-8?B?RU85Y1R1RUUwZ2d1Q0p2V0NBaFhXbG5uTzVrcjJJSzhydkhhTTRNM3NTb21Q?=
 =?utf-8?B?VHgwYWdkTm5nSzZOaVFnK2ZEcktMVTBId2lTaVk1Wmsxd2t3KzQwR21ZcnU4?=
 =?utf-8?B?ZWEzNXZ1eURiQUtJeXluRTIvNGc3YUR5QTBXNGZyQmhObXRvZmxZM1ZDVlAr?=
 =?utf-8?B?OEViRUhBL3lxZHFSYS9mMC82UFl4RnRXK0VlMG1LMTd0SWlnN2JsdVpzcE1z?=
 =?utf-8?B?bmpDa2VLOFEwbVl0a3BkVTBoaXlpdFJQWklhYjRaSElpTU1OWnRSbnk4K2JG?=
 =?utf-8?B?eXRHSG01ZG9wMFJ2eXlBeG5mSUU3MUc1eENWT2R1YTZiVGM3VlNMWno2aE90?=
 =?utf-8?B?cnRYWktITGxsanhJc0ZrV0huWStvb0pOaXlUeWZSNXA5SEpoSE1YUFcvR090?=
 =?utf-8?B?VXNMVHVUK0l1LzdnUWl2MXhKMG5McVFNMXZKMTJtWUN2czYzcEFIWTQwMzVD?=
 =?utf-8?B?cG05U2lOTmhlNW5jdjFnM3RZT3Erd1lPT3ZQU1B0SG9FNS9VTHJSWU9xcTJk?=
 =?utf-8?B?aFFjZmJpSUdFWkJDQU9DQVljYXI2Vnpjb3hYYklXMXJDVzNvVUEvTHpDaG44?=
 =?utf-8?B?aFdWWXlLd1NYbHF4K1Ura1dZdS9SMUFPTTBycVVSS1VyMzlnVnNNTFd3ck5U?=
 =?utf-8?B?WkRlaHZFVWJvVjFyUllDazJwTzhjeTNmMTRsdkt2R2l0NnN1TFp3L0w0djFr?=
 =?utf-8?B?SGpmK20yL3NIQUx4dElhOTk3b3ZTV2tueFY0U3IvOHJnRFkvamMwL01ZNSsz?=
 =?utf-8?B?cHBvWUk1QXBZQUNod3J6cnFXTHYrY1R5aDBTOEVuNGY2ZlJBWVRHT0Z1c2pu?=
 =?utf-8?B?R1Y2Tk9nMkMxeUhXcS9Valc0Z2wzTkpuVGc5Tkt3STdZYnNzYXh0ODlJK3E0?=
 =?utf-8?B?Y0FYZlVEejdHbHV1YVpHMXFBK3lGNUU0cUNnV3dmQ096MjVPeVZJSFQ2OFhm?=
 =?utf-8?B?aDFkT1ZVN3h5VnZoWFpqWmRRdHZ6aFBST1dMUGJtTzQxOVJJeEZLSFpCTXdz?=
 =?utf-8?B?d0pxdHVkcHpVNHZRUjRNNGFzZ05VZzkrTnNidEd5eTBNWWFISndaV1g3WW1t?=
 =?utf-8?B?bzB2TTR0N0MzTzNTWFVsN3NjRXhVT3A0WFRGVjB3WnNBdS9HbnZSbzIvUlNO?=
 =?utf-8?B?bzd3U3NpNFo2WVRJbmN3STJINXV3R3prQjk3QnB5K0N5bEpWTXUzUkxKTDR1?=
 =?utf-8?B?Nk9heXRIMy9Ca0JrK3lwS3NZVldaSXQ3OEVMbGZNMGNGK0cxTjF4VVRsb1Yv?=
 =?utf-8?B?RnBYdTZzaTVNSGY2bHhza2ZnOVNBRDRkdGFYajlxMFR1bi9FUUQzRlFiZjVB?=
 =?utf-8?Q?tgsuXCj4tumFLo+scwDez7S9m9RY7GyPwDu+o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THFrMm9PaWdxVzBmNnJEZzdPRHlpcXorWHROa0xhS0I4OHVRZVFaWmhIZ1Bt?=
 =?utf-8?B?K1dVMHpKcklUY1BUNGF0Z01RNEp5RWMrd21sUHk2THRXQ3BBcFVwZUd3dnpP?=
 =?utf-8?B?QnlYVXJZOVYrRnJQdGNTNXl2RTcvTVJEK1ZLb3N6dFBteEVkQTVRMmxCb1Yr?=
 =?utf-8?B?ZUFuNWlBUExrQnFuT1VySEpQTW1XR0NOMkVSdzB2SHdCUWpzQ1pQU3FaRGpo?=
 =?utf-8?B?dG1sZUdYMWo2bVBVaFdBRXZQbVNlR0ErZ01DTTJxWTJndklWMSttTFVad2g2?=
 =?utf-8?B?SU5EaE1kWXZ3dXpPUWxXQktxUnNhN1FGeXdXYXhqQVk5Wmh4VFlib2hFT2dm?=
 =?utf-8?B?cm5HRWk2WnZPdFlxSTkxdnhscEpRYllaK3gvRjI5VGpMd1RwREVaWkFxeXdD?=
 =?utf-8?B?eE1heFc5OVk3TXZyaER4eDVtUmhiV3BJUlhxNTNndzNIVWxlU3E5d3VmWTNB?=
 =?utf-8?B?N09meS9FZHV5VWJoeXR0dlJkVXQrQ1BFUGI3dHlNZUthNTVJRUlUVXRkbmht?=
 =?utf-8?B?TWpzMDhEYkoxQ1l0UGdkZEJBdWZySGk5V2dNYnlWOHVac0NoZW1nckVRWGRs?=
 =?utf-8?B?cUI1UWIzTlczanYvUkpZT25OYklic1djSC8rc3NvMTlOeHJIYkE4NmFhSCs1?=
 =?utf-8?B?TDZLd3BsWnFTdFVRcWhMVUFlRFlsQXN3UEFFYndIZm5vUG1xWkN1dFM1ZVFD?=
 =?utf-8?B?WjF6dGZRY0puTms0RXUwRFgxeEw2T3JybkpDb1VmOVdrN3Y0SGhoWVgxSXN6?=
 =?utf-8?B?WG1nYVpCUGdIcDR3ck9uc2UxZzVja28rZmtXUDlHM00wZ25ESllCcUVybXEy?=
 =?utf-8?B?VVVFNEdycUdLVGRrV2xWbHUzUi9tUktPZDFMbnBoRXk3YjhiZnZxMmJFOEkz?=
 =?utf-8?B?TFprVG1Zc29EMkdYM1R4Y05kL3JTK3p5Q2VJMit1NW1FVVkyeUJqeE5GYWFW?=
 =?utf-8?B?MGFubElqYUQ4Y0ZpZlRwK05uN1k1c2FlY1pJNml6VUZrYmJJSGVmVU9ySGl5?=
 =?utf-8?B?RWx6V1ZZUVlGRVQ2NHBIZUJGU2o3ZUFhdlo2bFFaZk9TUy8vSGFmZGRrKzFQ?=
 =?utf-8?B?SWxKMm1Ob05VSjdjMDExUnpQNzAvTWl6UHdPcnNvOU51UkRLVFcvS1VGT2Vp?=
 =?utf-8?B?VlhVVUpoeW9lRndXRk1jSXRJekNJUmtDbVBoS2VLZXBiUjJDL3g0QjZhbW81?=
 =?utf-8?B?b0Iwd2wxcmpjcFRuTEl2Z29FZThhTm1sWWVlUlRyVngyVGcwYU9XcWRIbVFQ?=
 =?utf-8?B?TmJER0JNZTZCZnJYRDFGblJEWVhMemdiUWNMZFR2WUZCUm5nZERSa1FoeXpJ?=
 =?utf-8?B?VGRtNGlJM3hoVytwWmdHYkM5N1JUKzhtYnJZVWl4anBualEya2lCekRDQUlR?=
 =?utf-8?B?QkdHcWU0QzAyY1lwaUhUeFpMRWdRNWlhNyt3cnZhZWk1UjFjd3RMbjhUTEE4?=
 =?utf-8?B?MU5xTlZXR3dvMUhyb1BHUjIzZExySnJOZzRjY0h1US81bW5pMjVqUnN4aHpO?=
 =?utf-8?B?V00ydGhsTmZqMGRXOTZOYzdlUElSNXpTQW9aa2VKMm40QlpwMzkyNHJGOGFt?=
 =?utf-8?B?UnpYVUVRdkVyYzQ3ZmhSaTgyeGFFUU9LVlZqNkwxWHgvejJ0bkxmT3FEVjMw?=
 =?utf-8?B?MjNGbmFkVUFuV0dWV2FjcFhQQ0VRVzFmdEFQZmZNVTNLS0tLdnk3VDFxUmxK?=
 =?utf-8?B?dGdmWVNoSStQQTZPTGtFMm9jRzZLZStzb21JU2Y3TlRUdU5hNm14bzdoclF3?=
 =?utf-8?B?bGNMSFM0M1E3a2RybS9sWFNVTHhqWWx2NDhCUXc4YUpBWG9qSGl1UGxlVTEz?=
 =?utf-8?B?NW9wL2hEdnMycDdITDF4YmVCOGRLRXFvL2JGcFAyWTlyYVo3UnJUWWRQclc4?=
 =?utf-8?B?eG5hZUVqS1NabWxNemxLUFhISCtxMTJXSE1BN2k2Q1lwL0diQklxL0dxRHQy?=
 =?utf-8?B?YnpGTDVDbHFkV3ZQQUIvdDZ2MTVYdGN1Z2pUalRDcm5LTGhISGorb0ZCS1Fu?=
 =?utf-8?B?YjZWbC91bElKczRpUVZGM0tXQmRHZ1BZbHhuTXFXMkVIekNCUlBDcUwvYk1h?=
 =?utf-8?B?c21MZytvWFZXUnVGdUJ3L0pMR0QvS0VZR1dhWFFYWm8xZEtZdFFsRUxONEQr?=
 =?utf-8?Q?tTZqixph8jTHxYSDMBK6Qd+QO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0597cdf0-00ab-415f-896a-08dc86e30e96
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 11:14:53.9708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NduQvPtwRqDTU1+8uMhiO1sDhyGILSp3KPKOUL0TPAYcUf9krfPqTsF2pt387I3TxCPTLrn8T2vk5lX8V1Ci4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6723
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDYsIDIw
MjQgOToxOCBQTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
PjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEthaG9sYSwgTWlr
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY2IDE0LzI2
XSBkbXIvaTkxNS9wc3I6IFdha2UgdGltZSBpcyBhdXggbGVzcyB3YWtlIHRpbWUNCj4gZm9yIFBh
bmVsIFJlcGxheQ0KPiANCj4gT24gVGh1LCAyMDI0LTA2LTA2IGF0IDEzOjI2ICswMDAwLCBNYW5u
YSwgQW5pbWVzaCB3cm90ZToNCj4gPg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPiA+ID4gRnJvbTogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQo+ID4gPiBTZW50OiBXZWRuZXNkYXksIEp1bmUgNSwgMjAyNCAzOjU2IFBNDQo+ID4gPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IE1hbm5hLCBBbmlt
ZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0KPiA+ID4gPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiA+ID4gU3ViamVjdDogW1BBVENIIHY2IDE0LzI2XSBkbXIvaTkxNS9wc3I6IFdha2Ug
dGltZSBpcyBhdXggbGVzcyB3YWtlDQo+ID4gPiB0aW1lIGZvciBQYW5lbCBSZXBsYXkNCj4gPiA+
DQo+ID4gPiBXaGVuIGNoZWNraW5nIHZibGFuayBsZW5ndGggdXNlZCB3YWtlIHRpbWUgaXMgYXV4
IGxlc3Mgd2FrZSB0aW1lIGZvcg0KPiA+ID4gZURQIFBhbmVsIFJlcGxheSAodmJsYW5rIGxlbmd0
aCBpcyBub3QgY2hlY2tlZCBmb3IgRFAyLjAgUGFuZWwNCj4gPiA+IFJlcGxheSkuDQo+ID4gPg0K
PiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyB8IDggKysrKysrLS0NCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBpbmRleCBjOWZjYjI1MTg0ZWUuLmNj
YjdjMDIyZTM2NCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiA+IEBAIC0xMjUxLDggKzEyNTEsMTIgQEAgc3RhdGljIGJvb2wgdmJs
YW5rX2xlbmd0aF92YWxpZChzdHJ1Y3QNCj4gPiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRf
bW9kZS5jcnRjX3ZibGFua19zdGFydDsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgd2FrZV9s
aW5lczsNCj4gPiA+DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqB3YWtlX2xpbmVzID0gRElTUExBWV9W
RVIoaTkxNSkgPCAyMCA/DQo+ID4gPiBwc3IyX2Jsb2NrX2NvdW50X2xpbmVzKGludGVsX2RwKSA6
DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPmFscG1fcGFy
YW1ldGVycy5pb193YWtlX2xpbmVzOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGNydGNfc3Rh
dGUtPmhhc19wYW5lbF9yZXBsYXkpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgd2FrZV9saW5lcyA9IGludGVsX2RwLQ0KPiA+ID4gPiBhbHBtX3BhcmFtZXRlcnMuYXV4X2xl
c3Nfd2FrZV9saW5lczsNCj4gPg0KPiA+IEV4aXN0aW5nIGNvZGUgY2FuIHRha2UgY2FyZSBmb3Ig
RURQIHBhbmVsIHJlcGxheSBhcyBFRFAgcGFuZWwgcmVwbGF5DQo+ID4gaXMgc3VwcG9ydGVkIGZy
b20gTE5MIG9ud2FyZHMuDQo+ID4gTm90IHN1cmUgd2h5IHRoaXMgY2hhbmdlIGlzIG5lZWRlZC4N
Cj4gDQo+IFBhbmVsIFJlcGxheSBlRFAgLS0+IGF1eCBsZXNzIHdha2UgbGluZXMgaXMgdXNlZCBm
b3IgdGhlIGNoZWNrDQo+IA0KPiBMdW5hckxha2UgUFNSMiAtLT4gaW8gd2FrZSBsaW5lcyBpcyB1
c2VkIGZvciB0aGUgY2hlY2sNCj4gDQo+IFByaW9yIEx1bmFyTGFrZSBQU1IyIC0tPiBwc3IyX2Js
b2NrX2NvdW50X2xpbmVzIGlzIHVzZWQgZm9yIHRoZSBjaGVjaw0KPiANCj4gRXhpc3RpbmcgY29k
ZSBpcyB0YWtpbmcgY2FyZSBvZiBsYXN0IHR3byBjYXNlcy4gQ2hhbmdlIGlzIHRha2luZyBjYXJl
IG9mIHRoZSBmaXJzdA0KPiBvbmUuDQoNCkdvdCBpdCwgdGhhbmtzIGZvciBjbGFyaWZ5aW5nLg0K
DQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoN
Cj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+DQo+ID4gUmVnYXJkcywN
Cj4gPiBBbmltZXNoDQo+ID4NCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3YWtlX2xpbmVzID0gRElTUExBWV9WRVIoaTkxNSkg
PCAyMCA/DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHBzcjJfYmxvY2tfY291bnRfbGluZXMoaW50ZWxfZHApIDoNCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPmFscG1fcGFyYW1l
dGVycy5pb193YWtlX2xpbmVzOw0KPiA+ID4NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoY3J0
Y19zdGF0ZS0+cmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0KPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB2YmxhbmsgLT0gMTsNCj4gPiA+IC0tDQo+ID4gPiAyLjM0LjEN
Cj4gPg0KDQo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FF3B43200
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 08:08:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 045BC10E97C;
	Thu,  4 Sep 2025 06:08:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F8xsaxGe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A4010E147;
 Thu,  4 Sep 2025 06:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756966110; x=1788502110;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/iHuEA4VwgkT/2A9EG70BvxEy3/lOXZNkhCumuHKQ2c=;
 b=F8xsaxGeNE8yCFNFsk08/lLGEP8x+MdoGYWmP/pmyo5Q90SXJD4ilz8B
 GQkBqXqcfI19rd5Cb1rZ7Kx351rPj1yXJIazXGwvTwn2kTADsdeQ7hFHx
 dSbHGYoIQl8dfyZZFazYYal8ayvwAMAzF+FFmQvKIxF2CtKypN/v1mGoB
 H1hKavhy65+QDSzmOfY3aDODk4r36G4WFanRyurrSuy3kspOXVF0UdEPX
 BZ8p8YWEZYF/kqS4KvIXp6f7dfKYTjkiAdzKd9av+y8n1+aA/fIpDdIXn
 VkfpCxcL7PdM2ybMZhZDTSuRi7UNoyZRsnsR8bkBvXhh97KarmFeXdR5q g==;
X-CSE-ConnectionGUID: b07lShatR56dXLSjule8EQ==
X-CSE-MsgGUID: FnBX8QyfQj+FDW6tVQ00vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="70721615"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="70721615"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 23:08:28 -0700
X-CSE-ConnectionGUID: QfWYtSvyRqi9Zt/ZNBBDsg==
X-CSE-MsgGUID: aF79btPqT06fXeOlLOD1RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="171733766"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 23:08:27 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 23:08:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 23:08:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.79)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 23:08:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RvNd6ijgrYORvFFeD8n/vzqvAe7UZ2SVup3rjdu/0QAaGX/sqDlwpempcswMA3F86vxVoMH8kyWPv3Xhxa61Yg/NFbOHGZCuDx28GD9qmlE6/ZHlvdb+XR5HVYWD76wUsUeYIH5BdZcUUE3mC8+atEXN+B1OhOHCpPnLEWK26J7Ad3TNsf2GxYpXzNK0WsclT/UwcEZ/oBVUlN+HXfaSHz9kMMA8xXqrqOVkaKuPbXg54wcL31FOnMB33/0KR38PvNJm2+Cz7yGC2ca5P4CTLC/Lq4saV3cj+Qhk2D5+p67Z9oYBsZNnvHlw2Mg26U24S7FFPuyT1/tMsTAkSvoo+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/iHuEA4VwgkT/2A9EG70BvxEy3/lOXZNkhCumuHKQ2c=;
 b=SA59wPZhdCJkM9ao1IDTKBrp0hCoJMU6kN7uuraq+X7uXne4FO+eZPXZ8xbm8WuAcsRZy9JoLs4PDEu0E2BahIVtWJ4+KETJAzGmqhuYqX5qGHK6HtdX7Q8QNEZpLPOFF22cx6UxMsDSF6FTB2WTImKKzmNvqwmMaHnuG+vC12Xw612eOwRgd9Uxj+34w2sYSDNE/dNGmVXhOCuQMb7X/mUHz5oA74SFoiJx/zN7oppzZ8Q6BWPP9GISpbVktUisgb/PLmWdDZwJLjGU6b4z4WHsWKx2b3ElcuEsEvjvb+jLSVdfxshwtydZ/rqi3/R3YIOlxmEXypYrV/wwlpoUhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BY1PR11MB8127.namprd11.prod.outlook.com (2603:10b6:a03:531::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Thu, 4 Sep
 2025 06:08:24 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 06:08:24 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 12/20] drm/i915/dp: use generic poll_timeout_us() instead
 of wait_for()
Thread-Topic: [PATCH 12/20] drm/i915/dp: use generic poll_timeout_us() instead
 of wait_for()
Thread-Index: AQHcGBZoK2dyzn1020qHo07/YbxSiLSClHaA
Date: Thu, 4 Sep 2025 06:08:24 +0000
Message-ID: <64ee31db08677efc00fc01b8992b9434526ddb93.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <83d3417d4e5af1db13eb4c6eaa48b5f9c12caeb4.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <83d3417d4e5af1db13eb4c6eaa48b5f9c12caeb4.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BY1PR11MB8127:EE_
x-ms-office365-filtering-correlation-id: b7f3ba59-1395-479c-a81e-08ddeb7974f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?czhEL0lKYzFlMHBkMmhNNisvajZqbW83WWdKVkF5VDR6MTZpZFhPaG80QWZV?=
 =?utf-8?B?TmN0TU5OR2NjVkcxaVpxaVUwWXVNR3hGdDNpTC9EakZ6V0tORlVXWmFabS9J?=
 =?utf-8?B?dFFiL1pKQUNySEdXM0VjQjhEcTIwc3Axc0JjaWFWMDY4SzB4YldXL3IycU92?=
 =?utf-8?B?aXhrL2VwU05tOC9Dc1ZFOHV6L3NaRXJJRWlQNCtiUW9FV09DODlJZTBTS0ll?=
 =?utf-8?B?RU9jV1FwdDhyT0xKMU44ZU55emtPU0lGeElqMDRYYkg4c2VzYUZIbVB4anEw?=
 =?utf-8?B?alVhaVk0M0lqM1FHUWFxLzVSM3Zicmc3RDYwVldzRzg3YVFIRCtNL0h0bllV?=
 =?utf-8?B?NUNOcHhuaHpUQWlxVWRneXZpdTJmc0NMdWNxa3pva0NUVmEwKzUrRGpCcHln?=
 =?utf-8?B?RDFMK0xRQTllMnJHb1lBT1g2elptV1k3QlZ2YW16aUlkNlpQRWtZVTRkek0x?=
 =?utf-8?B?UHVzM1FqNWxPckRucFFRRnlPR2V4NXRTQ29tanNlbjVBQzlvRnhNR0RWdDVE?=
 =?utf-8?B?d09pVFhjQU9FM1FsUjYwLzJScXZJaGhKN2pkQS9ZUkJ2cnJZeXdQK296OWtn?=
 =?utf-8?B?NWxNNW9USFl4WkY4RGdYbkRIQjJNWnNjd0RpK0Q1cWlacWxHalZJVlVwQ1hV?=
 =?utf-8?B?VVhLT1VvY0Z6ZzFlK0FONlMwNFZicm5rMXozNXMvdnVCS0tnd0NQUDVibVg3?=
 =?utf-8?B?V0FXb24rV2ZiN2NsUEJjdURjWjl0bzRuaDNNS0ZJRzB2RXp3OWRFeGNCOTUw?=
 =?utf-8?B?c3Z3UTFaVE1vZm5NQkZwWW1FTnlKK1RwT0ZaK1E5M3RvclJSYzJyZWZsMEwz?=
 =?utf-8?B?WCtYQ2xuNlNYajA3VTZIYm9PMmd3U2RJcENSU203endRWGxsenlvMWRNbk5I?=
 =?utf-8?B?M1ZYMi9EL2xIYVVRZHFYUmN2RjRtYnY2MFAva2FHWTZsZnV0OTBuS3EyejJ1?=
 =?utf-8?B?YUJlb1poNUNhcFNvcVVwaUFTNHpPU2hCaStsYUFhMGJNQWc4SUdyZXpxTEJa?=
 =?utf-8?B?bUovSXd2RFd2cW1zSG5JSHU0WmNwMFUxVnppcEV6UzlaU1I1N3o5TGJVVU5K?=
 =?utf-8?B?bzUwM1NXdGpJQUprYkpFSEtNZVJ0b1FKdzNSYlY4THhKUzNQelcvZTVqcFNX?=
 =?utf-8?B?M016YTZ0eThXamQwWTQwUTVtRHNLYWtnTVhaT2pkVmtXeXUrRDcxVjcxcUhQ?=
 =?utf-8?B?bFcrR2w1YVdOWlV1T3lZdHFuU3IvYWwrS1JkeHI5eVlCaDJ4c0JhTDYxM2Fz?=
 =?utf-8?B?Z2pVWEZjZ0Fzei8xekRwK2pESFl4eUQ2RWhOUzBDMWlab21kTU5mMUJCNmVS?=
 =?utf-8?B?ZWc1RmZ3Y0xrZnlQNit1MllnNHIvWlJ0VDdORGhjMGhFenViU0VyREZjbnM1?=
 =?utf-8?B?bEJPbFpoVSsxS0srSTBSUHhvcWtiOHIzUlJWb3lrMmE3a0JNdURhTVp4SWV6?=
 =?utf-8?B?K3lXQnNLWnd4RzVoTTF3QU1GeDdINTJ3S3JGVlpvWTQ5TEMySTZPUHlreGZ4?=
 =?utf-8?B?OTJhM0cwOGRGbGx2ZHg2YnZOUGpOQTNZVUZSVk40eEZJOEY4VUR1VExiYVYw?=
 =?utf-8?B?WjVGVnM3S2Z1TStEWnd2bDZaR1VMLysrM1g4b0crUHFMRVhCc0dvQno0YS84?=
 =?utf-8?B?eUMzcUl0Q0phUDVsbUJTWU83SmYvUld1Y0tnc0pKY05raUtxWERzdWF1TnZL?=
 =?utf-8?B?bkNiQ1hRRWRDRFVPN2orY0VCVGdZeXppc0hEWm04amtBZ0VONi8xTzhqZVIz?=
 =?utf-8?B?UnY5dU02SjBmQm90N2c0UjNaSnhGR0JvSHF1T29XMUQycktyOEpVUk1oQXh5?=
 =?utf-8?B?VjJHeHEzSFV4MlBtUWFRNE1MMGNCNnc1c2RzWFEwU2lrekxVYkpvQXEyMFFV?=
 =?utf-8?B?LytENi9ZenNGb0R5dUtTSFpDUmhhcUNHMEM5aW9WM001SWJaTWhnaGliTGZC?=
 =?utf-8?B?RUpseTYwU2FWaFFwaXc3TG53aFgvUy9SenU1TDdlaERUU1l0bll5ejZKV0d5?=
 =?utf-8?B?NlFJSlIzNE5nPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHlpQWNLMVFOOVAwN0pBcnRQOHV3N3cvTFZQa0dQSG8rYjl6UUFSaENkN3Fu?=
 =?utf-8?B?TTRTQi9aNXBmMlFLR3dSZkhpdUZkeE55WG44TWRDRDJPTzY2bmJmYzgrWFJW?=
 =?utf-8?B?L0R0cDA2NWFIVVRvUWNXaGEyY0Jra00yUnZoWERxYnN3K043ME8vY1JiM1pF?=
 =?utf-8?B?QVNwejFZU09ia2llNE8wYjA3WDd3VlZScE1mYUQ0T3ZvbDlBeG1GbzYvc1JQ?=
 =?utf-8?B?bFR5K2d3RUlUMDZzOUZUT1ExNnZnUnI5ekhmQjY5bnZQSUx1UHY5M0V4TjYy?=
 =?utf-8?B?aGVuY05YZlRBM1JZaktqUWlsd20zSnhEbnRBQk5aS0R1UW1LRXFzazNIUm92?=
 =?utf-8?B?TjFJNzZ0UzhTdmo0QWtlN2t1WWNzZ0xuQjltbXZVNG00RjVOamFZZHNTWGJR?=
 =?utf-8?B?NEdCdkVUMGovcndqWFpRWWkzSjRXTzVaT2dEYk9hakg1SFF0K0pOajRVbTJI?=
 =?utf-8?B?cFl3ZjM5WVhDY3c4dGpIY0kwbVNST1N1bXdvbVcweW1FSDlTd2NsSUJ2STU1?=
 =?utf-8?B?dFNvRXlYUTBoUzRRbEFHQ1pXeDMxTW1SQnh5NHM2Z281emt5b01WZ0tQMEtk?=
 =?utf-8?B?bkhSR0VMQ09PWDFnU3l1VlQ1T0pqSVY2WHoxUXUrWS8wVXhzUkJGT2grUFBQ?=
 =?utf-8?B?NVd0ekNBVUh5ZE9XeG5xQk9XU294elZTRDlhbDI5YkJHeDJRTGhJRE01S0xI?=
 =?utf-8?B?Rm1GSHQvZnNxaldxYmJYNDdVL3pvQkQwSmpXbEhGdStLd2dsSGFEU1NWVnNy?=
 =?utf-8?B?eXFqTG5VUGlvdWcrRmRlb1FNZE9qQmh3K3JXNUdVMkwvY01VZ1c0ZUlTcGxk?=
 =?utf-8?B?RlJiTmVkbE53T3lFNjA5SE5NOUtvOEt1RTNmLzZuK1JjREs1VW9JVnZ1bWI3?=
 =?utf-8?B?Kzg5VzU1S0RPbXNFeC9YN2trQVpuWldBYjJXUkpDL2JUTERabjh2VXI4aGJM?=
 =?utf-8?B?bkhJV3BzV3dIQWwxOFJXOVZrdDZMTnNQcHZXVVJNMEZmcVR0OFlaWGdpeWU2?=
 =?utf-8?B?bXh6WFFIaHFIMmRobjVFZkVpMzZBRTIyL3EwR3ZYaXhxclJRRTNSakJ3dm5x?=
 =?utf-8?B?QzNvQVR3NCtJUWY0YlZraHJPeFQ2bm9NVnJvOFJaS3BNazd5U1VkSGgrOHlo?=
 =?utf-8?B?ZldMUW9DYnluT25PVXo0NGlscFFqdXl0QUJmY1dld3VlVUd6TmpHaVBDcVVG?=
 =?utf-8?B?MzU1ZFNmc291S3lhQ2lsRGxRUlFyd0Vsa0lOQmhVVGR3bGI2MDh2S05BQW94?=
 =?utf-8?B?dTYzSHhrWXUyL3ZMS0RsVkZybDNKcENOTFMyazU2dWdJbjhkb2FzSFBYd2lv?=
 =?utf-8?B?MkJEYTlaRW9IbXJCSUtlNXhTTUdGZ0pFZ3poS01Mdy9QMlBVY2tDNlIrMFJC?=
 =?utf-8?B?cDBtNzM1dFNFOCt3eTJ4RjFITFRIVEVock9CVWRBU0hyZ2NTT3RUQ2EybUhZ?=
 =?utf-8?B?U04vQndvSFRFZ0VtalhxL2cyQU9rWlhPazNWZi9YTEhoakFZcCtVZnRTWWhF?=
 =?utf-8?B?dVdoZ2JNU1phODgrQzdRYkxkZ2tSNkcxeU9jWEdtTXRXTm5DS0p0MDVsRjRu?=
 =?utf-8?B?Zk5qUE1jMG94ZU1ON3NjMnBRSERjWGN4Ni9PRHZacUg4a0JlK0QwUWFVY1Rt?=
 =?utf-8?B?SmhSbVBFZUNndTFnc2N0Q1FkeHFabklSbnpJWlliUm5YVmtOaTBJQTNPR2lT?=
 =?utf-8?B?T0U1N09iN2ozbFVlaTB3SEJ2T2hNbkRISEtxbmIzWWlaTGVSWWgrSE9BUHBu?=
 =?utf-8?B?dkYyYUlkZ2RnNmVLY2Z5YXpiMVJtcmplckJISWpxRzcwd0JSWDcrZ255cGF3?=
 =?utf-8?B?d0hvYmlPVXVsTlcrWER5N0lMTVZsQmNUM0dhUGpWWE5QK2F0bGZzQ3FPYU5V?=
 =?utf-8?B?eDc3eXNGRWZqTzRXQ2xjSWk1TlNRNkdmV2tTbjMxWWh2WnJ5T25FazRyWndl?=
 =?utf-8?B?VlJxbmczbVFQUThnU3d3dkgwZ0MwSUxmdnE5Ti9zZXUzai9FN0RIZ0ZPSEJi?=
 =?utf-8?B?M2tMd3gxcFQ2QjdPYlp4K2JIaEVoZmlJTVo2YjN0V292S1ZRenVlUXl2TTRX?=
 =?utf-8?B?a05NUUxFY0pqUDdOc1NKQkhsY2JQV1pSL3hSRzlobHpDTmxYbWdRRGVLWFYy?=
 =?utf-8?B?TXdDOS92V1FyTCtQWHJ0MjE2K3QzdllYN3QxcllEVjB0cWluQVpFTUlkQURz?=
 =?utf-8?B?YWFWL0tUMG8zdjNQa200a2ZreDN3am1GSGxQOXoxa3ovRmtPTnhKSXY5emJF?=
 =?utf-8?B?N0hGcFRvWjk0bk84N1dtQkphTWdRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D0C5411270DFFC4D83300049FC6ABFAE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7f3ba59-1395-479c-a81e-08ddeb7974f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 06:08:24.1637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FGRTosoZ/uaKbt02AUy12IGHo61+vhiw5/g+jE6ZtBqORtuyq85lMoCvarz1+hTOOnV66Y9ubDfb1uVchccRup3uDZb9nnBwXMzmuLvmXAo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8127
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
MSBtcyBzbGVlcCBpbnN0ZWFkLiBUaGUgdGltZW91dHMgcmVtYWluLA0KPiBiZWluZw0KPiA1MDAg
bXMgb3IgMTAwMCBtcyBkZXBlbmRpbmcgb24gdGhlIGNhc2UuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDIxICsrKysrKysrKysrLS0tLS0t
LS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5k
ZXggYmVkN2NiYTFjYTY4Li42NTQ2OGMwMTI2ZmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTI3LDYgKzI3LDcgQEANCj4gwqANCj4gwqAjaW5j
bHVkZSA8bGludXgvZXhwb3J0Lmg+DQo+IMKgI2luY2x1ZGUgPGxpbnV4L2kyYy5oPg0KPiArI2lu
Y2x1ZGUgPGxpbnV4L2lvcG9sbC5oPg0KPiDCoCNpbmNsdWRlIDxsaW51eC9sb2cyLmg+DQo+IMKg
I2luY2x1ZGUgPGxpbnV4L21hdGguaD4NCj4gwqAjaW5jbHVkZSA8bGludXgvbm90aWZpZXIuaD4N
Cj4gQEAgLTM4NzgsMTAgKzM4NzksMTEgQEAgc3RhdGljIGludA0KPiBpbnRlbF9kcF9wY29uX3N0
YXJ0X2ZybF90cmFpbmluZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiDCoAlpZiAocmV0
IDwgMCkNCj4gwqAJCXJldHVybiByZXQ7DQo+IMKgCS8qIFdhaXQgZm9yIFBDT04gdG8gYmUgRlJM
IFJlYWR5ICovDQo+IC0Jd2FpdF9mb3IoaXNfYWN0aXZlID0gZHJtX2RwX3Bjb25faXNfZnJsX3Jl
YWR5KCZpbnRlbF9kcC0NCj4gPmF1eCkgPT0gdHJ1ZSwgVElNRU9VVF9GUkxfUkVBRFlfTVMpOw0K
PiAtDQo+IC0JaWYgKCFpc19hY3RpdmUpDQo+IC0JCXJldHVybiAtRVRJTUVET1VUOw0KPiArCXJl
dCA9IHBvbGxfdGltZW91dF91cyhpc19hY3RpdmUgPQ0KPiBkcm1fZHBfcGNvbl9pc19mcmxfcmVh
ZHkoJmludGVsX2RwLT5hdXgpLA0KPiArCQkJwqDCoMKgwqDCoCBpc19hY3RpdmUsDQo+ICsJCQnC
oMKgwqDCoMKgIDEwMDAsIFRJTUVPVVRfRlJMX1JFQURZX01TICogMTAwMCwNCj4gZmFsc2UpOw0K
PiArCWlmIChyZXQpDQo+ICsJCXJldHVybiByZXQ7DQo+IMKgDQo+IMKgCXJldCA9IGRybV9kcF9w
Y29uX2ZybF9jb25maWd1cmVfMSgmaW50ZWxfZHAtPmF1eCwNCj4gbWF4X2ZybF9idywNCj4gwqAJ
CQkJCcKgDQo+IERQX1BDT05fRU5BQkxFX1NFUVVFTlRJQUxfTElOSyk7DQo+IEBAIC0zODk4LDEy
ICszOTAwLDExIEBAIHN0YXRpYyBpbnQNCj4gaW50ZWxfZHBfcGNvbl9zdGFydF9mcmxfdHJhaW5p
bmcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gwqAJICogV2FpdCBmb3IgRlJMIHRvIGJl
IGNvbXBsZXRlZA0KPiDCoAkgKiBDaGVjayBpZiB0aGUgSERNSSBMaW5rIGlzIHVwIGFuZCBhY3Rp
dmUuDQo+IMKgCSAqLw0KPiAtCXdhaXRfZm9yKGlzX2FjdGl2ZSA9DQo+IC0JCSBpbnRlbF9kcF9w
Y29uX2lzX2ZybF90cmFpbmVkKGludGVsX2RwLA0KPiBtYXhfZnJsX2J3X21hc2ssICZmcmxfdHJh
aW5lZF9tYXNrKSwNCj4gLQkJIFRJTUVPVVRfSERNSV9MSU5LX0FDVElWRV9NUyk7DQo+IC0NCj4g
LQlpZiAoIWlzX2FjdGl2ZSkNCj4gLQkJcmV0dXJuIC1FVElNRURPVVQ7DQo+ICsJcmV0ID0gcG9s
bF90aW1lb3V0X3VzKGlzX2FjdGl2ZSA9DQo+IGludGVsX2RwX3Bjb25faXNfZnJsX3RyYWluZWQo
aW50ZWxfZHAsIG1heF9mcmxfYndfbWFzaywNCj4gJmZybF90cmFpbmVkX21hc2spLA0KPiArCQkJ
wqDCoMKgwqDCoCBpc19hY3RpdmUsDQo+ICsJCQnCoMKgwqDCoMKgIDEwMDAsIFRJTUVPVVRfSERN
SV9MSU5LX0FDVElWRV9NUyAqDQo+IDEwMDAsIGZhbHNlKTsNCj4gKwlpZiAocmV0KQ0KPiArCQly
ZXR1cm4gcmV0Ow0KPiDCoA0KPiDCoGZybF90cmFpbmVkOg0KPiDCoAlkcm1fZGJnKGRpc3BsYXkt
PmRybSwgIkZSTF9UUkFJTkVEX01BU0sgPSAldVxuIiwNCj4gZnJsX3RyYWluZWRfbWFzayk7DQoN
Cg==

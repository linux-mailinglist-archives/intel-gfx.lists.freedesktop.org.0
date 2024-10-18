Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A589A3AC1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 12:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6954010E44D;
	Fri, 18 Oct 2024 10:03:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eqXXeP8A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCCE210E1E9;
 Fri, 18 Oct 2024 10:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729245817; x=1760781817;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ayLzRxrCVXXxlGrPWLnCbIAB3swkJjh/DxK6n9NVCFQ=;
 b=eqXXeP8An/LnVxtAQNyIPqMrZarb8Jek44qwJRThF3GE97O9bZ95CSrH
 6+w+hyd0GsrPG3cWuoz9SpJqwpS50HWVLAxrMNpCwIfsGSLaj9eZJzk1N
 jfuTozvF+Zg8h3FNE37T3Bv/BAzH/YQQgRTUlztPXgfYvDQv9YcOqfL7l
 OKGnTSmVBQDoDgvbiH8eF+SbnHYdmad3wU5PIUbax+B1Doi6rnYku2Vno
 CrTxPDAvT8HkTK1FNv1vgZyG+jEs6s7TtyIsFI4XirJRbeu6cqFYxCL+9
 ubAukACVD4lDjBaAuZEiqDFxsiVpWc029tZ1JkKQxfrHXyMBFbuSgIFYf g==;
X-CSE-ConnectionGUID: q9GOrZ9kTPGnXhKOGXLI9g==
X-CSE-MsgGUID: KJKlacvxStSkszmCTCQi8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28874860"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28874860"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 03:03:37 -0700
X-CSE-ConnectionGUID: +4BnQKipReiMOnwLNthf3Q==
X-CSE-MsgGUID: pF3GzE3PTbWmMQy1B7XtEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="102123017"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 03:03:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 03:03:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 03:03:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 03:03:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pSmJPdjv7Ip41L/iPfpaiHHzPvJQqlCtGJKaAIa8dWuNw6v3wOcnkKW/G+wMj23p/PKBOjij5nS2hDZwkp8YYc+Uihi8xNom/EZCznaKYOSFu3VbqiQFv4jkihjhEyh9Lcv8mfHRCAEhKHXekbE6iVbjXVMo0GZpQG6U+raTyBxZgVYI/+nQ8rVszDj1dXU6Q8JLs5jNXCpZ2Jjqt4wBFOdiazu7laetPKzEA1XdAU/CyiTFf/EulKI9L7OeZi9x19DO8VKV6q+2cSS72iCRhIHYmaJDd1HNLgCmwlObMgz/vUxElhTErhu7sB/ucFYGHVWpnGzzDuJiHTx6Kk0wdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ayLzRxrCVXXxlGrPWLnCbIAB3swkJjh/DxK6n9NVCFQ=;
 b=krzKIxWSPjlH1qUto7aDXNlD2KQklbvBxuYS/QTl2CRBI3FPxREMz8LAkGRGxeUEIDlqUp0Zcnqnx51oIyG/b63Iq1+T5pfkQpP5z2XZj9gNtR4KGT5gWl7yNFvUWxs/IsvuJyikEri1EUWVetafbQ+oBDF5SUh2q9kFO1gDvrG4RD2vQKEhVJNo3sOJ1VOnLHHxQlgtOQrHqoJNr3P5ZKF0dhTQGmv5cIU3qQPPEWh1zl4TDuGq0Po5A9yMwUWQ0pyQSj8Q5E70esLgDtY2yBAD5iCDOj/IrJWAyQqbeI5tcnmwZnZ4maKJOY9DD1TNw+TfRSdVGj+W7myJS+SrTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MW4PR11MB5824.namprd11.prod.outlook.com (2603:10b6:303:187::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Fri, 18 Oct
 2024 10:03:32 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8069.016; Fri, 18 Oct 2024
 10:03:32 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
Subject: RE: [PATCH v3 6/7] drm/i915/xe3lpd: Add check to see if edp over type
 c is allowed
Thread-Topic: [PATCH v3 6/7] drm/i915/xe3lpd: Add check to see if edp over
 type c is allowed
Thread-Index: AQHbH1ejadP1K9g7B0C+reDVffYF27KMSwBQ
Date: Fri, 18 Oct 2024 10:03:32 +0000
Message-ID: <MW4PR11MB7054153D4D9F51B58AFF20D1EF402@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
 <20241015231124.23982-7-matthew.s.atwood@intel.com>
In-Reply-To: <20241015231124.23982-7-matthew.s.atwood@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MW4PR11MB5824:EE_
x-ms-office365-filtering-correlation-id: 79675f7e-766e-4f89-757c-08dcef5c1fbb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RVlwb0FaR01UTm01M2Z5Z3AwZzRRN0llSEkyRmRPQ0htdlZ1NlM4Z3ZpSEh0?=
 =?utf-8?B?VE82d2VGSFdFMHdVRTVSNEZQbGJHTDFhVE93T3lLRFpMVFZkYUZXSUxoZ3I4?=
 =?utf-8?B?L1kwbWlqWkJ1WUdOMXJlcjk3aHhja0RYUnBUZjJiYWlha3pMV1NMNlo2UHRr?=
 =?utf-8?B?bTIybkdwMHQ3bVByUGUrUGhZeG5hYk0vY0ZQeVJWeWMxNXNlZ1hnYWxDSS90?=
 =?utf-8?B?UklDa1VqMmFZZ20vUThrMFlrZmFiLzkzbGJEU29FNmZ3a3BwYTNwUnBCNWVj?=
 =?utf-8?B?TkNWN3VubEk4Vk4vZzBZa1AwSXdNWi9DWUtjcmdnRTdrMWZKcm9YM0UvSjIv?=
 =?utf-8?B?d2dUS3M4aE13dXB3U1JRaTV1OGV2dGNOM3RVK1BIREV5UHFXMjdpZDRoWmRJ?=
 =?utf-8?B?Z0xIb0tXdEpaWmlIS1c0WHVFVzdQbmgxR3JZbzRRR0MwU0VoQWJBTllvYncy?=
 =?utf-8?B?eE02SVFmVXliNGZIWGJGanpRaTZKT3gySWhUMEpTKzZRMWlvOEtuS1JsTVFM?=
 =?utf-8?B?VzNHMEhCVVpQdWdjOGxNRUFCREl1NDB0T0VmUmxmQldUK0Z3dWQ4U3RiRldu?=
 =?utf-8?B?UjBYVE1rWUczOEtzTVlFUWlIZ0VBei85QnBEOWlkblphZFRLVzM3bGFDTm1G?=
 =?utf-8?B?RDJZbWVNQndqS3ExcStMUEcvd3BURm9wT1ZyVUpsYXZIK3haYlVZcmZ3U0lM?=
 =?utf-8?B?N3haSGNFeEVrRXc0bExJM2d4TFV0QkJDaThTeHY0NmI2cVJtM29NWVhYTGZr?=
 =?utf-8?B?cTR6S2R0aHJ2ZkVnS2ZkemFKeVhZdEIrZmF5OFVkcG56S1NScTBIdys4NGFG?=
 =?utf-8?B?VVB6d0FUN0lIZVhTQTZLelN2djVTanFWb2ZsZ3ZkUHVrbVJoRkpCTDVITGUz?=
 =?utf-8?B?UGhFcmVMcXI2Zyt2VXl1NmVUMlc2OFI2cEx1RUZzZVpOa21UY2FZYmdJZjM0?=
 =?utf-8?B?QUtyQmdrWXNWdWZZandscmdQdi9GWkFsYk96ckNrdDV4Q1NyemFqeVlaZ3hw?=
 =?utf-8?B?bWpRM25RTnA1SCtIY2IybTZQMXRhRmJ5WURyek1aaXhQRG9Da2lONGk3Z3My?=
 =?utf-8?B?T2xPendoaGc3U0dwUnlWSDRhaTVrNTE1bGlFa3ZRQzJzZ3BmS2Nac2w1dGxI?=
 =?utf-8?B?OG1CeHdvUE5Ycllqenc2SmRIb3VWMEVXMklZdVRSbTg1N0U1cHBGR0F3cll1?=
 =?utf-8?B?SzBsTHJXWE5LdnNQVDNOUEpkcG9NcDdnNXFPWEUwOVJLNk9ZT1czT2gvR0FJ?=
 =?utf-8?B?Z1ZtS0M2bnNxMk94ZHQ4U2pLYUxQR0hLVDdmRjVZYXZBVjREMXpzWmZCa3pm?=
 =?utf-8?B?SUJXSjFDU09GcWNHUU5sNGdQUUQrM09QOUw1eTAvM1BiblhaSjRHdzlsVzBW?=
 =?utf-8?B?SXFYMnpJQXppNU5FSllDMjRmRVFrdFcySGJLaGY5Zlh5MVg3b3J3U01vRUw0?=
 =?utf-8?B?Y3UxSk5neEZadE5ScGI2TVpJeUJTMTRrV2lRZDM3SGxMbXpwN3gwMFRZT0xo?=
 =?utf-8?B?Ti9ZUnVrTFRJSnhlWUlZZnJTTUVkNkNmMjZpMnloVVJUNm9STFRaV2tEZ3ZX?=
 =?utf-8?B?RjNLNnVTZFNid2NweEZCK29NWjNjYlpUd1JpYWMwSVdvOXR3bUhjUXR2R3RX?=
 =?utf-8?B?dU5TNEY2anl1Z0tkTklrRWFuOVlyM3pmaytXS2doVGFUdVkwUFFObjA2RG53?=
 =?utf-8?B?ejlGSW5ZbUZ3a241L1E5SlhzWWV3aXdRdk0vSFB6T0hmc0NxY09OQ2k3UTRS?=
 =?utf-8?B?d1M3Q2pyWVBYakkxMXorRjBib1dvdW92Tnk5TTUwY0xhYlhEOXJ5YkdEUnBt?=
 =?utf-8?Q?+ipPF6IasjuUMc2yuBJTSc+5HqqGvkCMJiMRE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SC9PaFEzd09tRGVlNnRLK1pSZXlDN3dic0V5TzBNMVgrcDdkazgybm94Y3hr?=
 =?utf-8?B?VjhLc04zUlEvbTdhNThiT1BkZjU5Y01uVitkRXBUbWhzRmZiNnJsN2RFTlJw?=
 =?utf-8?B?dHFBVWdvWGFTU3QyY0lYamFOdHNvVVhxYUZhYmJybHV1M0xtaXZhSHY1dUxn?=
 =?utf-8?B?enhnQlhVdGFyNDNWK2NJSmNXaXp1WGdReVhIU1pmUjFFOGtIcmdOZk5UaXFY?=
 =?utf-8?B?MkRnS2FjRmVDNys0amcrRmEyWnNkT29WM0JTUWRUS0E0VTkyRkhuQWtGbCti?=
 =?utf-8?B?dGdXMmo1SllReGhNNXEyaGhMZjA2Z0Q3d2wyMmxjUVcrYVpHRlhHaDJoSE9v?=
 =?utf-8?B?SXRTKzlPc1owSFIzcFZ1aTZqWGZpY1pwQXhyc0JpYXk1MzRDMU1vZUloOVZt?=
 =?utf-8?B?ZlJUOTVIdlY5WUgraWlxVHZaWlpaU1pTV3lnM21VTmF3aTNGMVIxRnBxdTRl?=
 =?utf-8?B?blpKYk5GZ1BqU1hBbjdvKzYwUlg4aXZiZnlOa21sMUsrZStmSlVkQlNDY2JG?=
 =?utf-8?B?Q2FsRUNjdWFucWRQL2dJUlYxeGxJNTczbS8rT0E5cWFsSFl4YlRCNXArMmt5?=
 =?utf-8?B?dU9kRjJhdzBlTXB5UDFrdHNtZXlLMEhQb2VJMDJQeVZVcGtQK0pPendMY09y?=
 =?utf-8?B?cC9HU0Y5ajdyYnFUTllCakxvcmdaSWRtRDBjcTkzbEIyT0gwVDh6SHk0SjRQ?=
 =?utf-8?B?cmJ4VEhEY3VwNUhwUThvTDAzTmFJeUVIOUZtZ1I5MUwrTHhtbGdVcnR4QmE0?=
 =?utf-8?B?cUJKQkFTb09TTW9QZS9xanRLQlFhSlF2WG5zWXhhckRvSkN2MjZESENmMFFj?=
 =?utf-8?B?MU1HQ242QkVPMUdYK2hDWUpDQ1gxNXYxdEZyeGE4UWkyYlJjYWNBemc0dmdz?=
 =?utf-8?B?Y1Bydjlwc1l2Tkk0amp0SE42WElmNU1yaURxY1p2OWV5d0s2S2xIV2s0R2RS?=
 =?utf-8?B?ak1ZYUdtQXpXVGF3RjIyNllFbmQ1OXpSU25SRjJWSFU1VmhEeW5Qek5xRmhU?=
 =?utf-8?B?MnBpT2FNTEdKR0NRRHMvbDJGTWo2a2ZHenkxODgvMWs4c2s5MUFqWEtvdC9S?=
 =?utf-8?B?M1FsR2g4KzZPaHIweUlqYlcyWHVGOW5Ma0E4RmhmUEpxWVd3SWxycEVkM2tZ?=
 =?utf-8?B?alUrZDVxcitNMk8ya2s1SUJ6SDZPTjY1THk1ZHZYYjNtemJxYmdmR0gvNXBa?=
 =?utf-8?B?OUQyOURyQkFPYWs0cUx2cTk0NlA1ZU4reTRzS3BvMDI3SmFKSTBwUzhTSXFY?=
 =?utf-8?B?OGYzNUdIdi9tNUFoT2hBUjRHeDdVR1JmK3FMRnBiWEo1TUhhQ2VWaGhnemhs?=
 =?utf-8?B?aGdSOXFjYUp6akRuTDk4L3BZMzZrUWk2eVByRldhVzQxZ1dBdmMvKzkvcHlm?=
 =?utf-8?B?OC9kT2JQcEplVEpyK2wrMnk2Q1ZCUFNQaUptLzlHMEtTbWQrZkY2dzl1NVZE?=
 =?utf-8?B?dTdEUk1DVjNtTEF6QldUa2E1eUhHdHRubW1QWFEzWkR4NE5VOUhlajNUU3Rl?=
 =?utf-8?B?bTdnbFdaVGRzeHFDTzRvVGMxVnZJT1Bubm1BRDgxc2ZYejZoR1hQMVNueHdZ?=
 =?utf-8?B?bTFzTm9ZMkE5NVBsclJTT2dUZlFLVjQ1U2lxRGE1MkdUSVNhNzJjZHROWEJn?=
 =?utf-8?B?K0VwOVZTWXd0K1I1OGpnVHJFQ1JTcExzSXVqRmU0dWs2VEZPWS9JWjI2YmQw?=
 =?utf-8?B?b0pocVN3dFZLbTZla3NLN3Z6MEFpY2dsOUdrZFR2QmpTMkZnbDhmOUQrSjlv?=
 =?utf-8?B?T0x1MUU4YlVLK25iUUhRUkZLU3o4TkxYak9pTHFZMUZQSW8vQjhaRVFMcVg5?=
 =?utf-8?B?VHdNbGM5M3VWOTUwVC9QYVMxd3oxcU5VaDZGV2RPc2FEenhnZ2F5TWI3VGU0?=
 =?utf-8?B?SFFQQ0RsRzRNYXdkNXpKeW93ZVZZSVUrZm0zL0xxRHpFOVdsM0c1VWxvNEtD?=
 =?utf-8?B?TWVEYXBjNng1NWFaekJKeFdUUXU1WVdaRnpOcW04WnVmMHJVa0VuN1hoaElM?=
 =?utf-8?B?dXFQeEhRRHdrQkRqenljUHBEUndLTGN5eXRtRFRUdnFaYXlGVWlVWGRlSnhJ?=
 =?utf-8?B?L2lDVUlFMnh5eHMwMVg3YXFtUVFaMWcrb3FJMjMza0hiT1M1WEVieVJnNGFS?=
 =?utf-8?Q?KlJhea3NJ3q4BFyA/L3/pjH/I?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79675f7e-766e-4f89-757c-08dcef5c1fbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2024 10:03:32.7584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wy1mf8KuzZPifxWAkKfAvzZTReQHcMWggXTz5f/jy0K0s4JOR3iECCRvvxlq5OpNhPg093ltb7JcuBHhVyfFrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5824
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIE1hdHQNCj4gQXR3
b29kDQo+IFNlbnQ6IFdlZG5lc2RheSwgMTYgT2N0b2JlciAyMDI0IDIuMTENCj4gVG86IGludGVs
LXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBDYzogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPjsgQXR3b29k
LCBNYXR0aGV3IFMNCj4gPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBb
UEFUQ0ggdjMgNi83XSBkcm0vaTkxNS94ZTNscGQ6IEFkZCBjaGVjayB0byBzZWUgaWYgZWRwIG92
ZXIgdHlwZSBjIGlzDQo+IGFsbG93ZWQNCj4gDQo+IEZyb206IFN1cmFqIEthbmRwYWwgPHN1cmFq
LmthbmRwYWxAaW50ZWwuY29tPg0KPiANCj4gUmVhZCBQSUNBIHJlZ2lzdGVyIHRvIHNlZSBpZiBl
ZHAgb3ZlciB0eXBlIEMgaXMgcG9zc2libGUgYW5kIHRoZW4gYWRkIHRoZQ0KPiBhcHByb3ByaWF0
ZSB0YWJsZXMgZm9yIGl0Lg0KPiANCj4gLS12Mg0KPiAtcmVtb3ZlIGJvb2wgZnJvbSBpbnRlbF9l
bmNvZGVyIGhhdmUgaXQgaW4gcnVudGltZV9pbmZvIFtKYW5pXSAtaW5pdGlhbGl6ZSB0aGUgYm9v
bA0KPiBpbiBydW50aW1lX2luZm8gaW5pdCBbSmFuaV0gLWRvbnQgYWJicmV2aWF0ZSB0aGUgYm9v
bCBbSmFuaV0NCj4gDQo+IEJzcGVjOiA2ODg0Ng0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFs
IDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBBdHdvb2Qg
PG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jICAgIHwgIDQgKysrKw0KPiAgLi4uL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMgfCAgNCArKysrDQo+IC4uLi9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oIHwgIDEgKw0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgICAgfCAxNyArKysrKysrKysr
KysrKy0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oICAgICAg
ICAgfCAgNSArKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAg
ICAgICAgICAgfCAgMyArKysNCj4gIDYgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3gwX3BoeS5jDQo+IGluZGV4IGY4NzhlZjFhOTdlYy4uMzdjNjZiMzIzMjVkIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiBA
QCAtMjI1Niw5ICsyMjU2LDEzIEBAIGludGVsX2MyMF9wbGxfdGFibGVzX2dldChzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gIAkJCSBzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcikNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRv
X2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOw0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5X3J1bnRp
bWVfaW5mbyAqZGlzcGxheV9ydW50aW1lID0NCj4gK0RJU1BMQVlfUlVOVElNRV9JTkZPKGk5MTUp
Ow0KPiANCj4gIAlpZiAoaW50ZWxfY3J0Y19oYXNfZHBfZW5jb2RlcihjcnRjX3N0YXRlKSkgew0K
PiAgCQlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRURQ
KSkgew0KPiArCQkJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDMwICYmDQo+ICsJCQkgICAgZGlz
cGxheV9ydW50aW1lLT5lZHBfdHlwZWNfc3VwcG9ydCkNCj4gKwkJCQlyZXR1cm4geGUzbHBkX2My
MF9kcF9lZHBfdGFibGVzOw0KPiAgCQkJaWYgKERJU1BMQVlfVkVSX0ZVTEwoaTkxNSkgPT0gSVBf
VkVSKDE0LCAxKSkNCj4gIAkJCQlyZXR1cm4geGUyaHBkX2MyMF9lZHBfdGFibGVzOw0KPiAgCQl9
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfZGV2aWNlLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfZGV2aWNlLmMNCj4gaW5kZXggYWEyMjE4OWUzODUzLi44NTgzYzM1MjkwNjAgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2Uu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2
aWNlLmMNCj4gQEAgLTE1LDYgKzE1LDcgQEANCj4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3Bh
cmFtcy5oIg0KPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfcG93ZXIuaCINCj4gICNpbmNsdWRl
ICJpbnRlbF9kaXNwbGF5X3JlZ19kZWZzLmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfZHAuaCINCj4g
ICNpbmNsdWRlICJpbnRlbF9mYmMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9zdGVwLmgiDQo+IA0K
PiBAQCAtMTY4NSw2ICsxNjg2LDkgQEAgc3RhdGljIHZvaWQNCj4gX19pbnRlbF9kaXNwbGF5X2Rl
dmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkNCj4gIAkJ
fQ0KPiAgCX0NCj4gDQo+ICsJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDMwKQ0KPiArCQlpbnRl
bF9kcF9jaGVja19lZHBfdHlwZWNfc3VwcG9ydChkaXNwbGF5LCBkaXNwbGF5X3J1bnRpbWUpOw0K
PiArDQo+ICAJZGlzcGxheV9ydW50aW1lLT5yYXdjbGtfZnJlcSA9IGludGVsX3JlYWRfcmF3Y2xr
KGRpc3BsYXkpOw0KPiAgCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJyYXdjbGsgcmF0ZTogJWQg
a0h6XG4iLCBkaXNwbGF5X3J1bnRpbWUtDQo+ID5yYXdjbGtfZnJlcSk7DQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5o
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5o
DQo+IGluZGV4IDA3MWEzNmI1MWY3OS4uNDEwZjhiMzNhOGExIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+IEBA
IC0yMzIsNiArMjMyLDcgQEAgc3RydWN0IGludGVsX2Rpc3BsYXlfcnVudGltZV9pbmZvIHsNCj4g
IAlib29sIGhhc19oZGNwOw0KPiAgCWJvb2wgaGFzX2RtYzsNCj4gIAlib29sIGhhc19kc2M7DQo+
ICsJYm9vbCBlZHBfdHlwZWNfc3VwcG9ydDsNCj4gIH07DQo+IA0KPiAgc3RydWN0IGludGVsX2Rp
c3BsYXlfZGV2aWNlX2luZm8gew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+IGluZGV4IDZiMjdmYWJkNjFjMy4uMzc4NzI1NzY2MTI0IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC01NTcxLDYgKzU1NzEsMTYg
QEAgaW50ZWxfZHBfZGV0ZWN0X3NkcF9jYXBzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
ICAJCWRybV9kcF9hc19zZHBfc3VwcG9ydGVkKCZpbnRlbF9kcC0+YXV4LCBpbnRlbF9kcC0+ZHBj
ZCk7ICB9DQo+IA0KPiArdm9pZA0KPiAraW50ZWxfZHBfY2hlY2tfZWRwX3R5cGVjX3N1cHBvcnQo
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICsJCQkJIHN0cnVjdCBpbnRlbF9kaXNw
bGF5X3J1bnRpbWVfaW5mbw0KPiAqZGlzcGxheV9ydW50aW1lKSB7DQo+ICsJdTMyIHJldCA9IDA7
DQo+ICsNCj4gKwlyZXQgPSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIFBJQ0FfUEhZX0NPTkZJR19D
T05UUk9MKTsNCj4gKwlkaXNwbGF5X3J1bnRpbWUtPmVkcF90eXBlY19zdXBwb3J0ID0gcmV0ICYg
RURQX09OX1RZUEVDOyB9DQo+ICsNCj4gIHN0YXRpYyBpbnQNCj4gIGludGVsX2RwX2RldGVjdChz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiAgCQlzdHJ1Y3QgZHJtX21vZGVzZXRf
YWNxdWlyZV9jdHggKmN0eCwNCj4gQEAgLTY0MzksMTAgKzY0NDksMTEgQEAgaW50ZWxfZHBfaW5p
dF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQsDQo+IA0K
PiAgCWlmIChfaW50ZWxfZHBfaXNfcG9ydF9lZHAoZGV2X3ByaXYsIGludGVsX2VuY29kZXItPmRl
dmRhdGEsIHBvcnQpKSB7DQo+ICAJCS8qDQo+IC0JCSAqIEN1cnJlbnRseSB3ZSBkb24ndCBzdXBw
b3J0IGVEUCBvbiBUeXBlQyBwb3J0cywgYWx0aG91Z2ggaW4NCj4gLQkJICogdGhlb3J5IGl0IGNv
dWxkIHdvcmsgb24gVHlwZUMgbGVnYWN5IHBvcnRzLg0KPiArCQkgKiBDdXJyZW50bHkgd2UgZG9u
J3Qgc3VwcG9ydCBlRFAgb24gVHlwZUMgcG9ydHMgZm9yDQo+IERJU1BMQVlfVkVSIDwgMzAsDQo+
ICsJCSAqIGFsdGhvdWdoIGluIHRoZW9yeSBpdCBjb3VsZCB3b3JrIG9uIFR5cGVDIGxlZ2FjeSBw
b3J0cy4NCj4gIAkJICovDQo+IC0JCWRybV9XQVJOX09OKGRldiwgaW50ZWxfZW5jb2Rlcl9pc190
YyhpbnRlbF9lbmNvZGVyKSk7DQo+ICsJCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAzMCkN
Cj4gKwkJCWRybV9XQVJOX09OKGRldiwNCj4gaW50ZWxfZW5jb2Rlcl9pc190YyhpbnRlbF9lbmNv
ZGVyKSk7DQo+ICAJCXR5cGUgPSBEUk1fTU9ERV9DT05ORUNUT1JfZURQOw0KPiAgCQlpbnRlbF9l
bmNvZGVyLT50eXBlID0gSU5URUxfT1VUUFVUX0VEUDsNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gaW5kZXggNjBiYWY0MDcyZGM5Li5jNmE4MGM0ZTIx
NjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
aA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gQEAg
LTIwLDYgKzIwLDggQEAgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsgIHN0cnVjdCBpbnRlbF9j
b25uZWN0b3I7ICBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZTsgIHN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQ7DQo+ICtzdHJ1Y3QgaW50ZWxfZGlzcGxheTsNCj4gK3N0cnVjdCBpbnRlbF9kaXNw
bGF5X3J1bnRpbWVfaW5mbzsNCj4gIHN0cnVjdCBpbnRlbF9kcDsNCj4gIHN0cnVjdCBpbnRlbF9l
bmNvZGVyOw0KPiANCj4gQEAgLTIwNCw1ICsyMDYsOCBAQCBib29sIGludGVsX2RwX2xpbmtfcGFy
YW1zX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsIGludCBsaW5rX3JhdGUsDQo+
ICAJCQkJdTggbGFuZV9jb3VudCk7DQo+ICBib29sIGludGVsX2RwX2hhc19jb25uZWN0b3Ioc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCSAgICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5l
Y3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7DQo+ICt2b2lkDQo+ICtpbnRlbF9kcF9jaGVja19lZHBf
dHlwZWNfc3VwcG9ydChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gKwkJCQkgc3Ry
dWN0IGludGVsX2Rpc3BsYXlfcnVudGltZV9pbmZvDQo+ICpkaXNwbGF5X3J1bnRpbWUpOw0KPiAN
Cj4gICNlbmRpZiAvKiBfX0lOVEVMX0RQX0hfXyAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgN
Cj4gaW5kZXggZmMzMGUwMDU2YjA3Li41MzUzODNhMGU0ODQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiBAQCAtNDU4NCw0ICs0NTg0LDcgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7
DQo+IA0KPiAgI2RlZmluZSBNVExfTUVESUFfR1NJX0JBU0UJCTB4MzgwMDAwDQo+IA0KPiArI2Rl
ZmluZSBQSUNBX1BIWV9DT05GSUdfQ09OVFJPTAkJX01NSU8oMHgxNkZFNjgpDQo+ICsjZGVmaW5l
ICAgRURQX09OX1RZUEVDCQkJUkVHX0JJVCgzMSkNCj4gKw0KPiAgI2VuZGlmIC8qIF9JOTE1X1JF
R19IXyAqLw0KPiAtLQ0KPiAyLjQ1LjANCg0K

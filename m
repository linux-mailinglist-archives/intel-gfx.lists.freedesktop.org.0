Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 085A0AE031F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 13:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BF3310E05D;
	Thu, 19 Jun 2025 11:12:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BK9jAiO3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDA8A10E05D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jun 2025 11:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750331523; x=1781867523;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=QXA3kQqTG5Uw629xipwxDsgGIVLCjMllG7CI8lOGnuY=;
 b=BK9jAiO3muMHIqsGzeuNgIYgKdkZ+WUNeFSUguFPgDZvZOhAtvV3uRc4
 PfwbYflmgCAmgd/xcgkaMUY9bY66H7GBmujZYMN98zL3IY1qagB8bjeRK
 VNoqsoSbSf4GmyZNwXu8ATLZNoV9BDNZVyXXWofiCalvrk4UEV7KfDnHM
 acAmPxutx6V892PGSUjVvgg/g+BpIV9E5CPmnuUOulaCv3xXD1OulH4Xe
 LYgoCH4vEtJs1QLDu0KDyPRHqyzkKkDF4RggiokwDNS4tJI+pAw7rsKXm
 tCZ5/taw3dmEy8xA+j9oP1CoExALHW3Hjf9XgLqZasQoEVVTKs41xTiFm Q==;
X-CSE-ConnectionGUID: +PA9fsSKQ7KzRbg4WjaG+Q==
X-CSE-MsgGUID: mC4ow38IQJeSJktMfT7IIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="70017824"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="70017824"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 04:11:56 -0700
X-CSE-ConnectionGUID: 3AO0JZ1bRU2qNn9uUQ+8Dg==
X-CSE-MsgGUID: 9Bqd+rDWQDabwGdDSGrE5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="154889411"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 04:11:56 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 04:11:55 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 19 Jun 2025 04:11:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.46)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 04:11:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=huLj9cvPZqsMb4zGNcI31I9W+116g9iJtRXdinxXjbyI/JbF4qh5KMqqBMbiGCBmDUVxzc4zTUyZu895NKAmBTfn+YmgzhKiMaqZDAqhdesLepRLzvkWMgo7GUl1gi3pmx5i9csRkbrgSnOgIn4hYCpK8b3k2bTGxTzbjrYH4v2aAwFtlK03RvNOMNL3vdO3lsKcHcpRRDXS3jPiREbfQumaP8JBIUYguwfvqXTl+vMp4KbYvbVki0r+5/g7K0DyHPwt2yIiwV+1L3bPxRyblQFpUmmLdckKYB6VrJ/4A4jqB5TiA1cp8nkJ3Uyay2+hzHC2NmDsvfUBLTqYpvSIOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QXA3kQqTG5Uw629xipwxDsgGIVLCjMllG7CI8lOGnuY=;
 b=MXyXJvPCiaptKAZmqKPx+OvUFUu+Omm04OCWbFV6O+EEu5c/dv8wOzN4sOzNNTJTLv6MlYjhDjehaZ2XtfTc2XIWr2yr2vvUL3aNfhuVlcF/rFhHSQ0LWzH3wiOfZFpTTdzd/VQrd0lsBlir/WhxMv4REWxBvcvF2eNIjXnSvqYppx2Mqh7bNW3JkAKGVdqkxM97hkQSJ9AD+d6VmXBjqtoeepZlXrFkY0vSkw+xNI0vdWZl1fANIL2J3Q741QYjLnSoSAi5rIkDIhS6KTc6b5yX71+XJdceJxfhknkOY2Ke86BL3LtB78za3QkVr8QJewf5+cxb3tSyftBABwzj7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by SJ5PPF0D72A1BA6.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::80c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.23; Thu, 19 Jun
 2025 11:11:53 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::80b3:e6e7:efec:dbee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::80b3:e6e7:efec:dbee%4]) with mapi id 15.20.8857.020; Thu, 19 Jun 2025
 11:11:53 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: move unordered works to new private
 workqueue
Thread-Topic: [PATCH] drm/i915/display: move unordered works to new private
 workqueue
Thread-Index: AQHb4Qe/a4+ec7Fm90SheChJ/uaB+LQKU9sA
Date: Thu, 19 Jun 2025 11:11:53 +0000
Message-ID: <4ca345fee3e5ffdf7afbaae03085a293a13b5265.camel@intel.com>
References: <20250619103704.1199008-1-luciano.coelho@intel.com>
 <dec2c8bb55a45840fbff4b7f319b71ded75a5392@intel.com>
In-Reply-To: <dec2c8bb55a45840fbff4b7f319b71ded75a5392@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.56.1-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|SJ5PPF0D72A1BA6:EE_
x-ms-office365-filtering-correlation-id: b1a5980e-5374-4d39-09c2-08ddaf2218ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?U2pha2RKQkJUcTRKWXI1SVFzQmR6dnNnL3FtaTZsS2MwaXdMZjVUR3RmMmJS?=
 =?utf-8?B?ZjNlRHAzbEYwdE9yZlAvb2wvT3c3RjdHRWVzbGo1dUJEVUpoTkFOTWhSSnlQ?=
 =?utf-8?B?aFBUdW9seEI5a3RPN1ZSWGFBdzlXY1FYdTJycnU4REk3ZGlyVXB5OUlGcVg0?=
 =?utf-8?B?RVpHT2Ftekt4c2RJNTIwdmt3YjArMHpmM3A1VERjRWVEbnRrUFUrRWp3eFl4?=
 =?utf-8?B?YlFYdUs4b3VaalV4UTR4eEtrSU1CekZsZjc5YUNiNDJJYzR6NitFQVNKRXFM?=
 =?utf-8?B?VzlCNXRyZkFlK2ZMUTBCTTZvQ3QvekxSdUxhalIvZ29MVU9kekFiZCtCZDRO?=
 =?utf-8?B?bm5PYUlOWVphbUlFRmRSVW1HVU1MYjJUSldQWFhsME8xb1RjUHY2Ky9qWkN3?=
 =?utf-8?B?VHpvL0lBdEZYUlNqdkJkdW5lbVc4WFZDemRxQzd1bzJadkZUZ0haRUp6azdI?=
 =?utf-8?B?Y3RsREo4ZHpsR01JRkpZTmdadE5JeVV5aytFbmp4UkZkNEtaSVhZVGJyN1dw?=
 =?utf-8?B?WExpTklncXFwSUx6REFhZ2I1aENqcTBWSzZtZzdUUmtpRG05MHJWMU9RdTcy?=
 =?utf-8?B?VjM5UU9laFAvUXdOUUdpVUhuSEhTS3JxVHQzQUl1YnZJMkdheFlxTnlmQ3k4?=
 =?utf-8?B?SnZHd3RQS2s2Y0tYc2piN2QxcEtEa3JhZ2twcXkrb05LVndTTlgvZm4vUmxW?=
 =?utf-8?B?U21zYXd2UEZVL1VGK0hvQ2VRN2xnS2IvV2Vuc2dwMGw1K3hNcE8zZmExdjBI?=
 =?utf-8?B?UjlmZkZIZzJ5NldCNVdaeDBjY3FGN0hCdkZTT1d4VEY5c2hKL0lpcHQyUVBQ?=
 =?utf-8?B?QmFQVFAzUjRFTTBkajkrMGllRmFRd0RPdDNhbmxnTXBOSDJvOU8zM1RHWnNP?=
 =?utf-8?B?Q3B1YnZTMU96MTRINmpQckxXdzJSSXRBaTZjdFFOQlpDR0VYalBFSGp3ZGsz?=
 =?utf-8?B?UUl0cnJNSzIrZEtKTXpHeklYZzZQajRNM1d3UFBIM05ySkJlbGNGWmVqSmlj?=
 =?utf-8?B?RHV1VFBEWDBtbHg0TVV4dkw3MEJ4dk5mb0ludmFvcDEwd2xQN3J6M1ZJVmZk?=
 =?utf-8?B?eUFqdERZdU8wWDNXSDVlZU90NVFWOENpaVlXT1NoY0VEb1VrTGpYV1FUUzZK?=
 =?utf-8?B?NnlNWUxzTnZrY0U4VHZIYzdlTjA1bDF3bUxOQ0dGRThQRkw0dXdudTFIV1FO?=
 =?utf-8?B?angyZjVXT1ljVGRNS3psV3BBMFNhWWlXdHlvMUoyQUxCUmd6VjloSUlDMW1j?=
 =?utf-8?B?aTB1N1JMNjVzQmc5ck9XeEtHdTNuQzUzMEI4MS9rSFArVkR6UC81MWlXL0Rn?=
 =?utf-8?B?VytjQzk2Y3F5YXJic3F1bnB3OWlDS2dqVExCb1dxRDYzdWVyYVFzRWVoYnRP?=
 =?utf-8?B?SmRmblk2UVhiVWFpVFpHa05ZditmVkNsUlRCZXNKNjlqS0NlbWNjOWdSbW1Y?=
 =?utf-8?B?aG1OYkdqd1Q3TjYwZGUxNWpZeG9TOWNWU2U3Wk1RMllhVk51NkpaTk1qUUo4?=
 =?utf-8?B?dDdCVjNVbGU0ZUpKVW9MbE5WRjZ4MC9QbGZWYVgvTDA4eENocUh4VHNrNHp2?=
 =?utf-8?B?TFlHT3pQeEdFT2wzMjlJUHhLZlFibHFsWEN0ajNFYTFvV2J0aHQ1bXlGS1FU?=
 =?utf-8?B?dXBLa1JOMkpHVmVmQ3FMWWwzckRNanZkOFA5OUo2UzRMMVVHOXBBZ1BXcVBU?=
 =?utf-8?B?SzMxaW5DZ1dlWUx4dS8xNTN3YXFjOXFzNU9iYTZLd2ZyUm5vZTdVWDdEZHVw?=
 =?utf-8?B?YWlDZVQ1MjMvemhpQys1TllVWm9ZSzVzeXgydHRCMHJSOXpVZXc0VHYvR2FV?=
 =?utf-8?B?MW45S2ZzdHc3N3NvaU45L0RvMFZvRXZXbHdSWGV5TzVMTzhlQWRHZ3B1ZzJQ?=
 =?utf-8?B?RG5WQmUrMFNNT2JkZjZCL0dxc2RMaWtNazVwSXBRZXJ3TThpVmhDdGhtb1ZB?=
 =?utf-8?B?VHlJWmtsWUx0ODF5NHJndHNja1RGdWhqYVFlUGtweGo1T0tmS2FlZCs0enhy?=
 =?utf-8?Q?iq3XH54cJc1mIGBgRXwpKV/U76G9oQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0hhMFg1YmNKblFxeXY1YUVHOWY5akVDeFRaRVpIcWx6OW1uOWUvMFlnTlEz?=
 =?utf-8?B?a2FSVmNNc3hRbzhFN1BneFh2Y2NONG0xTFJjT3lFK0pqME91blFQakZQRzM2?=
 =?utf-8?B?cDZwcjBqR2ZWakJ6aHJTem9lOC9SRVBDMkZLNGVJRXpnUkw3bmRzTGU4S3dE?=
 =?utf-8?B?WlVXTWllck1DRTViTk1lZ2xMcE1aTjE4WjZ3YlRmblFFWnd6cFU2dHRmd3Zm?=
 =?utf-8?B?OE1vdUdEZHVXb3BScnRGKzNwanE2YjEwQUtjTXZKdHI5MEJzZEN3V2Y1U0hY?=
 =?utf-8?B?eFBXelBxNGE0RzNwb3l2SkhmQjU0dEZocmVUK0ZpT05ra1k0Q05OWjE1S3RG?=
 =?utf-8?B?MklrQkdGQ0NEZEQ1WDNOT1FtQnpUaVY1NEg1RDRnVzBnRm9lNHJPWWUxc2sz?=
 =?utf-8?B?QXpHZ0Qyd0s1cW93M2lhOTNXTGZoUC9kWjJBYUZtUUtRdWN3dFhwWjE3cWZB?=
 =?utf-8?B?Mk43VnlUdWlMUnduRFdQeFhQajkwU1BESGpyMWI4em1PWGpJN0lUVnJ3TnVG?=
 =?utf-8?B?akU2T1c2ejgydENncEsrQWdUYzBXMmhPaWVoS0FORkxuSHZUMmEzbkt4Z2Fu?=
 =?utf-8?B?UncrcExVSHJ4NkFmZmxPUUtuMjRYSmg1VWk1cEpBQzN3ZGxtQ0JYTnlGRmd4?=
 =?utf-8?B?RnpiVzN0eTRyb2ttREpwQ3VjZFl1UW5xNXZlZ1QxbE4vN1dldmQ4T0tQVHM1?=
 =?utf-8?B?UWFvREhyWnNnN2FuWExXK1ZodmExUXdTWHprT1dia2JHTG00WGpheERwQXEx?=
 =?utf-8?B?RTVkSTJteU9WMllWeGZoR3g3aDJjK1RFWEl6OHBURGpFNmxIV01vcThwKzly?=
 =?utf-8?B?Kzg4Y01EWHA5bmVTN0tGalU0KzFUV2EveVlSVFAveWxwNmp2QTY0ZXA1SDhz?=
 =?utf-8?B?cDh1V05pN3dJR0lYa2VoczNadzliZE9kWFZ3ZWhmV0NvNmtxaXpDMUhWT1Yr?=
 =?utf-8?B?d2EwdDVZamdPWktuM09KWTU4WXV1bHdPbmIrcURQcVFEOUZBc2Z0YmdydE9N?=
 =?utf-8?B?bTFLU3J6OXFMZ3VlWVEvOThCbURLN0xLQlo3MDM3Z2JhUm1iazIvZ3p0RkNk?=
 =?utf-8?B?TFRRdm0zZ3BmNHlhclkrWEkvcGdERU0xb016cm85V3FGNUZpMG9hbnZXTFJw?=
 =?utf-8?B?RzJwSWJDbmxPTzQ2MW5BeVBJaCsvZHdDTDJOdHZTZlptcjJza3BsUHZLcHFq?=
 =?utf-8?B?NkpaSzBnVTdDeDlUeTVMOGwwM1U2TzFVTE84UE1SdVlyL0NVdjhZVmFHbHpJ?=
 =?utf-8?B?dEVOakZURkdxRHNnb1V0cm12eTgvT25XK3Q3WXI3LzNTbHRldmRFL0JJNUVI?=
 =?utf-8?B?MnYvMUZNTTcrRGM1MTVyV1FnMFpHVE8vL04zRndyQ25tWmJweWQxbVo3YWVH?=
 =?utf-8?B?SXMrV0xleURwcGViNEh0ZWovN3lQWWEwdzBxckIyZEpkanRDcWJMZno5OXl4?=
 =?utf-8?B?Uk1VTWFaRVBkZzUvcUFtdUFNckRPQ3VaS0dLUnhUcndmTWhjVzEyemZNS2dq?=
 =?utf-8?B?bUtZTXNFdWF1OWFuY0R2UlkybWhVaGRHcjJKZXpJdGxlSlU5b0RQTmRNdXV2?=
 =?utf-8?B?OENLdktrb0VEM0MxVlRLZnhYaXFRL0tLd1NrU3BSTWtXRlMyNmI5RTFJS1JX?=
 =?utf-8?B?clRFVlpNVmRBd1BwME1MZ3BkNDVjdm5Wb3AwSDFxQ3FpT1ZqTlpOUXBPZWcr?=
 =?utf-8?B?RnJUMUdxZ1czLzNoRFB2VHpoYThNeVBSSmZ5YTBlbVNDTXJmc21HVithZzU0?=
 =?utf-8?B?SFRjcW9Rc1NZbHRjcVRNYk5vRTdzdFd0Y1NFMjNxb0VnTVIyNk9GNW5BRnlM?=
 =?utf-8?B?S1l5c0doQUdLSlZ1WnM4a1NTUU1ab3A3ME10SUhqSE5oSlBNcXd3dk1YT3ZM?=
 =?utf-8?B?SjE5UEhLOUI1NW8vU2Jua29Bd0tSZGt5Mm10SWx0dEpkWjU1bmVLQ3RXWGFY?=
 =?utf-8?B?NlQwNmYrQUZjbVlLeWlaOGZrK05EUWliZWduRndSRlprdU9LdlFnTDNqTTk0?=
 =?utf-8?B?RTZLOFpJZWRJN2UvNHpkUEVIUXFyQVJoYzVQVFhLKzNjT0s5c1dxTW4zTURi?=
 =?utf-8?B?dUovOUZJUE1aaEhzN1Y5ZFpZRkM0RDgyTDV4SUllTitPRGNtdmZvbm8rcGFK?=
 =?utf-8?B?RlI2WUNrU0pGQlpCclJpbE15a2FER1hsYW4vWVgxOWZzQkhCUXRpRTNkWXVT?=
 =?utf-8?B?SUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D14E3B1F1D25E34F91301F173B421731@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1a5980e-5374-4d39-09c2-08ddaf2218ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2025 11:11:53.4040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y+hR8frfKERDdPjR2Htun1xwSqeeNfrnTtQKqC624Q4Q+FS1f6b541oJLUw8lBR+PhOAlNSqLdmK4PSsHFXr3IWQY47h8oavluJWLTNrxDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF0D72A1BA6
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

T24gVGh1LCAyMDI1LTA2LTE5IGF0IDEzOjQ4ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAxOSBKdW4gMjAyNSwgTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNv
bT4gd3JvdGU6DQo+ID4gQ3JlYXRlIGEgbmV3IHVub3JkZXJlZCB3b3JrcXVldWUgdG8gYmUgdXNl
ZCBieSB0aGUgZGlzcGxheSBjb2RlDQo+ID4gaW5zdGVhZCBvZiByZWx5aW5nIG9uIHRoZSBpOTE1
IG9uZS4gIFRoZW4gbW92ZSBhbGwgdGhlIHVub3JkZXJlZCB3b3Jrcw0KPiA+IHVzZWQgaW4gdGhl
IGRpc3BsYXkgY29kZSB0byB1c2UgdGhpcyBuZXcgcXVldWUuDQo+ID4gDQo+ID4gU2luY2UgdGhp
cyBpcyBhbiB1bm9yZGVyZWQgd29ya3F1ZXVlLCBieSBkZWZpbml0aW9uIHRoZXJlIGNhbid0IGJl
IGFueQ0KPiA+IG9yZGVyIGRlcGVuZGVuY3kgd2l0aCBub24tZGlzcGxheSB3b3Jrcywgc28gbm8g
ZXh0cmEgY2FyZSBpcyBuZWVkZWQNCj4gPiBpbiByZWdhcmQgdG8gdGhhdC4NCj4gPiANCj4gPiBU
aGlzIGlzIHBhcnQgb2YgdGhlIGVmZm9ydCB0byBpc29sYXRlIHRoZSBkaXNwbGF5IGNvZGUgZnJv
bSBpOTE1Lg0KPiANCj4gT3ZlcmFsbCBsb29rcyBnb29kLCBidXQgSSB0aGluayB5b3UgbWlzc2Vk
IHR3byB1c2VzIG9mDQo+IGk5MTUtPnVub3JkZXJlZF93cSwgb25lIGluIGludGVsX2RtY193bC5j
IGFuZCBvbmUgaW4gaW50ZWxfZW5jb2Rlci5jLg0KDQpIdWgsIGhvdyBkaWQgSSBtaXNzIHRoZW0/
IEkgbmVlZCB0byBob25lIG15IGdyZXBwaW5nIGNhcGFiaWxpdGllcy4uLg0KDQpWMiBjb21pbmcg
aW4gYSBzZWMhDQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K

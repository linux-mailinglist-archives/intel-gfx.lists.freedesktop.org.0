Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FDFAB12FE
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 14:07:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D40B10E126;
	Fri,  9 May 2025 12:07:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KX0qbMps";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4DBA10E111;
 Fri,  9 May 2025 12:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746792467; x=1778328467;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dTm/ghdS33xl8GPzH7bLH9N/3cOeSUIJ6WCrFFjWkPE=;
 b=KX0qbMpscTaZkdwmkhofhrsNoldONJQGoPpFGmuIQ7FrNYV6qvfzMMk/
 VN6D3eaHeud3iJQesGmWBJdnPO/xhADcBZ/3PHdo644Ci1BBGYdJZcUG6
 klbY7CKG9WSoCsYLpUbyeL/BOEW/Ux9LzvdUH/55lQb/wJKTp/VflJuHK
 JcZZSqrigkWBU9r0/0DzS3GV3XQZkJiI0091tulxtyNcbcOfw07worjDS
 CrH+LmtYPehbZwMjZjNK3aufutbidKyeHE9rQPQrxgVeBQ8xBhzOuJctt
 3K9th6h/H8i9S5ILK+8biW4J3noYRkuZvPO1+QoePuh32j2072M77nIf3 w==;
X-CSE-ConnectionGUID: yNSViEBdTsK5LVK2Z6c8VQ==
X-CSE-MsgGUID: t0dm0jWeQo610eTTA+/U9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="59246759"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="59246759"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 05:05:02 -0700
X-CSE-ConnectionGUID: 7LIfQZ1+QViLvU6HVh0vKw==
X-CSE-MsgGUID: 3bwhRE7PQZOYEbUYl/Q50Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136309398"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 05:05:00 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 05:04:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 05:04:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 05:04:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KlYjeW0X2qmGKZEenBj7quMWt8eA29GB6oqPTydaUO5TulIQxAALOP6pUc17zEoupcbRyBq2/uiV1DyBQWgM+ueLSqJ+hRBsqzZcKSUcyDiRwIm+thJJQYDkXzuZ6BFyhn6P4f3kjKWqxfQVBqZHUBq3LmtliRROvgt/fKVWDr7i6kfZbCSpJwWA64Nr1UcdFxpAiLAa8BZ8qM1e4zDud9aToJWdQHb27dqRCAgD9TAlxKM6re8RuzigpwnzgBJn21GgS3x3/zSFlMgnTUe0ZD8LznTqeERvaLF9/dNyaZxpO3qMDL234TB1jf3D9IRhgYtqyeV9yL0+SRyTKakIzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTm/ghdS33xl8GPzH7bLH9N/3cOeSUIJ6WCrFFjWkPE=;
 b=YcyG9Ctf64Hn6ybmNEuVWDVAl/HtCw84qLeTxzMuiVtM9WK6jYD26pVWgOCBWGvAyCJQB1SVNsJnYgxGbh0QmRtH+HVROxG8XVmzvGZAGxx3LoUPXSkevohNAr1YucS7ZDN8ajWbPFWqMtToBE1RteDxKRdp3d8p4bMXcOd8XOU2Y3d9n41MrnGfFrVca3cMPPsyIrk4r+tFnUAs764+yH/e1HqdWkvnrUfPT2e2wg5gRUYgIXGZE4G7UI23626t9fn4y3GWFj3mPGlsQa31IDOV7F5Lt4cQxi/kw0Yr/yu3/fj9UaWKAZU+AlhxhLow2b7Ey/08a5yB0lhGvKroTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.24; Fri, 9 May 2025 12:04:16 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 12:04:16 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH v3 1/2] drm/i915/alpm: Make intel_alpm_enable_sink
 available for PSR
Thread-Topic: [PATCH v3 1/2] drm/i915/alpm: Make intel_alpm_enable_sink
 available for PSR
Thread-Index: AQHbwCPpK7wPbiSB702pI598Ei+1tLPKHgUAgAAWqIA=
Date: Fri, 9 May 2025 12:04:15 +0000
Message-ID: <8609941e8cc1882e626708a8df82240a35b49088.camel@intel.com>
References: <20250508141701.3878486-1-jouni.hogander@intel.com>
 <20250508141701.3878486-2-jouni.hogander@intel.com>
 <87tt5ujc8z.fsf@intel.com>
In-Reply-To: <87tt5ujc8z.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7484:EE_
x-ms-office365-filtering-correlation-id: 63ecefb8-479a-4ecc-24b8-08dd8ef19ec8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WWZNeEpQT1dPbWorYWVqVUVNMTlLUW9jcWtSOEg5QUJyeVA3SEZrQlQxakZF?=
 =?utf-8?B?ZnRZSXRkbFdJOFpQUnJuRVBML2JmaUNuZmhja3NlbkFlWFVFUEsxczRxb3hw?=
 =?utf-8?B?a2VFMVQrbFBrVWZWR3hsNjVOK0J0NE5SWWIxWHdXVktwM2w5RjlaMUVIRVhw?=
 =?utf-8?B?RVVQc2UvalBzQlRoSVRoVzk5TXZtTG9wUjBWeWd4dGk3eGJSQldjNnhiaUc4?=
 =?utf-8?B?WXowZmNFRk9zT2wrbUc4dkQzbzB6NDlKMFE4SHZwUmR1clZXekJDSUZXV3pC?=
 =?utf-8?B?M2VjRGhEM25kNjJIZGhnR09SOXp0dFdpWEx4MW5oQkkvNHErMlE1LzZlWGZX?=
 =?utf-8?B?bE9oRURNZVRjQXB1NmttOFZ0eWlPVnRWT0VDazFGbVYwblpaZS9CaElEOUkz?=
 =?utf-8?B?bGVXa1pKWGI2RU5MblkwaWZTUkNUZlRybWVsRE9hQS9wczkrVk54S0xsZ3or?=
 =?utf-8?B?eDd6T2ZUTXJ0UVcrQTY1bm9kd2VlcWNMQ01vRkVSa1huVVd2amRMMWgxWEpH?=
 =?utf-8?B?V25wVEFzWTdDS0tRN0FwQ3hSRzZ4TXVKbjBVQVg1ZWFuMmcyWExManFPOGFP?=
 =?utf-8?B?TGhzbzlPVXkzZEdRQk85VkNjOWJyZFY1T3RKekloTk1RRURGT2RSZVBaZGlV?=
 =?utf-8?B?NGxzbW5LTkVpNXZXc2crNmp5TVN6NkRBNEZueFZwazRQZ2U3NXdUajdmVEdy?=
 =?utf-8?B?STBoVGdNQld3QlZBdVNaMmNJT1Y1R29sc2FBSTFOQXluNUcyenM5WEJiVGpp?=
 =?utf-8?B?d09xV3RCdVpRR3UzSjZCVDJFbVlLVGlkejV1UTNKNStVOXdMZ0tTYXhXWURY?=
 =?utf-8?B?d1lDS0hWM1ErNFRiNkoyVnN5clFDUGsrS3IrMTIvTUpSa2ZsYmVWcE9PTlIw?=
 =?utf-8?B?RTQvOVhqSEVsdXVCWVNGbjFRSmdiQzIvRVFIRFd4WHkzRXN2bzV4TEM2Qkl4?=
 =?utf-8?B?dFRxL1ZEV09Ia0RkYTdMOHBLQ1A1WUI0blVaN3ZYd1FmeUlFZEp4TVpkT3NV?=
 =?utf-8?B?dEtZU0VOcGFiVmx4MjNQYWlEYjJjaVEvZnFVTXNGOHQ2ejJZc1VFdUN0amVv?=
 =?utf-8?B?WGRMeHNlNmNVTm9wT2lGRldwV3l3UEM5UFVGeEl3R0RGUkRjNnBzbWVMT3hz?=
 =?utf-8?B?NXJudzRlZ3lMN2ozZjB5NVpabnB5ZDdkeU5HRTdWM3BjQ1EyNm1BTnYxbnZw?=
 =?utf-8?B?YlMwcldXMnhZL2Y2THhHbC9kRHMvRmxVd1I5cE8xMlF6REdMY2cybDJ2eFR1?=
 =?utf-8?B?QmR2dUJvOXVNdjZsYmVKUzRwdWd4UnVXbmtBTVJlL3VIUUlUNXlYOVdDSFF6?=
 =?utf-8?B?UkxTUTBRV3EyUmtRYWRCWndtWlRhcW9QS2I0cldmdWZxc1FrOUJrbUpEbHhn?=
 =?utf-8?B?MDRjZDhlR2hYV3R3UlgwTnYrSWdnTGIveWJTN214ZENnYVJnY2xkZUdUY3lu?=
 =?utf-8?B?US92dFJJMmJmVW9aVlh4dWsrOW5RVUVpREthN0NsaHVLdjM1cHlxRzh2L002?=
 =?utf-8?B?ZUszUjN5ejBpcWlKSmZRT2h5OG9wazUwSCtvNEsxR0g1b214U1hyUjlla01z?=
 =?utf-8?B?TDhkNFptb01TZXNzRFdZU01ScG5LVjJCancxS3FuQmt1SmNOcThvbE1aR3Br?=
 =?utf-8?B?ZVVJYzJNbUwwQ1Bka0ZBeHQ1YWkrWFRwTHpTWUhjcnFCa25PUEYrS2M3ZjRO?=
 =?utf-8?B?ZDlNeXpWVjA1dEhTN1NJQ3ZPZ1Z3OTZYZ2tsSXV5OStEQ3A1WHd0UmY4b3F1?=
 =?utf-8?B?bXFQUUtXempuOE11M3dLTHBsWm8yZ0plcitzUzU1dHNJN3kzZzJod00yWHJM?=
 =?utf-8?B?VHNtSTB3di94MlY4Q2ZJSG1VSXV2NndsWkFlY1lnaGxYV3lmQXlRcS8rNHht?=
 =?utf-8?B?Ky9jc25OZ3R0N0Q3Ym5naWZMNURhS0Fxem1LRWJPbWErL3dPQVJGdTNwQnUz?=
 =?utf-8?B?RXZXbGlTb1g1S3VjeVZ4dXVGcG01RFBsclNncUI2WWM4Yml6bW5lY1cxcWVP?=
 =?utf-8?Q?tuL8IhXsL4pk/oG63mrBH+120HAOIY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eEpMdkFVdmFCZjhVQXhBZWliSGRMeVJWd1d5YmhrZWVqdWVVTVd3dy82WkQw?=
 =?utf-8?B?VkZsRUJteFBDUUhLVXJPb3hvQWhVQUdRRkdkL1p6ZDhBOU01bFpJcnhyQjFV?=
 =?utf-8?B?cHp5V1VxOXQ4K2RqRURJYnZJMmFTNVl5K1RuUjBvUjExMXYzeURWZk1kV0w0?=
 =?utf-8?B?a3RXWnhBYlN5djgvK0dwZTduUjRxM0hxL0ovN1RYRXpsaFlIMmtEclI4UHVI?=
 =?utf-8?B?VlczdVV0akx6UUZwUEpYMFYzNDZoMC96TFgxVlh0dUNnS0hoVDlPQlpvQXhL?=
 =?utf-8?B?VFdxcFhMWmF1T1ViM2dVVDdIM0pNU3dkenFOczdvZ21ZSGZpZFo4bk9neEFU?=
 =?utf-8?B?NjN3RUM4UXFxNkZWNU10S3Rqa1JjdVlLd0VheWhBRFJ4NWZMWjhpK1VxV2xS?=
 =?utf-8?B?NzB4bmN4L2NiZ0VGRmE4RHhTUTFpOVdZa1BLYVk0RVA5Wk1PY0dJNGRDUngx?=
 =?utf-8?B?b25teEt6SWhNMTBNR3IxTGpubTlkUnhGVDRXN2xHVXVyU1pzV2U1OEhhM2t6?=
 =?utf-8?B?SGpHVE5HakVMQWxQUE5GZktadkd1a1owaGxYNlpzZVlxTmRpeDNucHBxckRh?=
 =?utf-8?B?L1owTjNtWkhIL1ZOYkxSaFo2WFNraVNKRlVid3h2aHdRSEJ6OStIZ29QSkh6?=
 =?utf-8?B?QzcyWkt5bld5ajFpQVMwOTNjZUdaeEVzQUtpTjVrQWNVZzBrb3Noa3EyMFpO?=
 =?utf-8?B?dHlZbFlhWnkremh1QzFlK2t1Y05aQXM4enRZcTYvb3MwZFFrK2xBVE1qckJl?=
 =?utf-8?B?dXBEeHl6RWpXbUwyU3NHVXJpazhrVDNYM2FlVC8xRmIyMnVvUDFIazJDa1dt?=
 =?utf-8?B?WXJuUHdnRGYzYXVyWUlhQmZVOE5Ua0FYcDV6c3kwSm9RSExXZ1BLRms0WUQ0?=
 =?utf-8?B?Y1ZlRVpOWTB0SVVCYW9rZXFZVE9mem1IKy96WjN4SFlURjRDVjZURjRTZEdi?=
 =?utf-8?B?Q1R3RkNjSFZ3RkVpbmRqRmtjTUhtRTdWVVpzODY2Vkw4VjVJc0M3OVZCN0Uy?=
 =?utf-8?B?QWFyYlVuMmtCQjQ3U1VYS0lkb1VEQWdIS2wyU2swbGlIUTlBdkRoRFJtallZ?=
 =?utf-8?B?MGNPSytBS0xQRU4ySDdjZ2hMc2Y0QzBTZ1Z2K1pFazhVWTM3VEpGRWwxSENO?=
 =?utf-8?B?bytTUnRLUXdieTRJNjd2ZnQvMHlQZVN3Z21NSlh3Qmc1ajhkeEpaMjhHTG5k?=
 =?utf-8?B?NUtiQno3ZkZZNlNXRG1WdSt6Qks3ZlkxblhETWhJMkUwNmRscFFLWmZMdm9F?=
 =?utf-8?B?aEVielNIMmY0VkNBaFM3ZjBYekdNckdueTVFU1VoL0xnL0FyQVBrZ1VjcXAx?=
 =?utf-8?B?ZzR0bTlRUythTnVRYVhMcE9HbVZJbW5sU1hrZjdPYnEwejhvYjU5NUpvOGlI?=
 =?utf-8?B?NWRQSWFLZzluTDU3N1VBSE03Q24zZ2JrdkRRNEtvYlBoYmJFalRqTjFzZ1NL?=
 =?utf-8?B?QS80cTIvbmlrSEg4UFlqU2t6Y1JCU25uVm5QR1RrcUxPclZoMXc1c2o1UnVE?=
 =?utf-8?B?ZUovNGl3OFhIT0xsdUhwdHBYT0F4bFJnOVRkK3hYc1phdTZvcFFnSVpDd09M?=
 =?utf-8?B?WWhBSUZEV3VlNUxnMzJXU3N5VUhwY2dNOGgxeXpuUkd6aU5qd3hDb3JNV0oz?=
 =?utf-8?B?TU5YejRaZVZhQXlWN20wL00rVEF6endQVWZJNFg1SmVHcHdYN0ZvVVMzUXFv?=
 =?utf-8?B?N1M1emdGU1VYSFovNzhXaHpSWUtlaXJSam82dWRrT2FRL2NkbzgxOUF2Vjlj?=
 =?utf-8?B?RnB4anpGajFxaVRYKzFVTFVKTXNzd2pnYi9hV1I1YjFyK0JiaUp4QXRXYTF5?=
 =?utf-8?B?ZytTWXlZcGMxeDJjSUc3RjNFNmpZNEthYVl3OXptdndYTHorNmtZdTE5WWlz?=
 =?utf-8?B?U09aY1QrRVNtVzA4ZjNVdjBKYlluVHF2YisxQmYzYXY5Qm8vd2Y3NkJaOHYx?=
 =?utf-8?B?TWVHZ0FKQ0l6T0Frc3M1RStpZ0wvckNWT1BMblRRV1RrOEFpbHRUNkt6TEk4?=
 =?utf-8?B?Q2RESGhOYWlFQjJuY1pHNjlkKzdxaW14WndJNUpsT1h0U3ZHVXRaNzRXZEF5?=
 =?utf-8?B?V1RlVHlTcnlZTXdzRTMwY3dDTUp3bDhlNEVlYkJ6cDF0d0lFSEhBUDhlL0Qr?=
 =?utf-8?B?cTljbjVyZ21XV3RSREFiUUhreHN1NzlZVVpWMy8vTW5wMHhCbktCeUZ3NlQ1?=
 =?utf-8?B?WlcraTk2cnhRL0I2QjVCUmE4UllCdFBVL3YwdVYvNFhBUjJpUDVacjU0Wmgr?=
 =?utf-8?B?S2VqdHpkd2FyK1VYWU5kWG5pQ1dRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B1B1F91D77F3C64E80B4F73BE8F1F9D5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63ecefb8-479a-4ecc-24b8-08dd8ef19ec8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2025 12:04:15.8615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Rly6WBW/n6ia62PwAsBpFZU/AXmtNkf/dlgP8xPEM5ylluejiX36LUji6N9N758BY491gTVw9DuMete3a/NOKNz6lLxU3GqmNGj17sRLeI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7484
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

T24gRnJpLCAyMDI1LTA1LTA5IGF0IDEzOjQzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAwOCBNYXkgMjAyNSwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IFdlIHdhbnQgdG8gZW5hYmxlIHNpbmsgQUxQTSBmcm9tIFBTUiBj
b2RlLiBNYWtlDQo+ID4gaW50ZWxfYWxwbV9lbmFibGVfc2luaw0KPiA+IGF2YWlsYWJsZSBmb3Ig
UFNSLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hbHBtLmMgfCAxMSArKysrKysrKystLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmggfMKgIDIgKysNCj4gPiDCoDIgZmlsZXMgY2hhbmdl
ZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gaW5kZXggMWJmMDhiODBj
MjNmLi45NDQyNDgzMDU4ZDIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2FscG0uYw0KPiA+IEBAIC00MjYsOCArNDI2LDE1IEBAIHZvaWQgaW50ZWxfYWxw
bV9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ID4gwqAJfQ0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gLXN0YXRpYyB2b2lkIGludGVsX2FscG1f
ZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiAtCQkJCcKgwqAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSkNCj4gPiArLyoqDQo+
ID4gKyAqIGludGVsX2FscG1fZW5hYmxlX3NpbmsgLSBFbmFibGUgQUxQTSBvbiBzaW5rDQo+ID4g
KyAqIEBpbnRlbF9kcDogSW50ZWwgRFAgc3RydWN0DQo+ID4gKyAqIEBjcnRjX3N0YXRlOiBJbnRl
bCBDUlRDIHN0cnVjdA0KPiA+ICsgKg0KPiA+ICsgKiBUaGlzIGZ1bmN0aW9uIGlzIGVuYWJsaW5n
IERQQ0Qgb24gc2luayBiYXNlZCBvbiBpbmZvcm1hdGlvbg0KPiA+IGZyb20gY3J0Y19zdGF0ZS4N
Cj4gPiArICovDQo+IA0KPiBQZXJoYXBzIHN1cnByaXNpbmdseSBJJ20gbm90IGEgYmlnIGZhbiBv
ZiBrZXJuZWwtZG9jIGZvciBhbGwgdGhlDQo+IHNpbXBsZQ0KPiBsaXR0bGUgZnVuY3Rpb25zIGxp
a2UgdGhpcy4NCj4gDQo+IFRoZSBmdW5jdGlvbiBuYW1lIGFscmVhZHkgc2F5cyB3aGF0IGl0IGRv
ZXMsIHRoZSBwYXJhbWV0ZXJzIGFyZQ0KPiBzZWxmLWV4cGxhbmF0b3J5Lg0KPiANCj4gVGhlIGtl
cm5lbC1kb2MgaXMgbm90IGV2ZW4gcHVsbGVkIGludG8gdGhlIFNwaGlueCBidWlsZC4uLiBhbmQg
d2h5DQo+IHdvdWxkDQo+IGl0IGJlLCBub2JvZHkgcmVhZGluZyB0aGUga2VybmVsIGRvY3VtZW50
YXRpb24gd291bGQgYmUgaW50ZXJlc3RlZCBpbg0KPiB0aGlzIHNtYWxsIGRldGFpbC4NCj4gDQo+
IEkgbWlnaHQgYWRkIGEgc21hbGwgcmVndWxhciBjb21tZW50IGFib3V0IHdyaXRpbmcgRFBDRCBh
cyBuZWVkZWQuLi4NCj4gYnV0DQo+IG1pZ2h0IG5vdC4NCj4gDQo+IFRoZSBkb2N1bWVudGF0aW9u
IGNvbW1lbnRzIHdlIGFic29sdXRlbHkgbmVlZCBtb3JlIGFyZSB0aGUgaGlnaCBsZXZlbA0KPiBk
ZXNjcmlwdGlvbnMgYXQgdGhlIHRvcCBvZiBmaWxlcywgd2hpY2ggaXMgYSBnbGFyaW5nIG9taXNz
aW9uIGluDQo+IGludGVsX2FscG0uYyAoYW5kIG1hbnkgb3RoZXIgcGxhY2VzKS4gV2hhdCBpcyBB
TFBNLCB3aGF0IGRvZXMgaXQgZG8sDQo+IGhvdywgd2h5LCBldGMuDQo+IA0KPiBTZWUgY29tbWl0
IGIwMzFlZjVlYThiMSAoImRybS9pOTE1L21zdDogYWRkIGJlZ2lubmluZ3Mgb2YgRFAgTVNUDQo+
IGRvY3VtZW50YXRpb24iKSBvciBpbnRlbF9kcF9tc3QuYyBmb3IgdGhlIGtpbmQgb2YgY29tbWVu
dHMgSSdkIGxvdmUNCj4gdG8NCj4gaGF2ZSBtb3JlLg0KPiANCj4gSSdtIG5vdCBpbnNpc3Rpbmcg
eW91IGRvIHRoYXQgbm93LCBidXQgcGVyaGFwcyBjb25zaWRlciBkcm9wcGluZyB0aGUNCj4ga2Vy
bmVsLWRvYy4NCg0KT2ssIEkgd2lsbCBkcm9wIGl0LiBGb3Igc29tZSByZWFzb24gSSBoYWQgYW4g
aWRlYSB0aGF0IHRoZXNlDQoiaW50ZXJmYWNlIiBmdW5jdGlvbnMgc2hvdWxkIGhhdmUgZG9jcy4g
SSd2ZSBiZWVuIGp1c3QgYmxpbmRseQ0KZm9sbG93aW5nIHRoYXQgaWRlYS4gDQoNCkJSLA0KDQpK
b3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+ID4gK3Zv
aWQgaW50ZWxfYWxwbV9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+
ICsJCQnCoMKgwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0
ZSkNCj4gPiDCoHsNCj4gPiDCoAl1OCB2YWw7DQo+ID4gwqANCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+ID4gaW5kZXggZDcxMjZkNjViNjBmLi5j
OWZlMjFlM2U3MmMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2FscG0uaA0KPiA+IEBAIC0yMyw2ICsyMyw4IEBAIHZvaWQgaW50ZWxfYWxwbV9sb2JmX2Nv
bXB1dGVfY29uZmlnKHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoAkJCQnC
oMKgwqAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gPiAqY29ubl9zdGF0ZSk7DQo+ID4g
wqB2b2lkIGludGVsX2FscG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
ID4gwqAJCQnCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRl
KTsNCj4gPiArdm9pZCBpbnRlbF9hbHBtX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ID4gKwkJCcKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+
ICpjcnRjX3N0YXRlKTsNCj4gPiDCoHZvaWQgaW50ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgCQkJCSBzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0Yyk7DQo+ID4gwqB2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiA+ICpzdGF0ZSwNCj4gDQoNCg==

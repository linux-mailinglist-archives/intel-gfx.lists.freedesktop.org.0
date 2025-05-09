Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A91A6AB1DBD
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 22:08:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B16710EAD7;
	Fri,  9 May 2025 20:08:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jF8YgR8m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B22510EAD7
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 May 2025 20:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746821332; x=1778357332;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xS60ak1+Y0RfRD/NlugfBBxryDVYLF+83Jf5hnzzInA=;
 b=jF8YgR8mu/MNQeAVTSwz/9G0wjRiD8HlwlrX+vnN5JxR4TPmyDjnb/K/
 KpSo+cdG6EINlNfvGHMvHo+2DxWBHi/kjvX2Xm/+qASu1aHi+/8Hd3s4i
 83wboE3FKqOjI93vSX5+4uV/7hNsTvjk3vX8LGyVhxwQca/8iTBYkaYZ+
 iSp89IsK4Ik/qKMgELOybczO1cGR3Of3VkoGE0ipAvT3MlPSZwbnMwYcD
 jBgZvEEBOTDnpgI0u5UfBlKSgTFzrRtIF0KKFYJIIyMXBFx+t5q+TWz4b
 n005nKGJaw19SWYaMHnZNEvrD0EkNfWp+Hyr3udBwLRvL5pFicyBlCiOx Q==;
X-CSE-ConnectionGUID: RaPvkfUtSHKynlNFFm6PlA==
X-CSE-MsgGUID: V1iM9oXuTYSt021/ZGoGOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52470723"
X-IronPort-AV: E=Sophos;i="6.15,276,1739865600"; d="scan'208";a="52470723"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 13:08:49 -0700
X-CSE-ConnectionGUID: sEMhrrOGQ7q41fGqgdkV+A==
X-CSE-MsgGUID: YqQZInBlSmSzS1GwQ2i2yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,276,1739865600"; d="scan'208";a="167800088"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 13:08:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 13:08:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 13:08:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 13:08:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SYnRDr15wJaIlk1U7larArj4sPLLMop4xVVH8ObRTpt7fe9ZsNBVALjlablWXWp6tCNv4yIlEuqBGs1HEr215y4uG7AWfeuoaKMyB34ho5v/SGxfdh4uuDWwCFEO7Fs8+zyXOYfjqtOE8L1Pb9yj/aZrAt+mu2spw9fmzqXlCN5yxD4QAQMmOJXi9fNu07Ri2RBkIfc6Pu8wLCAsygr1tczNeisVi2+Y+D1AJ9CAYrs4DhXaEcUv3IrzHGW7iXiiFJOjll7b3n/TOHuXwCr1luTxhCApf1paP60cRzWFJpJ1LWwb4Nc52ravmnK1cFpykTC+ZorFTpDBFkQ8ZHhd3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xPQvYZA/L+R9nGXGORH0Gah8Im0D+fGithjhdWufdzA=;
 b=oCW14Likinw8+I/QH1g/UstsOkaNDXT6uKctnSbUeqgqz+heWOEvRdvMC7kmsLfbmScCc6iI8t1RRq+QYjrkqmPhe/dztOawUhoxP6eENPG8zB4B5jcOlztJphl44Qr+JYWir5m8SJcGMlnpbg64BH7A46dv3vdjdR1pQjcZ8lOqGpzMe5uAuNWfJHPdcupbexqwucVmiKP8RO6QuP/EfC0oGFYo0lHREBZcpLu4IIU6dXIgWHF0Y//G7gEjpnPydWpwQr+W6qGzmMMaHbFIN29QHRKgrUfC0QMNOCmuBAPgR3lAA3hAmTjPcpvY2fVri6SiKu1xdCjOYe0bM3m0Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by IA1PR11MB6492.namprd11.prod.outlook.com (2603:10b6:208:3a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Fri, 9 May
 2025 20:08:37 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%5]) with mapi id 15.20.8722.021; Fri, 9 May 2025
 20:08:36 +0000
Date: Fri, 9 May 2025 22:08:31 +0200
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH v3] drm/i915/selftest: allow larger memory allocation
Message-ID: <qgsuz3f3ji46j2sai64nxlw5fz26ph55gox5pf5he7fpztwweo@773otqxnhqki>
References: <fptevdfbclvg2lbfuys5ibffbl2baouywkutnr7vdsy5tzcqfk@mpflwlh6jxfd>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <fptevdfbclvg2lbfuys5ibffbl2baouywkutnr7vdsy5tzcqfk@mpflwlh6jxfd>
X-ClientProxiedBy: DUZPR01CA0024.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46b::11) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|IA1PR11MB6492:EE_
X-MS-Office365-Filtering-Correlation-Id: 97aec8b6-29fe-4cb0-ed0e-08dd8f35486b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SWNHajd5SGFteXhaUTVORFlyZWYwcmppMEYzM2FIdEU2UDlBRWtRaFMwZEJ3?=
 =?utf-8?B?Sy9SWXp6elJBZjZaOEdaZmZlSklscEtVdVN3Qk0zcnIvMWx5RlF1U3FkVUlO?=
 =?utf-8?B?Rk5ySlQ3Tm5tQjNocU5QQW4xaFFhazFTN3ZZOEZ4eFlCaXJteHBPck10d2hE?=
 =?utf-8?B?aDdLaFBqQjhrUDhuQjhGdUNsZVZWNEF2RDJscUx5NTA2YTJrR3dZRnJzbE12?=
 =?utf-8?B?emJvRkd1Wk8yYVBrdHJZMWZwaTAzTy9lLzk2WnFmV2UrNzdEaDhaR0gzY2Uw?=
 =?utf-8?B?d1F6ZGdNVkZxS1RaYmR5cXIzekVRS2xHRzF2b3QyYmJxUjFjQ3NDaUhvR2Er?=
 =?utf-8?B?L2lHY1hITHVkM0RiVGZEUWpHRlh1WUxwMlFGZFdVMkZ5NUFrSEJQYXdYS2Z0?=
 =?utf-8?B?RnVTZ3U5Q1pJditiMS9KYnVyd1R0cUFGRjlIOGxHbEdxQ1VOU0djUFZ6T0hJ?=
 =?utf-8?B?ZE5wOHdJUU9QQXZheldVajNIVldpejIrUTBJOW5DVi9WOURWUHlNWFNjL3dS?=
 =?utf-8?B?MFhKS3R4c3lFYWNyVEVBOFpWZ24zMlF1eFBvWHZjdlJlZDVtck02TmFydUFQ?=
 =?utf-8?B?TDErcVFzNTV0eW1iaDNOcXphRlY1Z1JCajBlcXF0dmRNNitqanJlMEpPQWNh?=
 =?utf-8?B?YmpuMGZpMER6alF3NytrSXhOZ3kzUk5oeHZRTHZoYWE0VzZ2Y3gwSUZkdHcx?=
 =?utf-8?B?SmlEejdURWlERUVRamVMZUVPNzNiZlpvd21PWjhkUTAwcHB1SFVvV3FoMGVQ?=
 =?utf-8?B?QnNsMVl5N1FTemEvU09aOG1aQ1NlM0xpdmdoNkZXZkE2cmNycjRtdlpSMlZs?=
 =?utf-8?B?a2gxY29SdC9sOHpWeXlZVzZaNjFQbkdJMjN6dG16Zno2ZDhLWndVTGZJbFNY?=
 =?utf-8?B?ZDFEUU50bldGaktqTHdnem5ockozbWJzRTdEMitlYlVNZzdFdjhtUk1KWnlH?=
 =?utf-8?B?T2ZwVWZ2U1ZhUVRVN1hOZFZVUkdQRFFKaDVFbk85WkdSNHE4eVhMdy9MV3do?=
 =?utf-8?B?S01nUExseDJsMDU5LzU1Ym03ZnQ4Sy9uaVNBWW1XSWNiZWxJZHNLVng2bXJq?=
 =?utf-8?B?VUVxWkdCUDZXTG55OEd2ODRXeXdEd2lFTFlpUFQ4ZU1FekRCZEYrVFNXeU41?=
 =?utf-8?B?NnY4RXRIYWN4ZGEwNy9vVFFJVTUyN2tMeDlkU3ZGSGk3YUt5M3dPWUlHdklw?=
 =?utf-8?B?WmY5K29Ca01vQzgvdTZ6b25qK2lKTU0xZml5RGpPTHRsY2E2SGxhN2ZZMDEz?=
 =?utf-8?B?VXRXWk5xNlZQOVVRaVRYYkVlK3VTU29KTzQ2c3ZoU3JjNG14d1F2M1lVZjZs?=
 =?utf-8?B?N2toYWpFMGY1WEZzK0FqMVZ3QUVMV3dicW9sSEdRMkVzNDRiQkk4ZnlRZGJj?=
 =?utf-8?B?MjYrY3NYaWJpdlhDMlB3bDM2NklCeXE5a0ExUnhuNmtHb2tINGZHQjhXcHJP?=
 =?utf-8?B?RFJ5ODdkNUpjdTUxUEEzS3VnZFlTYjR2SnoxaWVWd3JCTEJScTlYOWxRM1hZ?=
 =?utf-8?B?eG1qOGE3V3MrMXZyZHF5aFloMmRVTjEyMk1QdGxvWHpWOFIxdFBaTFFOemRo?=
 =?utf-8?B?cW5lVHdxWVR0VjErdy8ydTRld2tKSDNPZ0dlOWUxTWxYUDJBWUwxSE01RDBY?=
 =?utf-8?B?citQNjQvSUlleDUzZjNmdmZNRlU4Z2V4aEd6SlBZRy9iTHBIWUExRGwxRWdw?=
 =?utf-8?B?Yk1DYXRqeDhuM3J1OFNMMURwTlZINEd4UmNVdlFqU3FOaHRiVlFHZzJYNlRP?=
 =?utf-8?B?VGxDYzhPVXp1cDJydG1paW8zWjJTZFgySWFrWGJPb1gzZVg4VjFPZlNjZlFG?=
 =?utf-8?B?WlA0S3VTTmI4V2hSaDdSa2NWTEFrU3F5Y1krdjJTNVZ1NTAxcmFGT3BydTh2?=
 =?utf-8?B?RmV2OVgvRUp5cGVPdXJlRnJLKzBnZjBXT1pNRE1vT3REaFE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGJMaDlyRE9vaXQ1VytKelFqSVdKSitRRE1iSG1zUDNFUnh4Y2tVN0lIRGZr?=
 =?utf-8?B?MVZEd1RFeG9nbTgrOTBQdVkwTzBmRDdzTStIR2h1d1JYYkpld2xDTGM3bmJF?=
 =?utf-8?B?bUJvR0ROcForOTBPTnBOZkw0V1RINm4wbnNMbzlZVHpFdEIwNTI1Zm8xZGg1?=
 =?utf-8?B?R1JxWllQUmNyTC9NazVSdjQzMEI5dlJ3MDd2SDFEY2QzcDhrOEtOWjZBUVBn?=
 =?utf-8?B?YzNVRzc4STlQd2ZBTmVLeTc5anVsZnVoWktXOXl0bVdNUko0NjRGdmRpblBE?=
 =?utf-8?B?QWErSndvRkRhV3U5THZkbUF4MkxGbU5lWk9jdVducmhiVmVuZzFJTjI4WE9h?=
 =?utf-8?B?VmREZXJVbEU4RE9oMXRxVUg2NWRiTDFwK2tFTVUvNWNxYUhubGd1QmY1enZh?=
 =?utf-8?B?dHRCeUVvdmlNNDMxY0M2VUQ1eWVweVlVR3lKbG5CM2N3N3o2eG4vNlIzRFJ3?=
 =?utf-8?B?cXQzanhGRTkzNVZKYUh2c0c5Q2pDNmlxdWhwZUQvNDVhVkloeUVWS1lRUEIy?=
 =?utf-8?B?N0tUSUYzMHhDT0d6bSs4VU5kSHNHMHFMd2Q5QTZQOTRyQlJEYzM3eFJJRG03?=
 =?utf-8?B?OUJadXUyWVpNaWRCeWM1MzFJcXlQcHppRmx6MTBwRG9RbHdxVkc3M1gxWXNn?=
 =?utf-8?B?WHN2bzZiSGhFbFUxVkxXdFhYZkFKQ2JNdEFWMjMwYWxQU3R4RTJta0RObFAx?=
 =?utf-8?B?YkFHaFBGbERZYmY5OExEN1BLSHcwVEtPRCtxY3lablRxalZjak43K1lUdUFY?=
 =?utf-8?B?K1MxVkpMQkJBKzc0OXdMNXRDVlZTTUFjRzlXdnk4bnZ2UTNXM3E5cXR1UUp5?=
 =?utf-8?B?QmZOZzhEWVRXOGdaSHB0c1FzdFpHN1NZUG4yNzlkamdCdzlKRll4eitKckZN?=
 =?utf-8?B?N1RGSzllZ01Ub29JUWdvakZPOWZ0QzhkYWFkaDdKUVEvT2pTRHdFMmJNNFNr?=
 =?utf-8?B?am4raGlKcmgrSGV5SjZwL212K1crR3hRL2ZSR0xBSFg0WnlMN2tmdXA3cTdK?=
 =?utf-8?B?eVJyclB4NmRtcysybWJpYVYwajI4SGtsUGFzYjNUY3hzNlRURTJLSDZEaHVQ?=
 =?utf-8?B?ZU01TEFWbTlJTmQvb2pDbUZPN2hybFNNVGR4TkdFdGo5Q3JEK0VaQWJMOVJE?=
 =?utf-8?B?dmNiOEFMaEd3eEpEd1ovZDBjcGFOY1gyTEc3V05MVzNaeVhHMVExbWVrdWdv?=
 =?utf-8?B?dmpHZ2VzclRlSW1pSGlUVVpCcTUyNWY4d0ZnSGdBWUVZWWpnaGhuc2wxZGli?=
 =?utf-8?B?dzYrYUtjUGk3cWxmUU1DNUxUdElUc1E1R2dOeXpLQ3J5ZU52MVhEN3Z6MjY1?=
 =?utf-8?B?N0gyMG4rMmdTaU96N2JPcGpHSGlPNzhpYmlSUnBtRXh5SmY3N3Rxcm5TUFpM?=
 =?utf-8?B?S1VhMjZlcHhGZ1lpOHlCSWpZZHY2R1VmVitteHlUN3hQSkhKZ3pXMFlrUkxK?=
 =?utf-8?B?UnRlOHlyejU2UFg0UmJ0Z2dFR2tlTW9IWEk3YWJxVjgxNlk3c3p0V2VuV3Bv?=
 =?utf-8?B?bzliK3hBSFVveGJiKzUrWEt1d3MrcThuVGE0NFhmK1h6Y2V5U3BWUEE4RUpn?=
 =?utf-8?B?YWI1ckVPMUJFY3lNcDdKOFd3YzRQKzk2VWdIcis1NXhHSDNSVm1lREtjRVJV?=
 =?utf-8?B?cGJ3a2tWd21CcDdDdFhkMzdpQXo5Y1ZUd3Q4aTR1VUowd3huUFVtcmZFRzcy?=
 =?utf-8?B?WkhFMGFiKzhJMitpM3pnL1FrQzROM1hRUkcyKzdoWXFQTEtZaWFZbmZEUEJF?=
 =?utf-8?B?TlVyczJnNEU1akRhZEhqWWdROERHL1VJQUI2Mm5rT3p2WithVlJjNGNqWTRW?=
 =?utf-8?B?VG45cGt3eGlmaWVDN0VoMGpsUitvZ2U3MXZFL2tMRFZMbGpoa3dsTTFVajRt?=
 =?utf-8?B?ZmJxNG5UYW5tTE4wN0lBZy9tOVJEa0ZhYUQvdkRuZkN0V2lKU2FMcmdOMHhK?=
 =?utf-8?B?YzdNQ2FuUWlRY3YvZi9ZYjNzUFlTVGo1Y01GRkwzaDlVcWh3SHN5L2tlVnpU?=
 =?utf-8?B?elJxa3R0aXZWeWF5VzFiamtIVFhaVjNnL1VEQ2Q2a0FTYkVRb25JSDRSaStx?=
 =?utf-8?B?MTVMTVBLS2NYN0VScGc5SXFINExjNVVodUZHVnVqSEcwNlF0OVJ0cXdCaXFj?=
 =?utf-8?B?cW5MSUVMd1BNdU05VFY2aG14YkxNMlhEdW02STFmcThYdTBabDRhVGg3K0JC?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97aec8b6-29fe-4cb0-ed0e-08dd8f35486b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 20:08:36.9222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Zdj7VdnIbOP0V+iqHWARWh6woBH6AnEFnCX7ZYs27sBjqUUA3jq5pr7h1UZcyvBD/qUWfFVCsicTnufJni8+3QdceiXqBSjk2xjSJUb1w0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6492
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

Hi Mikolaj,

On 2025-05-09 at 09:57:18 GMT, Mikolaj Wasiak wrote:
> Due to changes in allocator, the size of the allocation for
> contiguous region is not rounded up to a power-of-two and
> instead allocated as is. Thus, change the part of test that
> expected the allocation to fail.
> 
> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof

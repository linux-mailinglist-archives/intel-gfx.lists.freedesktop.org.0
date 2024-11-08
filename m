Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DB49C1F0C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 15:19:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F5D410E9C8;
	Fri,  8 Nov 2024 14:19:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="knwEsZhC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FE5F10E9C8;
 Fri,  8 Nov 2024 14:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731075578; x=1762611578;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=K4E6yM64V4n0q6yOuE+IdVOhxEmMnGjhptIPUTA2zPM=;
 b=knwEsZhC7gOebu3TqSi/vW6l+jHEmJZ9Ng+Hg4/1BNVS1AHUrUFZmW5g
 K7YQ265K/VaqzxeSB067Uu58uaAMTHsabXhud+qxiBln5LaXo9N5nn5VL
 +rOHjWC1XDIjKCDrrkzP/tdoxhrCeiPicXowxL624v6F/XgYafopRvr2O
 p42Ot8Q+1aeL+l8/a0idyFBP88vQ2Q141DQZWCRF9zRHmn7m2pTr2gMSf
 4Szf8ZtvBGEhMG79LQDoyWnrgE45HTZYhpMMu7x1peSxw0O3hvTUbX/NP
 kS5j5X7oRwuFLc3cMjAXHgi4aZJmfI1dJWa/nBTrOie/Dcpl17mTtD86m w==;
X-CSE-ConnectionGUID: qEHB1Pt7TVqhyXX1Gm2wvQ==
X-CSE-MsgGUID: sJ8AGj8HS5SFiPvH2b4Zlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53521320"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53521320"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 06:19:38 -0800
X-CSE-ConnectionGUID: Pdw5UVC5Qy6lo87KrS6wlA==
X-CSE-MsgGUID: ndyC1FWtR1eEbl7vXKpXoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85967517"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2024 06:19:37 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 8 Nov 2024 06:19:36 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 8 Nov 2024 06:19:36 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 8 Nov 2024 06:19:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qlp7x7UmeHi0DidGgkxfqicJeZSKO43qvZthX+xhZosr+yj/E2Xr0K4LaQH2JaML1KoRDqTo7oapml/xvI6e0rMHKbF3ylJ170qO3a346W+BHnTAFcsBthck4hizid38rsjp+/09q/NIosSaSEInwxlWrmbkMNe8LEnMc8CSIbTW2UdYGBfZ2ewQE8U7JaizkwacTFFVlp4Y/VFW5R+/rLmUTYumM8tmeqVfNmaE9pfBaQu9KO68Oh9ArKzZx+KaLRn2dwg9+1Kzm9aGhc+p//AbQnftheejirA9yonbySiZYNcxFyDfHcTmGd2mqddXFDCsxOkSpwEkcpRckolPow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K4E6yM64V4n0q6yOuE+IdVOhxEmMnGjhptIPUTA2zPM=;
 b=BFlW1U5oOZ1EGPdnCtVrb/gO92nyS7YrrffsVHJFjzkZt45KKfm1PzZGYEZeLjhZuhLOoi1c6SjoXJWn8rbB2s6sB6a94Gupzj2kWHQctBrSi2fbBthPamjd59nkGPg8AxogtZr0VI9ofx5uNmoyTHmlXjAYrkg/oUQ11gNmtPLrMN6VcK3GSLYeWGMnc3VLaxADMLk1BWHF+iJCBAE0cfC8DGtIFM2i9s0z9nAaZyABUuFECKisjXQb1zBxikAybFCox8cR3T6Tq/cQKR9NLLupH89cUpsG5r86aF60dT7qFh0mef+9KMVVTnKqS/UTrpkxODX6jzMprboeTOUl1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6708.namprd11.prod.outlook.com (2603:10b6:510:1c7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Fri, 8 Nov
 2024 14:19:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8137.019; Fri, 8 Nov 2024
 14:19:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <076db523d9e533bc39028ba066133b190d9e4754.camel@coelho.fi>
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
 <076db523d9e533bc39028ba066133b190d9e4754.camel@coelho.fi>
Subject: Re: [PATCH v4 00/15] drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Fri, 8 Nov 2024 11:19:27 -0300
Message-ID: <173107556735.7597.6304154681047821758@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0352.namprd03.prod.outlook.com
 (2603:10b6:303:dc::27) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6708:EE_
X-MS-Office365-Filtering-Correlation-Id: 52638ef2-9a0b-4bfd-00e0-08dd00005dc4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VzZQSHJUTmR1amZBbDJEUnl6eDV3dVRNemZLOCtWb1A1UVBFalNRYkd1Ulg1?=
 =?utf-8?B?RTl1T0o2aGdhWFFxWlcwdE40TFE1bkY4NDZtbitldkw4dUpGb3RBZzBoUmJE?=
 =?utf-8?B?NlFDYWRmRE50YzVjL1JDVXFrWWJxaVBrbk0wS2xiQnNyYjk3UkJpbWxQbE1z?=
 =?utf-8?B?YlRzcWR4U0trR2JNa0ZwSUJERHlJSDZ4b2RjSU8xSENvZXNWMS9CRHh1QXZJ?=
 =?utf-8?B?TzhnZ3hxbEJFSzh3ZkI0UVlLa0RWQ2Q1c25MdmM2NXZacW10ZzlrT2dlTlJm?=
 =?utf-8?B?cVBicENiZVYrNmF4ODgydXc5ZTZoZ252bUMxaU9CbFpmbysxY2ZNMTNqSmNY?=
 =?utf-8?B?QTl1SUpYVW1WZERWc0xycWN6MDJTUXdJV2FhOUpOZGQ4dkduT04xNlNxVmVZ?=
 =?utf-8?B?czdLeE9iY0JydWVSUEJwcWpOTDZZNUxXQnVsenh2aDkwbnYyK2NvTHFERkNy?=
 =?utf-8?B?dVlETWNydm5DZ3F0aTA0VzM5M2VtckJoaEFxVms3REhKYXdZMllBc3Jwb0Ja?=
 =?utf-8?B?UWIyaDlTdmw5NWpjVGdZK1FrSnA1NG9YY3c0L2RpQTAwd1VCdDY3OXAxT1Fs?=
 =?utf-8?B?L0hMYndNdzh4YkZDeHlMT3VhYXFiZmUyTjNpTWFhdnVXbnB1ZDh0MVBQei8r?=
 =?utf-8?B?NG5NMXVwVTFTWTZuZG1sUUh3RjFndDFNQlUvMGhxZ1ozV1dFSkNSU0dDeWlW?=
 =?utf-8?B?QWIxb2lsdDkwSmlFNmhVcC9NejM1Wjl3NmR4K00wcHRvcGdMVzBINHRaTW8x?=
 =?utf-8?B?N3BOcWxRRzRuNjFsdE54V1M2dHZ3enlKVG42TUpPWkZjL0ovRlJEMFpVdCt6?=
 =?utf-8?B?SUpGcXNiNGFxaEw2TTh1T0J3eHBPbldOa2huRVJ4U250OWFHTEZ4NU5XNmVx?=
 =?utf-8?B?NzBCUnk1ZW1BTG4xY0l6Zy9WMDl1bldXbW0rcEFUSzNNaFI3OVRiUmhYTXVj?=
 =?utf-8?B?UjE4K1dDQ1d0SkxNaDhzQkZBWDQ1cm5jWkwydEhZSHB2VFRSOW5mWExNTDlL?=
 =?utf-8?B?OVhvY2VxVzFTd2xKMm4rSFdXMy9NeGhBYWx3R1hIM0RJejVmdWIxbWNDNFZh?=
 =?utf-8?B?cXZVZTNJb1lvS2RSOG5tN1BGSHFrVTZoME0yZ2lBOFhiN2xDSTFZdHRXeDcy?=
 =?utf-8?B?T3c4SlFIRk10WVNQOW0yMWFvOU5nbW9zTUJGaWhldUV6ZngwRHo4ZHY1cUMv?=
 =?utf-8?B?eDliV0FyaHV1WTVJU3UzU1hlemJyNUpxaFhvMU93am1GYVZKMmdUQzlEWXdW?=
 =?utf-8?B?ZVpGQW5ENlZuc3p4U1Nod3F0T0JENEN0Yk0wY1R0UURFRVhrL1ZRN0xtK0pC?=
 =?utf-8?B?MWhPN1NwWkNsVVNsS2V5M25RZmdCWGx6MDRxVTY3NUY5T2VRNDgwbVRVcmc0?=
 =?utf-8?B?Q3Q1aWc1dlRQOG1aM2lRMHEwVWZjemZySnM5RERqU0g4Qy9Sa3RPQnVydUht?=
 =?utf-8?B?WU90NEI0VGlNOWFmOGc3OUtoMjRqRlFuUloveG00OWh2OCtRTll5TTVXb2pX?=
 =?utf-8?B?d2NGUlBXaXZGTlpIQ0luYXhEeXNQMnNUakJmdHRudWhNL0VkQWtuVVN3c0ZV?=
 =?utf-8?B?Z0lxd1ZwazdxeGpKSE5jTEVJaVlTcEVIY0dYc0RnbHhGcDNscStERVpRWCtw?=
 =?utf-8?B?N2pFaUNpMVM3bE5TYVk2ZVRTQXhBeStxN0tnYjROTlVrbHdidnNCbTRTQldz?=
 =?utf-8?B?bkNUWFNZS2dFNXpmbkNMbEVRUWJMNHJ4aEtXU3FjZlRGdGRZSmlyWi95bUc0?=
 =?utf-8?Q?tZhj/M6Pip2o0OU0sMZNKBfMZ3CpY5IBsCI4UVC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2w0VThrNCtHTHg5cFNQYmRrTlkrR3ZMeVhtS2hEeEgwUHNaU3ZIeXdiVUR6?=
 =?utf-8?B?QVNrT3RPa1Z4YXloTUZ1WnRkZWFBQVV4ZW1jS3hqYkhKSm13Sy9RbmR3d3Y1?=
 =?utf-8?B?RG9JRmt0T2c5ZGtUVHpMNzBZVVZMWXBIbUk0WjNpZHlnTHVNdUpVT2FYNWsz?=
 =?utf-8?B?TlRMMGNic2daSXJadjNRQlFBYW9Bb0RBbmhZSlBXSlJPcVZxTCszQmlqUERZ?=
 =?utf-8?B?VllKR2R1WUVXcDZsaGJUdGROakwrblhYS3R6bkkyS25JTXRoSjNiTW90dU9D?=
 =?utf-8?B?ajdIMzNOMkdzallUZEdpQ1JqSzVENHRxZU9lNExBQ2I0bnl3bzlWMm9mSy9Y?=
 =?utf-8?B?ZnBuZ3paWDNXQTRiT2diRnNFQUJlOGpTY0dCMUpIYlJqOUp0R0QvQXhaWGQz?=
 =?utf-8?B?b1IyMmF0SDVkSDF0bU1OT2twZGhKSDRXa2dFaS9VUkEyZ3hhRUpQYzcyc2xH?=
 =?utf-8?B?ZUxKdmFxK1pBV2tTNGowcWxMZFQwRWhFNWlxbVhLcXBiNjk2WGtKRThQMG85?=
 =?utf-8?B?blJvYmg3cFFPVlExZnEzTWlIRDB1V0N6a0Raa1NWL2NjWERhMjRScEZCUWVJ?=
 =?utf-8?B?aW0rSXlpSEhFUVVNdlg1Nk5qTE13T3NjOVQ1T1o2UTJaSHFuQ1VvcTQxcERF?=
 =?utf-8?B?d3Y1aUI1TnlLZy9OK20rV04zTzlqWThncS9oVGthcm5DZWVVeUpPRjVLaFNr?=
 =?utf-8?B?RjFUcGtBMEp0WktBcSsrSW05QjdNRjczRzNuQlZoUmhYdUFiSUV2eVdRRVFX?=
 =?utf-8?B?QnA0RXN6Ymt5ZjJsSVZpV085UkhpVHBRMlpxUFlOcWllVGlKL2NJellIMGM3?=
 =?utf-8?B?UmZJQmdPbFBBWHlzTnpaWG52RGhVcEo2ZkhtKzN6aE5VTUJDSGRVbTI3Zk5l?=
 =?utf-8?B?KzQxK0orL2w4cGJpYWpNWlpjSkVlaXA5NXJHZllhU1ZWNEt5M1gyQ0xPSEhT?=
 =?utf-8?B?VWo3VGNEMFcxR0RYVmx5dGt2aDluSHRqakhiaUlaa2hZM1ZCNUZqYTRDYk94?=
 =?utf-8?B?QXhpa0JpSjVOWHhWY095Q1JnU1BEREF1V2VwclkzczdsenZTNVJ5TXA0eGdo?=
 =?utf-8?B?SVlvOHExejQ2czdvUVp6dzg2WXZqdXJqcWljWHA1R3M3NWVBbGVPRHprdkls?=
 =?utf-8?B?Z2k5TUFoSHFxL05HUTZ4K2pqT0hlbFgwZm00aVZjNVUzcE9yV1l4RFV0dFRk?=
 =?utf-8?B?OGhuM3FCZ0phckdmbDhUT0dnY2FrK1BGTVhJZGVaaWo0QzNPVWFFSVBpVk9X?=
 =?utf-8?B?S21nTE84RzVsaXM3UHVUT3l4ZHNRME9QNHI1R0xZbGZZOVNaS1ZWTHJNa3pG?=
 =?utf-8?B?LzZzTFU2bTh1UGo2Mmdyck1ZZVRncmZ0VGgxVEhDNXovZ29DQW9DbWlpOEY2?=
 =?utf-8?B?OFUrVC83MEVFclVRb1FXY09xM3Y2QTZTRjZGYmdMVit3R1JYVjFzQmtsRG0x?=
 =?utf-8?B?VkxOTUJsZlpXQzVUMEQ4ZVlrSkhDQTAra1pIdTBmanFMZGprRENONFlkSFNC?=
 =?utf-8?B?ZFBvK21WYjdPT1ZRRlZhUnc1S0tzMms2dWZKQmRSdU4zYVdmMS9lVEc0bWs1?=
 =?utf-8?B?UEdwMVN2OUs0QWcyUEdLaVRaYW1TaVFxbHl1ZVd3WUhlUHZrdFd4eCt4eGo0?=
 =?utf-8?B?U2NZOGw0NE9kWTlWakxiQjJWaFUwRE1oS0hOYzZlTjlWOW5VaExSSGZzRnBL?=
 =?utf-8?B?d2pvMFp4Kys4N0dYMGh6cWc2d0dTYldXK2pLUjZyd2hpUDVlNkM4U2V2NDYw?=
 =?utf-8?B?ZjIyN0FyeFU4Vml6bFNtVGxTQllCcmlmWXdaakRmcE5rTi9iTmY4eDRrRDlJ?=
 =?utf-8?B?akNMT2xZa01yRnNibnhmeGtXUXhOczd2QnpOZXVRaVNrKzVOZ3A0RGliVm1C?=
 =?utf-8?B?SExRVlloZEJNU1JTMElQVVNCK3dJL1BvclFBNTRHWjFucTgzVlhYQm1nZCs5?=
 =?utf-8?B?TUlkb0xxU0pyZ0RqSzBTSk9nOHc5Q0R0bXBxNm8xRjFGV1ozeTNOZmVQVWJv?=
 =?utf-8?B?VjVzUlhOTXZFbVVGSWtlOS9MeWFMWjI1NlpmK0doM2xBYmxrbVExL2V0eFpO?=
 =?utf-8?B?YmR2em41YU55YzNQUGpKZFJLNE5iNVlIUmxJKzRsVFBycDEwSmQ5NHYrRXF1?=
 =?utf-8?B?Y1N0dlFlOTd2KytFZkVBZDF2cVBIUGtkd29sQVF5d2J2cWp6VVkrR0l1NlN2?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52638ef2-9a0b-4bfd-00e0-08dd00005dc4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2024 14:19:33.1039 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0y3sCLcWZejXvYE/+QeAR3VJWnbW5xCdXaF5lubGOGmwBdRItmh0ImUcezp3L/e7PWy4GCFZqil5wvUISIKi/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6708
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

Quoting Luca Coelho (2024-11-08 11:16:03-03:00)
>On Fri, 2024-11-08 at 09:57 -0300, Gustavo Sousa wrote:
>> Using the DMC wakelock is the official recommendation for Xe3_LPD. This
>> series apply fixes to the current DMC wakelock implementation and
>> enables it by default for Xe3_LPD. The series has been tested with a PTL
>> machine.
>>=20
>> This is the v4 of the series. The only difference from v3 is that I deci=
ded to
>> drop patches related to the usage of HAS_DMC() in HAS_DMC_WAKELOCK(), as=
 they
>> might need more polishing and will be send as a separate series. I belie=
ve we
>> don't need to be blocked on those to get this series landed.
>
>Good call!
>
>It seems that the test results with this series is looking good, so
>from my point of view, v4 can be merged.
>
>Waiting for the next patchset with the HAS_DMC*() stuff. ;)
>
>And thanks for fixing all this!

Thank you for the reviews! :-)

--
Gustavo Sousa

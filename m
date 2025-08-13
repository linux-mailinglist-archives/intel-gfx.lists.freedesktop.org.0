Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A34B241B1
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 08:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5EC610E4B4;
	Wed, 13 Aug 2025 06:38:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GImFrJUb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39DCB10E4B4;
 Wed, 13 Aug 2025 06:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755067136; x=1786603136;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9VVY7lQJCxYH7mGX43yAQjldHYro4UB72DKnbeUMTO8=;
 b=GImFrJUbMu4yzdls3+z+mhvJ20Se53yn+rcyUhjULzRTgNthSNRiUNJg
 1WbKqScMhebQZRrwtewKQyJmscOyMaA4wdHMBQTNX6fhzQjcQXnRXxUEH
 jrnWCVy46XLIHMhhETxqWOMcX7/RJ6glYv4hkzzpFP+FTw2i7OHPjMN1Y
 v2GTLoIIfEM/AC7YU7x6N1/rgRSszI6otMfoVMW4bkMnON48fGsXv0uEH
 ua71UCAZSb2JCQi52WdADP3MB7tVHeksAPLGcCP3qBsEaxZxrS2Ds+kR0
 y2SOc5X2ubNuyMxwnGrCe+Le1kyZFL0kWCnFqFT9ISgzaSmTZbO6ja9He A==;
X-CSE-ConnectionGUID: ksbAx6B7TBeH1N1zXIrjyw==
X-CSE-MsgGUID: kaag+DsOSf2PmACdIqT3yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57272708"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="57272708"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 23:38:56 -0700
X-CSE-ConnectionGUID: +7sMpshaQq2gtObT1h+Wyw==
X-CSE-MsgGUID: GCuy5HMqSBSDnQ8nKHilwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="167179263"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 23:38:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 12 Aug 2025 23:38:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 12 Aug 2025 23:38:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.63)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 23:38:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G457lxSNaJ1dfiRKhThWk7BFxXTGRxG44118qqsu82e0o9N3uTKmZAwhA2qgZeHk3oBBEdeOmXNjTKCOeqRHzt0ZjlSPzR465HIA1f3DgPG1/XB/4VAYyoj59lp3hHvGGbFYHNY2wXiQddSMnS5s0q4yXcPpaBFK2q+zWUnxhjtpIqaX8AqDfgKBtF1x4tyQSC6lj9ld9DY6Om+cSiRazrYk8Q2zLpyTsf0M7UmAmDqQcDuEFrysQ3/qH0rVtRZFhOZ28DXoqT0bW/XaOTAaejsaC5bUYFFGTYLiutejj3dVAUzHgmT4A7qC4yKkQcTYCUiuPGycATKDBx0zn5+cuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MsiOFYZXFmhE4WaCOMQtwtqQURwx5yzt2T4XC9kxRiE=;
 b=uR8UiLpauNizFDmFtlVs44GTnFAPh8xfW2z5CGFVVWf1iwvoENV4jjPg143DD3UaoyLBaF02KRvGJlr0svxdHTQVOWxmAyROrPzhbvkkPwbdOncXBE+RgPmekokI0eT74+pDCN4yOPtFT/b+pXWprrAo8iFA6NStNQRJvCuDAuIJneKhRZXmBPlt4WfSZQviA4DQ1q+ArJ0KxE8nv8g4/mDcemu7pbePTp0yG0Ip6iL/GNKj6X8LXXZaTpFx8FCt9Hc2EH1FmR9eYz2nl55azef9SQ4Lh1cvL3LK2HAPfundcIhxftlL1DkyN3yrplcf28OvN6LVehHFUdE0z3hvaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DS7PR11MB7737.namprd11.prod.outlook.com (2603:10b6:8:e1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Wed, 13 Aug
 2025 06:38:53 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a%7]) with mapi id 15.20.9031.012; Wed, 13 Aug 2025
 06:38:53 +0000
Message-ID: <4d00f184-d963-42c9-8cfa-b6014f224744@intel.com>
Date: Wed, 13 Aug 2025 12:08:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] drm/i915/display: Optimize panel power-on wait time
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <arun.r.murthy@intel.com>
References: <20250807082402.79018-1-dibin.moolakadan.subrahmanian@intel.com>
 <d83e4d1b8fc0fdf62805a7465511a8b63b4429d1@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <d83e4d1b8fc0fdf62805a7465511a8b63b4429d1@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0059.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::19) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DS7PR11MB7737:EE_
X-MS-Office365-Filtering-Correlation-Id: ab70d57f-da1e-4057-6b0a-08ddda3411c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SWQ1dXVqbVg5QWZUN0YwTzJVR0tpekdWNFZ5TVR5cjkwMGplcThKRnVsYUM4?=
 =?utf-8?B?WGlydTFSWFpxVE05aUZQMy9uYjloOFROcjhxZ2RReXA3UlNQNytiOXV3M01G?=
 =?utf-8?B?RXY3QTkvQjlpRFh1U3l4amFWYWtLQ2lUQU5EN1J4VzVkSGdhL0pmTHpzSlF3?=
 =?utf-8?B?UjhRREZEYW4xRzVUTmlGdE40Y3dvNEN1M2tTVWpvcTdkZGNPZkxtQjZYT2ps?=
 =?utf-8?B?bWgrd0t1ZVB4c05jUm5XY2FXOEtlZ1VWb0VDbk5UaEU4aEJhNndneEZhWTlD?=
 =?utf-8?B?TC9rajlYN2NoMU9kZm0yVjRraFJndU9CYjhjREhvNnVsb09lNTVLbHh1dDhi?=
 =?utf-8?B?ZndxVzcvMjE1ZTJ6dnlMQzBCWlBaRXE4QnZRRUxWaUthRm5WbUlseFEySVlz?=
 =?utf-8?B?SWxDWExFNzZOZHYzWUJ5VnJ4TWJDSHFvL1FhYk9Ed2ZnVzM4elFHMzlOejU1?=
 =?utf-8?B?a1RQTnR2cDd0MU4yTDhuSUVqQkpNdmw5WElYdGtCMCtUYlFJMG5TZ3JCTGl2?=
 =?utf-8?B?bGViU2xDRm1BZEY4WnAxa2ZWdVN4V2xRcGgwcURZMjNMd0ZUQUxGVFJ2OHcv?=
 =?utf-8?B?djY4V2U2Q1NnV1BkT3EzdnczVzdsU09xZ2ZFM3N1Sk0wUzZNd0NwMm44L0Fm?=
 =?utf-8?B?MmVEbjhsOXl5U1J3NWJneS9rMFp0S0ZUc3dkaFpoMFdMUjgxT2FjWDVkVDhR?=
 =?utf-8?B?NmxIdUZYRldtZllLNHFZTkxzajJiT0VWTmpOczJ1SjVsclliSWt3YWlXWmxr?=
 =?utf-8?B?eStuRkFOSjh6b2tBazRUcm5FTTRmOHZ3T1NMT0pjdUNLRXlaUHAvd2hRMGFu?=
 =?utf-8?B?TTdobE5VN1dnYUxQMi8rTzk4b3RSMXpsN0dueDNvSWlPYmtqZFFTc0MxMURm?=
 =?utf-8?B?a2JNdHZtMTJVOE5QMUM1c2t4d2RibitGNnVVMGZFL0V2OWNGelZHbmZ4cWhj?=
 =?utf-8?B?NWZZeTczRi9oUDFWSXJRWURGbU9oVFg2WmRvM2pJOW9KYTNDS3VPZUF4em5X?=
 =?utf-8?B?RGNmclArcGlCQkVEanM2aXJaYUNXdjZBUUlKSUMxYmp0OWVGVENONUxLMHNM?=
 =?utf-8?B?T3JhNHJWUkUyWXlpWVBZWithd3ZsaDZuUmxCS3RJbU5jbk56M3hSa3N5Z0pr?=
 =?utf-8?B?K0NzYXljS2N2Mkk0U1VFckthSlU0SnlhSEdKcVhHSlEyakZ0VTJxWGdmYlV3?=
 =?utf-8?B?dkwyMFVHSTZXSDVFWVZFWlV5TWxDOWNLL21zY3hWV2FCRUdSK1dmbWdPTXV6?=
 =?utf-8?B?cWVRK29SSkpJUU9ZWWppcmJwY1d6cUxrNms0THducFRRWGs1eXR5QkFKRGJ2?=
 =?utf-8?B?YS9uUFcyVVhFOUQ4b0xtcnJNclhMZExxL2czOFFGMlI2YmlRNlJEdHQwYnVv?=
 =?utf-8?B?dHlqSjBScTNDVDBRNjdvNnJ5SmI0VGZCdHF3YmdZc3BTMEEwcG1rR3dhbVRz?=
 =?utf-8?B?cGhCTmRPZ1RJMHhjNDNZMS9oSW42QW01UDF2aHlTLy83ZHNhWHh6R3dTSyt0?=
 =?utf-8?B?dWxFakxwd28wK0FzMnFwZ3JkS2IrL0lDTzlLZ24ybjArY3Y4OXBIdkJ1b29q?=
 =?utf-8?B?VER6M2RtYkN1c0RIQ25oRmNKVHRyeWtGcVJ3NG5pSkRSWnRRaFhrUC9vcmEx?=
 =?utf-8?B?WUEzZ3kzUmZIdVJ4ZXFaWWpVMFIzR3dRdXhCa0diNUJla0tDT0xuMjA4LzBt?=
 =?utf-8?B?YkdEcmI5K3lGYkRFV2M1TS90T2NzNTNsdmU5Tit4TTJBam83RHA5VU5XbTln?=
 =?utf-8?B?NUp4UndoM3VORnpUamxwUzgva3pMa0hhSzNGcWkzWVh0ZzJPY2NlTHR0UGVu?=
 =?utf-8?B?Z3JkRDE3Vm1BbUp6MEdycTJGZTI1VUNSRENWNFJGYjFLZXE5SnRLWHZDUDU0?=
 =?utf-8?B?VXNwTUljeDFFaklUT0hFNlpLK0VnbjkwQmlNVUFvcWc1d00ydHpVdkc0cmpx?=
 =?utf-8?Q?HZsZy1REo6Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUdMNXdjOWpSZW03cXhtSEhvZjJtVFFpcVpEK3RieEJLTCsrZWxIUnM0OCtT?=
 =?utf-8?B?UWhsYjlIZ1JmNGtYaHBUdEZZWFNhbnVZNzlDbEtDVTVJQ0d3dEZ6Z2VDNHFk?=
 =?utf-8?B?QWVSSjR0ZzNKSzF1cVpOYmNnOElFMEEzU3BaY3ZxNkJHNm9TK3FsODhTeUVN?=
 =?utf-8?B?bndXR1Zyc3UrdEZLRXliSExiVGV2NWxjblR2cS9QMC9qR2ZTM296dlhaN1VP?=
 =?utf-8?B?WStvNUJnTHBRL0RpZ2FsNTZDVTIzc3UyZFlabEpqSzE2d2xTT2wvTUZQR3hx?=
 =?utf-8?B?Q3NITHZjQ3ptK0dmVjk3bjUwd3UxMUI2VjdpYmE4ZUQxZVRwZDBXMElZVldt?=
 =?utf-8?B?M09MT2ZzUkRVYWtpcGRnS1ZtWkpwT2l5UTBVZllvUTErNFNYU0VTeDEwNDNK?=
 =?utf-8?B?RENicDhMRllNNXZyVDQrRDZHUmF4REJMT1dOUUhKMHEybnRJelBxS1lFU0Na?=
 =?utf-8?B?RFNzZFJrRnI1azlaVXlWaFVtZkF0RlRmaWdxajZWRm9SSWZCRlhDYlBZQ20w?=
 =?utf-8?B?b2x3eHRibCtDZUFDaFByL0twdVBWdWVYMzljOEVwdnNFMWxtRXpnMmJZRmNX?=
 =?utf-8?B?N1VHSHdId2d4dGV2ZFduY2dPWVhSamVzdW9GZWhzcjhHZVBuYis3SXh2NU5N?=
 =?utf-8?B?SE85R0FYby82dWoza2xiZ0ZWNjU4dlpRRFdxcWMrcUdTdzJpVi9QaEJhUGFt?=
 =?utf-8?B?RHFtc3hpUDdSK01OTlJGZjMwSWtPNmNCV3hCTGxDd1ZBVUVTS0krZ1cveVUw?=
 =?utf-8?B?V1o3Ui9YSEF6ZWpYNkI1N0RDMjhQM1NPS0t1eXREcFd0bllzczZvZGhhYzZw?=
 =?utf-8?B?U0ljMER4M2R3OHRhdzI3L1VTQmtjeDd3dzBqMkZQbzJQS29mdm5rVU9FZEtH?=
 =?utf-8?B?R1dXOW5TbFg1RWNnVVFOemlhdHljWGJ4QlJKbWhCWlN0OUdCLzZpZjBDTjJP?=
 =?utf-8?B?anFkRUo1b3pCTStVZ3ZnVmtrUDlvL2MxZEkwdVVXN3hzdE56Wm4rZ0JydWY5?=
 =?utf-8?B?K2NCNjNMMnlCV093VC9SVDNCSzJ0Y2dyOURQcG90MDhTMHQxUmloTnBidTdk?=
 =?utf-8?B?d0NhVHRiZ0FHcytiUGM2bHQ2VHUycWFpQmRTYnR0eEJUY0Vkc0xDNHhEbnFl?=
 =?utf-8?B?Q2VnUU5RNTFFam12K29EUEVrT2Nkb3Iyd3VzaHhlZTNlT0pSRXRRY2JGYmNT?=
 =?utf-8?B?RW5ET1dSQVRBNXBYWnRLbUVXNkRNSnhWRGh5Um52UmpjRmhsUnQybWNSVFRn?=
 =?utf-8?B?Y1JHSmdXSytCWmZDSVhGMFhOeDdXb2lUY28zQm1NdVNnVUJudU56RWlFQ1pH?=
 =?utf-8?B?TzRzRWUxU1JmeHA5MHVoaFlqeTFCci91NVNDdzFjY29xdmxUbkZEb2paV254?=
 =?utf-8?B?WmFWNVRNVGpnYm1NOEErUDFsZlh6RXFBVGdnNUN5RE9vL2RSZHRiYjk1Tjhv?=
 =?utf-8?B?NnFtTG5xRGpLMUdBZzhqTjhBVWNZN1NuYTcwSmZIRGs5eE0vcE1JYkhKcmgw?=
 =?utf-8?B?dE9PWCs4NHVuSERzRlZhckxBYjAvT3VLN0xnanlmcDl1aWh4M2N0bGw3d0JS?=
 =?utf-8?B?RVUzU0lad2lMdFVjbFdObVVMZk5kVHNBdS9UYUZNS0RoZ1NoVjNsUUpueU5L?=
 =?utf-8?B?eUcvaWRCQi92VTU5Z2Y3N2QySVgrT0REYzhlVnVJR3lyWGxod1VQN0xndU1i?=
 =?utf-8?B?WEptenVTaDdxTmVLa3Q4a3FsOXA5YS9tNHpaK09ZaDk2ZlljUzVOTVdCZ1Na?=
 =?utf-8?B?ZzlQdlFpemNPMjk2Z1hXUGUxbE5EYiswdXFTMnVkN1g5YjNpWCttUndRdXV4?=
 =?utf-8?B?RVZ1a1l0eHRxRU55Z1RYNEcvbTNNWG5WTnJzSmV1d0xMMXJQclpRdFdDUEcy?=
 =?utf-8?B?S0lyeEVubWhUaTZQSVlHUVA1dHVrM2VDWFlrTEV2WWZYSi9Kd1JQUVUwZkMy?=
 =?utf-8?B?RnZNdzg1dnZKbUgyaUhXTlNwWHFONllMcjV6OStyd0xYQVRaM2RIVENMVUp2?=
 =?utf-8?B?WTRmU3VyNHpKa0ZxWFNDdXpXSkNhVGxVT0hxN2JLd2gxMmdXSzdNdjFURkdk?=
 =?utf-8?B?OVM4RXJJSnNCU1ZvakJOeExsajNjbEJnQ2NlMWpqcGU2d3JmNDV0QXBGRklG?=
 =?utf-8?B?SDNPRW1GWVZQZXcxS1lIaVVvUzMxSktURWxTNFgyaTdsZENFZ0tCMXg3S0VT?=
 =?utf-8?Q?qToHv7JpnN+m5GGRENtVYXMhVLlv4PmFqFZbQREPSSUS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab70d57f-da1e-4057-6b0a-08ddda3411c9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 06:38:53.2182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sF0OM0JiFV0c9IB1k7G6Q1ckhSbnVeDWgffrwxVsVH2SoXnmCVI8kYOeaIoGcJJCQjjCFft5cDws9xOMZNLta5UK84LoHCiL0Kq++6h/flw9vgBOXhpI3yCcEe3bR57y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7737
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

On 12-08-2025 23:42, Jani Nikula wrote:
> On Thu, 07 Aug 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>> The current wait_panel_status() uses intel_de_wait(),
>> which internally on Xe platforms calls  xe_mmio_wait32().
>> xe_mmio_wait32() increases poll interval exponentially.
>>
>> This exponential poll interval increase causes unnessory delays
>> during resume or power-on when the panel becomes ready earlier,
>> but polling is delayed due to backoff.
>>
>> Replace intel_de_wait() with read_poll_timeout() +
>> intel_de_read() to actively poll the register at a fixed 10ms interval
>> up to a 5 second timeout. This allows poll to exit
>> early  when panel is ready.
>>
>> Changes in v2:
>> Replaced  two-phase intel_de_wait() with  read_poll_timeout()
>>   + intel_de_read()
>> Changes in v3:
>>   - Add poll_interval_ms argument  'wait_panel_status' function.
>>   - Modify 'wait_panel_status' callers with proper poll interval
>> Changes in v4:
>>   - Change 'wait_panel_off' poll interval to 10ms
>> Changes in v5:
>>   - Dropped  poll_interval_ms parameter,use fixed polling
>>     interval of 10ms (Jani Nikula)
>> Changes in v6:
>>   - Removed goto in error path
>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_pps.c | 12 +++++++++++-
>>   1 file changed, 11 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
>> index b64d0b30f5b1..b84eb43bd2d0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -4,6 +4,7 @@
>>    */
>>   
>>   #include <linux/debugfs.h>
>> +#include <linux/iopoll.h>
>>   
>>   #include <drm/drm_print.h>
>>   
>> @@ -608,6 +609,8 @@ static void wait_panel_status(struct intel_dp *intel_dp,
>>   	struct intel_display *display = to_intel_display(intel_dp);
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	i915_reg_t pp_stat_reg, pp_ctrl_reg;
>> +	int ret;
>> +	u32 val;
>>   
>>   	lockdep_assert_held(&display->pps.mutex);
>>   
>> @@ -624,13 +627,20 @@ static void wait_panel_status(struct intel_dp *intel_dp,
>>   		    intel_de_read(display, pp_stat_reg),
>>   		    intel_de_read(display, pp_ctrl_reg));
>>   
>> -	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
>> +	ret = read_poll_timeout(intel_de_read, val,
>> +				(val & mask) == value,
>> +				10 * 1000, 5000 * 1000, true,
> Otherwise looks good, but did you have some rationale for the
> sleep_before_read == true?

Yes, this is intentional — the status register is taking time in all cases.
(panel power off time- 82ms, panel power cycle- 0.074 ms,panel power on-327 ms)

> BR,
> Jani.
>
>
>> +				display, pp_stat_reg);
>> +
>> +	if (ret) {
>>   		drm_err(display->drm,
>>   			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
>>   			dig_port->base.base.base.id, dig_port->base.base.name,
>>   			pps_name(intel_dp),
>>   			intel_de_read(display, pp_stat_reg),
>>   			intel_de_read(display, pp_ctrl_reg));
>> +		return;
>> +	}
>>   
>>   	drm_dbg_kms(display->drm, "Wait complete\n");
>>   }

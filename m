Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B03C67366
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 05:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE3810E1DA;
	Tue, 18 Nov 2025 04:04:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e14Q7exu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62B3210E1DA;
 Tue, 18 Nov 2025 04:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763438656; x=1794974656;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f4zESyZV6if8Dzm53Tvg43HHk5Z6WZogSeH9sowzio0=;
 b=e14Q7exu/SZricyOR8j45rPy4bgpf6Et6cFzMvipK7SSZ0QZECDILzZC
 mYmBTQvwk8dBNwa1Zqu4zwc9GMGcCw6EcwqHEd+b+lbLLlJikIf/2t/6A
 vrpuMqzlIC8GdT+DqRlWH8RUgHUNRw1WODeAKhEcaTeJAn85GK7PwT2mx
 TmMA2IhnBjJ4M97PeeGDxqJOPSYKXeCI/8GnX+EkD8z7QhwLBg/8q3MtG
 pJ6vOfv0ijZtO8xvDcuIfs6l5/pBXj895gH1TD5kXRwquAA5a5SRlP9nI
 iFPfCmGh9/7YnC4hUbCvTZX3e+i4I6UTlOOC1ws93jJWy4I+q8BRRSu7y A==;
X-CSE-ConnectionGUID: 9MVVjourSwSXScc9h+psDQ==
X-CSE-MsgGUID: QMlmqHdhRD2IMk1qljo77Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="76804980"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="76804980"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:04:15 -0800
X-CSE-ConnectionGUID: GZon6w57T3uOAgNdzpOF1A==
X-CSE-MsgGUID: OqJKVzAuRTuR+a1pGt0JVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="190309927"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:04:14 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:04:14 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 20:04:13 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.20) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 20:04:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dqhmehyH5xql3CkLedQWlmGEpfG1PB6e+gSOs3bcemcGTDtrAdo7ElCPpVJyvwEewL+iIyqLtcuRWMZbE62uT524Z7uRr7rPvx8Y/QBtdCuUKbJADLEzJ/bKHp1+fAPISGA2eHlgJS1l7ivHm1f+FjVH4PUz7NUtMk9Zjm6l3kJ1+ERf14E90D5tiOIEtUUywnbNa2vzvE2HvQ62Fbhrm9BECmGiwhV8Cj+EGZ1Q4QUilFY4iiWdzvLeGnEZf0ZTONPxqWiVtofGCpGiFPW+bUoGB9KHCIF3QuOt/5PFJH81tEQD2j60VequNgYzpZUMu42Vf+5WCAHWDT66RWPpuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f4zESyZV6if8Dzm53Tvg43HHk5Z6WZogSeH9sowzio0=;
 b=nCdmiLSEa29OAA6SI13JxP/HwpqFHiWBdWHHwDYTUwcT4kt8AfZbP1FUP4xQ42rUCLRuq3AnBjGi1LhYzSRyXfaO9S9nvUiaurlsXrltY4vJxwBjczZGSaAL/gDHSqAIbMKrQgQ9uF4JNJRX/8bWirv7DNe7ISieJyry2SrvF9zrDNvWsD/M0CorMsBzScDfjACajHOe1oMiqG4P8QPdHQRpvWfUEyVzsnHHzBKAzBgadUnKqWyyMzpogPyvUzu9yKR04qjwp9JXitLV8mynwoWsG2X46DD77sM9DklkUhn/Tw2HAIWW9IgZl3Pc1BkOgu9AyrUIUVNeXvKvmARhog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by MW4PR11MB6787.namprd11.prod.outlook.com (2603:10b6:303:209::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Tue, 18 Nov
 2025 04:04:04 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1%5]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 04:04:03 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>, "baolu.lu@linux.intel.com"
 <baolu.lu@linux.intel.com>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: RE: REGRESSION on linux-next (next-20251106)
Thread-Topic: REGRESSION on linux-next (next-20251106)
Thread-Index: AQHcUgxxcVhkxCy/KkSOgc4hzGsZELT3sYoAgAAg3AA=
Date: Tue, 18 Nov 2025 04:04:03 +0000
Message-ID: <BN9PR11MB5276C5F6D952CFFEC7CBF0D68CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
In-Reply-To: <20251118012944.GA60885@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|MW4PR11MB6787:EE_
x-ms-office365-filtering-correlation-id: c7a1aa52-24ae-4b59-cba3-08de26578342
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?cUdqWFg0eGk5a1hKanpEVXkzL3NiUmtTRTBHb2MvTFRYR1lTbWNzdXNUKzA3?=
 =?utf-8?B?SjlWL3FvSUhPV3hIZU1Kek1KRTF6ZjRrOFhTQkp0NTJ3UDJ2OGthUkdzbkFZ?=
 =?utf-8?B?bFdvcTVTSTFKNWlyV2dzTlhEbDQvbVdmYkpCM014VmVQdUlDa3hXcGUvNkNq?=
 =?utf-8?B?RmRQVlM2OVorbjZDL2JZK3QxdmF3YzV2U2YvbU9oVTZUdjZqUkQ3V2RxbjJi?=
 =?utf-8?B?aTlXcGRHRXFTT2Z4UnppbmZ1NkZ3em8zbFpEQ29YcmJRZWFKY0g5SDFuYmR3?=
 =?utf-8?B?dXJ5OU03Qkd4TXQvMTM3aWt3Ti8xQ01tYjh3ZCt3RGZ5aU1ESWpnM1dER1Mr?=
 =?utf-8?B?MlhlbUI5anlFNmY4aExsbUpxaGpkSmhURUdISW5BM0pseHAzNk9CUEFTOE5m?=
 =?utf-8?B?aW9OYXVRRy9qTllsajdodlRXM1NISGFxd1pQUGVnUTdnSFkyeG1MTngzc0Zj?=
 =?utf-8?B?UUhIWVRZVFRaSGMyUi9ZTWZEQW5ENFI4RzkrRTZ6aG4wSVAwazQ0bXMycmlJ?=
 =?utf-8?B?RFllZ0h5bnNWUmx4K1FyY3gvUFlEQ0hsNVFJck5vWWoyNWNWckFEc01NbUFn?=
 =?utf-8?B?RFRETU9zMGZ1MzAwU1NGMjZob0hmdU5VZGtDQ0t6NS9seVFPNWJZMlFDMlpT?=
 =?utf-8?B?T0dkcHVBQ2gwYkdBSStIdW9tdlZWQ0QrZ0RyNWpUQ3I2TlM0bmQwWnFzbGVP?=
 =?utf-8?B?N21HU2laMzhXeC9mQ1Iva2JRYWRyMG90cHIzYUUwREcwWVhadGpzbTJlcFQ2?=
 =?utf-8?B?c2pLNEtrbitJRXRDV0ZOM29YLytjUzJ3R1lxMXMrTE5SR0o3S0ErSGh1YnRQ?=
 =?utf-8?B?QmRwZU9pSFE5aVkrSGwyVHExMTVxNTBhNktJRmZkR0NkQ1NxNW9YMUdFQUNE?=
 =?utf-8?B?cVg5aU5ZSVBKWkovNlUvZDlqZFlhWXNSWDA5aEk4QURMb1JaeG5oUEFjTlpL?=
 =?utf-8?B?OVFKRTBKYWIwa0FwZ2dpRmlYV1dFUXkyQUo5WVZzNjIzT3pmUWFoZnVzUnVp?=
 =?utf-8?B?RGdrblljTTNLY3hlalZhVG1IRXdYYUpVY1hJMFh1bmEzeUJXYW9uWTgrM2xV?=
 =?utf-8?B?cWpxamVKK2Z4ZDdhVXJBNXlXbEk4ZzRHS0xsZEtaVkxkMG1IUVYwYzBxbkNY?=
 =?utf-8?B?bisyZmY4ODRqVkh0VTFBb1ltallBY2c0N0FuNVVXRDI4aDdoUjF5bE95VTJp?=
 =?utf-8?B?Z01aUXNINXdxTzBGY3A4a21UUkU3TnBweDBTRExianRnbWp1WXo5dWZZWjBO?=
 =?utf-8?B?WUh4eXM5UGFobXdDL2w2WDRPcTNmQWpKQmJTbVl1d1BsMW5IbXlsQTNoUmUz?=
 =?utf-8?B?ZEFGOEFzdjRyczRBaVY3eSs0ajhXdG41UnU4VzZwTWRnRTNuTklKaG9VdThR?=
 =?utf-8?B?bWpyNU9BNUE0SkF4V1hKZ3c1VzRnd29UZDdBR01CK1VoSmthdDFGM0h2dFRF?=
 =?utf-8?B?dlhod3ZYVFRHZW10Z1hSQ3d4SitVeUR4VndDRTBSZkM1UTdUWmhnRGxEcy8r?=
 =?utf-8?B?bDJWRDdKUWJidHRTUFhZSkpuMVltV1V2cmcwdWFubUhNUEUxeWZmRVF5Zis1?=
 =?utf-8?B?S2VTTExGVzFDQVRUbzVlRFNsRzRmVnVIN3FUOGR2Z2tvRlVkOFViWjNQWDhJ?=
 =?utf-8?B?UUVubThzSXBqTFBnVTMwN3I2WGp2RUhTaUNXWXo3b0UzWTVoK05ncUtPZTRx?=
 =?utf-8?B?VmlaS2VhMDkxL0ZoUmdKUkpWZ2JCYVBzbTlBaTQ4bjFnbklTNzI5NWpFUFNX?=
 =?utf-8?B?TmQxb21WZU1IYk1SbSs2Z3d6SlRXUHJIQ0Z4LzRDTjE2SjF2RFExMU10djV6?=
 =?utf-8?B?WWhOMEc1ZGNZVjRvek5NNHFLLzR5Uk9EMko4ZWZ6YlVBUTdEV3gybXdXVWw5?=
 =?utf-8?B?QkM2YnNPNVNmTU1MYTlodzNkNmw4MklHLytneitDQy84OHpLTTdQbUpzNUtE?=
 =?utf-8?B?RTdFV2FrZDVxMXJEMTBUREFRaGtpSUEvbXRSRG03ZG9la1FIbVJtd0RiTDNi?=
 =?utf-8?B?SmdNNnhNbkl4dWlkdXB4ODcwVld0QzJIam5rZzdDWVRKdmtTRjk2NG14R0JG?=
 =?utf-8?Q?64sedC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dUxTdDlIandVRmcydWRsRHpEY3VzR1FubzVTQkJDWVFEMzFSOGx6YUtHcDZH?=
 =?utf-8?B?WVE1eHk0STE5cTR3QitKQjloUWt6L0F5b0MyQU5uVGZrWXBDRUs0TERsVmNS?=
 =?utf-8?B?SVZzQmRxanZOUVNyTGxYcWdXWEErUnRkMERoWVJsbGNURCtEdldyV0ZlT3pJ?=
 =?utf-8?B?aXVwWDNaWG8zY3pwZGRmT2M4REltREYrbStqMHlzL3NqNkNzYmtXL3A1dDh5?=
 =?utf-8?B?Z3NBN3JMQ3IvMldTYkF6YVRQU3FzU2VXK0xLYjNBRlB2Rlh6d3RDcDFjVk5t?=
 =?utf-8?B?RWtud2Y0YnlUV3B4aXZvWC9YOFQwSDMrYkhmak81VGkxa1VrS2Y1cTFUTDRP?=
 =?utf-8?B?eEpib09tbGU2bzVhV0tYaTkyMWgyZlVVK1ErZVdPblpZb0t5aHhPSlBCNVJN?=
 =?utf-8?B?OFdzczB5dFhEcGlMcEhwSEtDVHlPclBydTNUdFErM1VTZnF6bzhRTkd3Z1VM?=
 =?utf-8?B?NDV1L2N3a1MzM1FlNmVqZ2JQSzFKZUdPUTBjREhPeE93RnE3NkpKV1h6YTc5?=
 =?utf-8?B?Z0pra0h4b0hqQWZzY3lPSTUwZ3RVU285eEtrcmhScnFFQ2lwWWsrZXFxK1VT?=
 =?utf-8?B?S0tmbU5pSnJubUYrWDhSS0JuLzJRNHl5dkN3bHRpUmFYYmRWRmdEYURZby9l?=
 =?utf-8?B?OGxjTVMrWnFMMVNDeE85a1loVFI3UDlCQ0YzZzdWQUFHY21NT1Uvd3BReC81?=
 =?utf-8?B?SVVmSk80emdyTktKSDk3Y2FaN1V0d1JaZCs2cDRlUnlEM0xBQWhQRUlPVVVs?=
 =?utf-8?B?STlNa0dmbW1BOFM5UlBEbldjNEZ5amNOMGQrcldiZFNTRzdyZGR2MUJ1RE16?=
 =?utf-8?B?elVFQkVPQ1p1NFFXbnpkY3BXZ3pRL0QrQ0pXblNZVW5Qb1JnNkE2Vi9JVWxN?=
 =?utf-8?B?eVZBdUpnZXA2d1VIdys1LzMyZUFPU1VnTlhCTjFrR1Y2WldsbzVWY3ZKRkVp?=
 =?utf-8?B?QTVMY1ZMK0lvcCtvODNGSmwwdkVKMng2L1BpcmN1VEE4dzlFb05lUy93Wisr?=
 =?utf-8?B?V1JSOHJQamNvLytjRHhEMzZXd2ZFclFzaTJweENBb3VXODhYUDhNNEpoN3lX?=
 =?utf-8?B?TVluL2FqajR0UXlqRnNEWHJGR3VYN3hoWTF4Zm5SRkN3TDBGTTNyT2o5YmNl?=
 =?utf-8?B?eHZpdjJZTUVwZ050QU9VcE5La1htd3Rtb2ZtRDdqQkZhMFhzMk1ZUVR0TXZR?=
 =?utf-8?B?aUwzMVhoOGQ4VGlNcjFLeWVSQlZLSHBwTmtISkRsdDdhSldXb2tnbWI4TDFU?=
 =?utf-8?B?UHpsVUpZMk9qejFkb3Z3U0lMeUJkSWtzZFJJazBIL1dqeU8wenNIQXhzbUps?=
 =?utf-8?B?Y0pPTkp2K3JSZVhQcXVVQmVyeWNUSWxVKzNmOTJrTm5pUzI2cnMwY2tLYlVo?=
 =?utf-8?B?dExzQi93TmVvUUlRYmg1QTgyT20vcFVIOUg2THJtanNJcWR1SEVaMlJPL3pw?=
 =?utf-8?B?RkREWjJ3cHFWUzZwMzNWNFd6TzhvaFRXVzRFbTdiaUgvQ1JhcGlKTS83RHhV?=
 =?utf-8?B?VXdZNzFzdHMzMTAwa1hSQTU4NExXNndTR1FrOG1SR1hneXRsNXV3UFZXV0ZP?=
 =?utf-8?B?a212bExOczd2S0xIbHIzM1Nac0VZSHlXNGhTV28wa29SYiszWWI3azA5Wkhm?=
 =?utf-8?B?OGFxNmJ2bFk3a1FpTS9kZGowZ3dLVitLSlhCaVI4b1hYVjZlYjY4SDcvRXJ6?=
 =?utf-8?B?YU1qNlVUbVV3cGNWN1g0M1R2ZUhHVkliaHdtNUdMS0lIQ0ZSSzllYmw1bTBj?=
 =?utf-8?B?ZCswY0hjSWRWVGc2Q1Z0VXZ1TFdTU3NJMmU4SjQvalFnRlNxb3pGVThPWlcr?=
 =?utf-8?B?VE0yNE0zZmNSaXB3Q2dONHpEMXdBYTNnZVBkd1RMQjFjWDNONFlJaWp2R0t0?=
 =?utf-8?B?aUoxREFJQ1hDN1UzUUZ0RytnOWRPSE9zRFprZ3BNbXdhNmM0VmFjL3VYSC9C?=
 =?utf-8?B?aVRJQ3hCWkxwOGUvZUl5MHlQZFA5MlB5bElnWGM0MmFrSzYzY05TYWJRUHdP?=
 =?utf-8?B?OVZtSXhjR0tkNWZxWCtEcFJwTmdaMzE1eUZsL2dFaGIwZndEWDZQV2FGOHZX?=
 =?utf-8?B?V2M3WjRjdGpuakcrL2R0Z0tOVGhBUWFybVA3R3FBdkdpTTkvaHZha3lkT3h6?=
 =?utf-8?Q?q1i0+pJrgi6J0akn7CePQQ/36?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7a1aa52-24ae-4b59-cba3-08de26578342
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 04:04:03.9196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sPJ7I6U1xP18lcGrAyYkxIhNTsm16MAu1pHT0oAFsk7EzLzGmdGP7Y46ilJA6CLLR0CERX1heWeQAyHO7EtX5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6787
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

PiBGcm9tOiBKYXNvbiBHdW50aG9ycGUgPGpnZ0BudmlkaWEuY29tPg0KPiBTZW50OiBUdWVzZGF5
LCBOb3ZlbWJlciAxOCwgMjAyNSA5OjMwIEFNDQo+IA0KPiBBbHNvLCBJJ2QgbGlrZSB0byBrbm93
IGlmIHRoaXMgaXMgaGFwcGVuaW5nIDEwMCUgcmVwcm9kdWNpYmx5IG9yIG9mIGl0DQo+IGlzIGZs
YWtleS4uIEFsc28gdGhpcyBpcyA2OCBhZnRlciBib290IGFuZCByaWdodCBhdCB0aGUgZmlyc3Qg
dGVzdCwNCj4gIGFuZCBqdXN0IHRvIGNvbmZpcm0gdGhpcyBpcyA2OHMgYWZ0ZXIgYm9vdCBhbmQg
cmlnaHQgYWZ0ZXINCj4gc3RhcnRpbmcgYSB0ZXN0IHNvIGl0IGxvb2tzIGxpa2UgdGhlIHRlc3Qg
aXMganVzdCBub3Qgd29ya2luZyBhdCBhbGw/DQoNCkxvb2tzIHRoZXJlIGFyZSBvdGhlciB0ZXN0
cyBzdWNjZWVkZWQgYmVmb3JlIHRoaXMgb25lLCBlLmcuIHRoZQ0KMXN0IFNVQ0NFU1Mgd2FzIG11
Y2ggZWFybGllcjoNCg0KPDc+WyAgIDQ0Ljc5OTU3NV0gW0lHVF0gY29yZV9hdXRoOiBmaW5pc2hl
ZCBzdWJ0ZXN0IGJhc2ljLWF1dGgsIFNVQ0NFU1MNCg0KYW5kIGk5MTUgbW9kdWxlIHdhcyBsb2Fk
ZWQgbWFudWFsbHkgYXQgNDBzIGFmdGVyIGJvb3Q6DQoNCjw3PlsgICA0MC40OTI2MjFdIFtJR1Rd
IGk5MTVfbW9kdWxlX2xvYWQ6IGV4ZWN1dGluZw0KDQo+IA0KPiBJJ20gc3RpbGwgaW50ZXJlc3Rl
ZCB0byBrbm93IGlmIHRoZXJlIGlzIGFuIGlvbW11IGVycm9yIHRoYXQgaXMNCj4gc29tZWhvdyBu
b3QgZ2V0dGluZyBpbnRvIHRoZSBsb2c/DQoNCkp1c3QgcmUtY2hlY2tlZCB0aGUgY29kZToNCg0K
ZG1hcl9mYXVsdCgpIC0+IGRtYXJfZmF1bHRfZG9fb25lKCkgLT4gZG1hcl9mYXVsdF9kdW1wX3B0
ZXMoKToNCg0KICAgICAgICBwcl9pbmZvKCJEdW1wICVzIHRhYmxlIGVudHJpZXMgZm9yIElPVkEg
MHglbGx4XG4iLCBpb21tdS0+bmFtZSwgYWRkcik7DQoNCmJlZm9yZSByZWFjaGluZyB0aGF0IHBv
aW50LCB0aGVyZSBhcmUgc2V2ZXJhbCBlYXJseSBleGl0czoNCg0KLSBhZHZhbmNlZCBmYXVsdCBs
b2csIHdoaWNoIEkgZG9uJ3QgdGhpbmsgd2lsbCBoYXBwZW4gKEJhb2x1PykNCi0gcmF0ZS1saW1p
dGluZyAobm93IHdlIGRpZG4ndCBzZWUgYW55IGVycm9yKQ0KLSBpcnEtcmVtYXBwaW5nIGZhdWx0
IChnZXQgaXRzIG93biBwcmludCkNCg0KPiANCj4gRmluYWxseSwgaXQgaXMgaW50ZXJlc3Rpbmcg
dGhhdCB0aGlzIHRlc3QgcHJpbnRzIHRoaXM6DQo+IA0KPiA8NT5bICAgNjguODI0NTk4XSBpOTE1
IDAwMDA6MDA6MDIuMDogVXNpbmcgNDYtYml0IERNQSBhZGRyZXNzZXMNCj4gDQo+IFdoaWNoIGNv
bWVzIGZyb20gaGVyZToNCj4gDQo+ICAgICAgICAgaWYgKGRtYV9saW1pdCA+IERNQV9CSVRfTUFT
SygzMikgJiYgZGV2LT5pb21tdS0NCj4gPnBjaV8zMmJpdF93b3JrYXJvdW5kKSB7DQo+ICAgICAg
ICAgICAgICAgICBpb3ZhID0gYWxsb2NfaW92YV9mYXN0KGlvdmFkLCBpb3ZhX2xlbiwNCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRE1BX0JJVF9NQVNLKDMyKSA+PiBz
aGlmdCwgZmFsc2UpOw0KPiAgICAgICAgICAgICAgICAgaWYgKGlvdmEpDQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIGdvdG8gZG9uZTsNCj4gDQo+ICAgICAgICAgICAgICAgICBkZXYtPmlvbW11
LT5wY2lfMzJiaXRfd29ya2Fyb3VuZCA9IGZhbHNlOw0KPiAgICAgICAgICAgICAgICAgZGV2X25v
dGljZShkZXYsICJVc2luZyAlZC1iaXQgRE1BIGFkZHJlc3Nlc1xuIiwNCj4gYml0c19wZXIoZG1h
X2xpbWl0KSk7DQo+ICAgICAgICAgfQ0KPiANCj4gV2hpY2ggbWVhbnMgZG1hLWlvbW11IGhhcyBl
eGNlZWRlZCB0aGUgMzIgYml0IHBvb2wgYW5kIGlzIGFsbG9jYXRpbmcNCj4gaGlnaCBhZGRyZXNz
ZXMgbm93Pw0KPiANCj4gSXQgcHJpbnRzIHRoYXQgYW5kIHRoZW4gaW1tZWRpYXRlbHkgZmFpbHM/
IFNlZW1zIGxpa2UgYSBjbHVlIQ0KDQp5ZXMsIHRoYXQncyBzb21ldGhpbmcgdG8gYmUgZnVydGhl
ciBzdHVkaWVkLg0KDQpBY2NvcmRpbmcgdG8gdGhlIGxvZzoNCg0KPDc+WyAgIDQwLjk5MTA1OF0g
aTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06aTkxNV9nZ3R0X3Byb2JlX2h3IFtpOTE1XV0gR0dUVCBz
aXplID0gNDA5Nk0NCg0KSWYgdGhlIHRlc3QgZ2VtX2V4ZWNfZ3R0ZmlsbCB0cmllcyB0byBmaWxs
IHRoZSBlbnRpcmUgNEcgR0dUVCAoZGV2aWNlIE1NVSksDQppdCBtYXkgbmVlZCB0byBhbGxvY2F0
ZSA0RyBzeXN0ZW0gbWVtb3J5IGFuZCBtYXAgdGhlbSBpbnRvIElPVkEuDQpUaGVuIHRoZSBhYm92
ZSBwYXRoIGNvdWxkIGJlIHRyaWdnZXJlZC4gDQoNCnRoZSBDVCBtZXNzYWdlIGJ1ZmZlciBpcyBh
bGxvY2F0ZWQgYXQgZHJpdmVyIGluaXRpYWxpemF0aW9uIHRpbWUuIElkZWFsbHkNCnRoZSBJT1ZB
IG1hcHBpbmcgdG8gdGhhdCBidWZmZXIgc2hvdWxkbid0IGJlIGFmZmVjdGVkIGJ5IHRoZSBuZXcN
Cm1hcC91bm1hcCBjYXVzZWQgYnkgZ3R0ZmlsbCwgYnV0Li4uDQoNCj4gDQo+IElzIHRoZXJlIGEg
ZmFpbGluZyBtYXAgY2FsbCBwZXJoYXBzIGR1ZSB0byB0aGUgZHJpdmVyIHNldHRpbmcgdXAgdGhl
DQo+IHdyb25nIGlvdmEgcmFuZ2UgZm9yIHRoZSB0YWJsZT8gaW9tbXB0IGlzIHN0cmljdCBhYm91
dCBlbmZvcmNpbmcgdGhlDQo+IElPVkEgbGltaXRhdGlvbi4gQSBmYWlsaW5nIG1hcCBjYWxsIG1p
Z2h0IHByb2R1Y3QgdGhpcyBvdXRjb21lICh0aG91Z2gNCj4gSSBleHBlY3QgYSBpb21tdSBlcnJv
ciBsb2cpDQo+IA0KPiBUaGUgbWFwIHRyYWNlcyBvbmx5IGxvZyBvbiBzdWNjZXNzIHRob3VnaCwg
c28gcGxlYXNlIGFkZCBhIHByaW50IG9uDQo+IGZhaWx1cmUgdG9vLi4NCg0KLi4uIHllYWggaXQn
ZCBiZSBoZWxwZnVsIGlmIHdlIGNhbiBrbm93IGEgbW9yZSBhY2N1cmF0ZSBlcnJvciBmcm9tIHRo
ZQ0KdGVzdCBzaWRlLg0KDQphbmQgd2UgY291bGQgYWRkIHNvbWUgdHJhY2UgdG8gc2VlIHdoZXRo
ZXIgaXQncyB0aGUgMXN0IDQ4LWJpdCBJT1ZBDQpyYW5nZSBiZWluZyBhbGxvY2F0ZWQuDQoNCj4g
DQo+IDQ2IGJpdHMgaXMgbm90IHBhcnRpY3VsYXJseSBiaWcuLi4gSG1tLCBJIHdvbmRlciBpZiB3
ZSBoYXZlIHNvbWUgaXNzdWUNCj4gd2l0aCB0aGUgc2lnbi1leHRlbmQ/IGlvbW11cHQgZG9lcyB0
aGF0IHByb3Blcmx5IGFuZCBJSVJDIHRoZSBvbGQgY29kZQ0KPiBkaWQgbm90LiBXaGljaCBvZiB0
aGUgcGFnZSB0YWJsZSBmb3JtYXRzIGlzIHRoaXMgdXNpbmcgc2Vjb25kIHN0YWdlIG9yDQo+IGZp
cnN0IHN0YWdlPw0KDQpBc3N1bWUgaXQncyBmaXJzdCBzdGFnZSBmb3Iga2VybmVsIElPVkEsIGlm
IGF2YWlsYWJsZSBpbiBodw0K

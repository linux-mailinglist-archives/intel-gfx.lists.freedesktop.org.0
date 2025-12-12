Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 092CBCB932D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:52:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB3C10E8F8;
	Fri, 12 Dec 2025 15:52:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MOqgREj6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5425D10E8F8;
 Fri, 12 Dec 2025 15:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765554746; x=1797090746;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=s6s30hlwiEOTAT+rlzib9gGi83486FwpDzmVd96xnfg=;
 b=MOqgREj6UfNRVSLDj0WWLyBXEHKlDdjV8bVNZgJdhqtg5dGehNjXy4H/
 n1XT6pxcZjwNCyKZahWMkJCs3LVoWQesbeZV0oLR85xF4bFKSQ/dKrjAH
 Su78sj0BTGByq/edlPpzhbtLba0WPRbtc+RRSuiGbKCBaQ9ffZ4wBpa3r
 6Jbkv38Z4SfsEhxjM9H8WN5L+NukbFpA2n+hVdLjPV0D198jm9DH6dSOJ
 X4jEwCdNFCUFSRdpHRjshpNealgv/2hXW1u1gnlXXEZFhWsMQHE6hwuLS
 51BWzIGH0kiovg/t08oudYLtgksdbNMl4WieDGqyRDFAUpZ1ylQuECSMT Q==;
X-CSE-ConnectionGUID: Lvi6TBzrQ1WfUHwZL8qPPg==
X-CSE-MsgGUID: +EzUZ89QQ2mJB9fWh/duyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67442195"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="67442195"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:52:26 -0800
X-CSE-ConnectionGUID: r5lTMBj2SaSiVX12+CSPHw==
X-CSE-MsgGUID: VUfBBs6+TFeh13L6xak6uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="201593615"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:52:26 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:52:25 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 07:52:24 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.17) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:52:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JIvKXNbdBF/k3nlORYofap0gMT71o2GPq1xr1MJyn6OqpcnERYjRk6tT4tDWZdn2F8AQc2QtYS7vPw118XSweZ6mbsLCC97XwKJ+tS8ebQ7AkwdTOXG4R+w25Fiplzf6hAYdL9ObXEPBOc1LpJGKfUDI2r/9eZYu0gcd71wvngysDYZwJM68GMgXuloBhPszXDkkYWybk2uPvNePg13erdE1Ogy9jx0lhc+ANutWCzEtHby9Q2pWVtDT/aTdcwZEYch/JbDaosZ6I7nc9LoeUN93buo5VDE/USoesJ9mnz/IVvPNpmlgWkZ34p1oVNA2VyPzqcy9bwrkecJtkWBHOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s6s30hlwiEOTAT+rlzib9gGi83486FwpDzmVd96xnfg=;
 b=JvRI/8L1Btc9aHzpzWeq2dSAME1zg5zov2BJtiWVdsy9nexxFBPSja3Yxb9C0Fv/p0cqpgXqR21FyQshKzoNxypAd+uvq6KxikyI0+MWdGWqZpcxCYYBh73FUL7XhZy2ERI83lHqh3J6GO4JiotsqjSYXGkFK7Z23bszVCbrmzx1NzGJJA0cC2r11olV/PHkeFVtbuUdGoF3yDZfEHSP7xGj056pYuXhMvTMUSrsPQD9PUP9jh6wTAN9kcU0bI+RJIrU0QgPUSTOgOkhQan/5LK90ZdJr1Hp24M0ufLOQk+7w8JoSnwff/fJrglQrZvMeh9tuJ9zu+hUfhFYpP1sKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by LV3PR11MB8602.namprd11.prod.outlook.com (2603:10b6:408:1b3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.12; Fri, 12 Dec
 2025 15:52:22 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 15:52:22 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 18/50] drm/i915/dp: Fail state computation for invalid max
 sink compressed BPP value
Thread-Topic: [PATCH 18/50] drm/i915/dp: Fail state computation for invalid
 max sink compressed BPP value
Thread-Index: AQHcX8eiJjxOJ2Fj80eh8qvcGZJRVrUePwkA
Date: Fri, 12 Dec 2025 15:52:22 +0000
Message-ID: <c0a10faa40218d74ae873c56973aea9b691a91f6.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-19-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-19-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|LV3PR11MB8602:EE_
x-ms-office365-filtering-correlation-id: af9a8dc0-38bf-49bd-1cc0-08de39967013
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZW9Tb2xjY0lVMjF0ZzdTZ0lGT1dOMi82eU82VkE0RENwRlhzbzBoSVVFQXBu?=
 =?utf-8?B?TDZ5NnIxdHczUzkyMmZBK09Tc0ovejFQS3IvdTZlbmtkUC8yMUJQejZ3dGVw?=
 =?utf-8?B?ajlCN29PalFQYmNMc0xSRGcxbTkzWUdxZGxDdHhpT2pWM3V6U1lNS2tHeDBR?=
 =?utf-8?B?aFRKbDRMbmdoeDlPUURPY24xYU5za3U5VGdBbUtsOWJYazgrYTFTaFBzVkll?=
 =?utf-8?B?YndFRlkwT0dqWkJveEpzT2RRaGdQcysyOUMwK05WVHdpV2MzdG5rcDQ4VElr?=
 =?utf-8?B?QWFueithT1RYOFFGMmVncUI4eXkyR3FsMm5aT3FjSVg2eE5MTEVxMXFvR0NI?=
 =?utf-8?B?Z1RGaXliMlFERDNLRzdEaUNMQ2tvRkE3d01YRXJQaXVCMDUwTDdsNUwxT0ZF?=
 =?utf-8?B?b0NmQ3IxRG9GcExJUjdITnNETGUrTWhaQnhsUWxMYmNCdTVFZWhtUlhmbERk?=
 =?utf-8?B?Z2dXc3ZWajhXcW9Na05IeW9HK0p2ZGg3NWw1RVVhM1cvckhyZjZ3UWRRZ0wv?=
 =?utf-8?B?djNXM0ptcmhQR3hST2owU3dBeFdNYkJHSWZCaUJmd3p5VGpKVHdaRGh2K0VC?=
 =?utf-8?B?S1RqRmhkZzlkNHVDSVdFcGIyM1dEaGxuNTdsbU5OTFhYOTZlTExSa05wNk1X?=
 =?utf-8?B?UlBVNUhhWmwzRDhxVDBQM2NwZit4V3JDd0s3TlFVVlV1QUYzdVp5REdxUFlh?=
 =?utf-8?B?Mi9QSEwwVmk3ZHNwTHhYYlB6VDdNd3NjS0hkemRadnRZbGlxZWpPcHJzNFhk?=
 =?utf-8?B?TXlrSXhBdm9LZnRtZGNnbUJ6M3ZrOHdMN1BRT0FtTzUyZGhzZ2NKNVpCTEE5?=
 =?utf-8?B?ZmRtQ2U2V09kcVlHbnlWenl4ZnRHYStwdmlpUlBzV3htSUFWNmFxbm5ubXFH?=
 =?utf-8?B?OTR1Y2R5b2kyZWtUb1FGSW5PQjV5OURBUmpwY2EvT1NOODhmMDlOZG9zUUE1?=
 =?utf-8?B?anR1Y0o1Uy93UWduL3NJTlZFQTIrdG84UFZaenJ6ajI4YVFwNTZFWnBDL3Fk?=
 =?utf-8?B?OGRiVnNLUVN6WjlPQWUxb2N1ZGhaYzlJTGVkTTQ5clJSdUpUQngrUGlRUncz?=
 =?utf-8?B?eWloVFpqSmZOOC9heXlyTWpFMTRObDU5d0hKTmNXOUVRUFVDY242ZVRSakpo?=
 =?utf-8?B?U2Q2ZXIyMHFmTWZBQXV2VzFWRGdieDFoQVVRSTR6cjlIdkVDY3AvQ1dabkhZ?=
 =?utf-8?B?eVhES1Azdm96S2JTcjcwd05vY3BXajd3UjJ0anRaWllMVmdGRUJuQlEzRDZp?=
 =?utf-8?B?MXh6bW1ETzlRM1hIbjRSYk1NVTZ0N1R3TlJFMzVYRS95Yy9VaE1vZi9WYmZv?=
 =?utf-8?B?UWVBQU1JOG9YN0dyU1ZadXZKOEV6Sm5QemQ4Y2h5T3JRL1daek1OYTVlWklX?=
 =?utf-8?B?SE1sRXNmUHU5Y3YzS1FiWlcxR2FFUWZRbEw4S09GeEJrQ3Y3ZVJISW5MaEhK?=
 =?utf-8?B?K1NEcW00cXF3djBDVXM1Q2tHTTNYSjVneWtxOFpDeDhmaGc2Y2hneVh3TjlE?=
 =?utf-8?B?K0JsUTN1Sm5Ya3E1OWxMbGZBc1BxQ3JDRkt5aE1QMzNpaEI2d2NKZHNEWXBV?=
 =?utf-8?B?c1dJSkh3SFY2MkYzOXF3VXdrNkErbzNvZkcxL0tMQ1FGSGlIa2EwWXVkbVZu?=
 =?utf-8?B?VVc1OFIwNVNwZE0zT0E5Q1dBL2NkZXJMUUVSS3dLcVZYc2trNFdnZWk4RGE2?=
 =?utf-8?B?WGI2bmpMem85MjdETFpHNmgzOEYvRmJtWkF0LzNkWHR4c25TRG9Vdk1MSE11?=
 =?utf-8?B?Uk9wdzFSQ1RRaDIxcGpLMHpzQlpWTDZ2YVpxNzZjNkNOSGFMSUF4T0NZekhQ?=
 =?utf-8?B?WjRJMjFLSXB5NFJEZ2RRdGE1aFdiYlFRSlJvN2JsZXl1SjlqSGRjc29YVm1o?=
 =?utf-8?B?NXZwcklGS3ptWGQycHJqbllJaExnK3FUZitGb1Rwak81dGluWFBydUt3dlNJ?=
 =?utf-8?B?YmwyVFFlZVdGbjRsRk1VYm9rVzR2aW1ZaGFCakUzMGZ5SUJEUkROTFhHa2Z1?=
 =?utf-8?B?bDdZQmNHUEhyd2tNdlJacDlYaTZqQVBtSW51YzBra285YU10MXM4QWx2L0JP?=
 =?utf-8?Q?fdQArk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ckE4YW5CRXVkcnl6U2JpaUsyZHFvaXFXMVNyZ1djQUZ3c0pmZ3JLbjhsQ283?=
 =?utf-8?B?TkJxQU9RRUJYNFprMjh0dHNFbXhvS21HK1dnQnlxQ3YzQWgva0xWR0g5eHQ5?=
 =?utf-8?B?RWdmeWc2bW5DVHF3WmphTms0YlJYNjNMY1ZaeUpnVURmQm9zNkdNcERFS0dX?=
 =?utf-8?B?dVJ2ZitTb3NYaTBwR0dqdzBCc1E5VkRlbERWbk1iMldjc3drUjFnS1g3U1NP?=
 =?utf-8?B?Ykp6bFlUT0I0Nm14RXk0bEdrNTIvbmpEc21KbjczUC9YaVM4cW1WRnE3bVZT?=
 =?utf-8?B?MStqQTI0S0dlZjJmMmNTNlFTN3JjRXFpTXZ6ay8wOFpNT2FkelBUU3pwRDI0?=
 =?utf-8?B?OUFnamxlZ0xIQ3dLMnF2bVhwMmdGRm5WeHFlNnlWcDFxblNnaExRclVpc3dP?=
 =?utf-8?B?K3Fia3lHVTZPMzhuZnNERW9hL0dqZVhWQ0JObUdMNjdDcnpqNzV0cHVXWFdE?=
 =?utf-8?B?SVBuUHp5akZ5Ry83MjVNTElFcTRxdFI3eFYvODdrcWpYTkEvY0FPelc5UkVC?=
 =?utf-8?B?ZTcvK3ZsN3VMWDg3YWM4QnBIK3htTmlhOXRvQjIyVFUxa2tlRjNvTHpOZzM3?=
 =?utf-8?B?L3JvZ0NOZTdxR29Yb1pIU1J0REN5SlNCL0tGdy9iMFhaVHptWWlIUmNDSjN6?=
 =?utf-8?B?akNCMEJxdWhCRG5OT05Fb25acURWNVRjN3puZ3U0VGM0blZ1TWdyUHZ0S3Bh?=
 =?utf-8?B?djdQMGJFODhiOFU1aE53VmVHeDM4R1E2SmVzbFJaY21pSVVZWUVCazh4dzJP?=
 =?utf-8?B?RHdwS1R2ZTR6dldXaFlzbmRVVk9DQ2M3N3B3YW13aHJJM3NIVERGdFB1TTNh?=
 =?utf-8?B?RmJsYzVERXJOY1RnRkZQRm1LakRKOXU0VUtrVEdDVzZrS081bzRCNWwyQ0Zq?=
 =?utf-8?B?WmFRVzh6U2haL01CUFE3b3lDQmVtaWRoOXhFK2o4WUs0UG9PTGtMNjZtM1l6?=
 =?utf-8?B?R250QjdwVDQ5cE5LZ3h1bXhXbFlFZ29vb0dFVForZjg0cENnMVhmaFJtcyt1?=
 =?utf-8?B?N2dNYzVBOXJJR3NicVJ2REZWZWpwUnVDcTlOWGEwd2xJcHd1RmI0a3hDOFN5?=
 =?utf-8?B?cEdPSE9IUk5zazh2Nnp4SUVYNHRIMHZMSkZNbVpoZVhwd1pVNGhySDNSK21r?=
 =?utf-8?B?WEJFR2gzNys3YnkxVW9qVFUrdGtkbUwxaTBBUGNsRlJxS20xL2t4eDBwbGJ2?=
 =?utf-8?B?QlIyTm1mL2NFZ29UbHoxa2RnaUNVZlZWaFd6UlZKVnFMZ2c0Qk1wdkxvLzJk?=
 =?utf-8?B?MDQ5QmV4M3IvT0Y4bjAyNTVaWnNGZjc1T0IzcXphcFpvSDhySHdyazBrRmpT?=
 =?utf-8?B?aUJ6d1NidlhvelNKQlJ4YWNQcUE4SmRRRmNBVGt5amVKVXRiaHNGb2RqVDRL?=
 =?utf-8?B?NENoT0FWZ08rUVRDT3gyUjlrL3RnbWRWRXNRUjRZWXYzL0RhY2xERnBBYjQ4?=
 =?utf-8?B?R0Q1a0JHM1psSmpQRC82RVJtV0NjOFlPMFBPbVVwZWlLN1RNQWhBdENTL2oy?=
 =?utf-8?B?dVBSRTJxNU5heG5ZaVIzYW4rcExtckh1WGdNcWZwd0JRSEJ3N3l0N0ZHZFBK?=
 =?utf-8?B?a2JTVXMvMVdqYllrRTVvUUV3cjM3Q1VTZVhuN3lFc0x2ZDJLMUQ2QWh0RlA2?=
 =?utf-8?B?M0hqYkxMY1U2R2pBamtJVklwMmc3MUpxMHlCcWtqUks2TjV6RjNWa1lPZFJ6?=
 =?utf-8?B?ZlpoSWFBU05FeFRtV0pTSnBlT3dIN2VmZ1dHTmtWREtVdlc2Q3BINW1JdW9V?=
 =?utf-8?B?OHNycnNqL3d1cElidXNheUMwMUtSQWZnbW1IeXBaRGlBMVk2ck1KV0YvZVlT?=
 =?utf-8?B?Z3AxeGdhQVUwZ3NWVEtMSWI1bk9QYVU5VERRcWRyNU9VR1BSOXBHV1Ezdi81?=
 =?utf-8?B?TlUrSzAvVHVnWFM0UTVlMVVsMnVEbG1TeDVsOW1qYWZKS05HQVFRV29oYzI4?=
 =?utf-8?B?RjhTMTNGUno1emMrYzFPdmxZMjBsOFZXR1N1b0R2WE5zbUhoNmMvOGV6NkI1?=
 =?utf-8?B?aWJRcEF5RTZBMkc4MmRsa0lHM0Z2RUk1N1B0aFlZd0JUVE5USnhzZUVPc0t6?=
 =?utf-8?B?V2VlemJkZjdLbUdxbld2UkFIOWxoMDlEZE0rcU1pRzdTQzNVWXhYN04xeG0r?=
 =?utf-8?B?WXMvNUJaNW85MGxpa3JEMDB5K0xiRmpIdWIyenJCUkVOd1o0eUVpZWZSTzNh?=
 =?utf-8?Q?GdfqfcPOTxaiSdcukvVQr7w=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6FC25A6FF7EE1E439C4497AED2F59E46@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af9a8dc0-38bf-49bd-1cc0-08de39967013
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 15:52:22.1285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lwpX5cdmk5xgnYaDIXzkg1a+IgTLC8YULz5xkYSi96Tv2xKHOuxkqhx10ZU+n1aoEIZhFwKOOjvT7HUswbBYb3QZcE93ca8Hsce57llMRAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8602
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZXJlIGlzIG5vIHJlYXNvbiB0byBhY2NlcHQgYW4gaW52YWxpZCBtYXhpbXVtIHNpbmsgY29tcHJl
c3NlZCBCUFANCj4gdmFsdWUgKGkuZS4gMCksIGZhaWwgdGhlIHN0YXRlIGNvbXB1dGF0aW9uIGlu
IHRoaXMgY2FzZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGlu
dGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jIHwgMyArLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRp
b25zKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292
aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiBpbmRleCBmOTdlZTgyNjU4MzZhLi5kYjdlNDljMTdjYThkIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0yNjMxLDggKzI2
MzEsNyBAQCBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZ19saW5rX2JwcF9saW1pdHMoc3RydWN0DQo+
IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJCWRzY19zaW5rX21heF9icHAgPQ0KPiBpbnRlbF9k
cF9kc2Nfc2lua19tYXhfY29tcHJlc3NlZF9icHAoY29ubmVjdG9yLA0KPiDCoAkJCQkJCQkJDQo+
IAljcnRjX3N0YXRlLA0KPiDCoAkJCQkJCQkJDQo+IAlsaW1pdHMtPnBpcGUubWF4X2JwcCAvIDMp
Ow0KPiAtCQlkc2NfbWF4X2JwcCA9IGRzY19zaW5rX21heF9icHAgPw0KPiAtCQkJwqDCoMKgwqDC
oCBtaW4oZHNjX3NpbmtfbWF4X2JwcCwgZHNjX3NyY19tYXhfYnBwKQ0KPiA6IGRzY19zcmNfbWF4
X2JwcDsNCj4gKwkJZHNjX21heF9icHAgPSBtaW4oZHNjX3NpbmtfbWF4X2JwcCwNCj4gZHNjX3Ny
Y19tYXhfYnBwKTsNCj4gwqAJCWRzY19tYXhfYnBwID0gbWluKGRzY19tYXhfYnBwLCBqb2luZXJf
bWF4X2JwcCk7DQo+IMKgDQo+IMKgCQltYXhfbGlua19icHBfeDE2ID0gbWluKG1heF9saW5rX2Jw
cF94MTYsDQo+IGZ4cF9xNF9mcm9tX2ludChkc2NfbWF4X2JwcCkpOw0KDQo=

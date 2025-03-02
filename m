Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 439F2A4B402
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Mar 2025 19:19:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE48F10E19D;
	Sun,  2 Mar 2025 18:19:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y+6w4RdJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3EDC10E19D
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Mar 2025 18:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740939575; x=1772475575;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=nO0muV/azQxdqWbFpjJndNp3vwXCt2nx52MTNIpWPiA=;
 b=Y+6w4RdJi20u+GgTjjBbj/E49zee/S66k7F7EPz7zrZHSOQrxumGPMV8
 RifH9prJFC62DICqMdF2Zs22bNo3Uhmm6xakUuQQXZmDtmOuBRAgD9lyR
 fQwPw7QTuHSCushb+zJrPUSHO+SLRxXpbv8q5Tt3B0bzreAWPENZgA8nl
 Vo/eOBqs14GEy7FwcpQEAugWF0G58SnvtWJcfatHX1zcoUqdiPTGWhrOc
 yn7t9OeQOxAdEGkkcHi2c5DkyAiQPZbxVtRD2Op/19BT/JayJRgJM10c5
 x46LJRs/VQb8SJ1KqXz6UZFypaA2xwf1EvE0V+OWQt7tiQEeh/FuSEE+S Q==;
X-CSE-ConnectionGUID: a4vUcb9QT3KvFJhSumOEuw==
X-CSE-MsgGUID: tmI84LJjR3aqjdAQP4BnEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="52455621"
X-IronPort-AV: E=Sophos;i="6.13,328,1732608000"; d="scan'208";a="52455621"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 10:19:33 -0800
X-CSE-ConnectionGUID: Yu86nJAoQQeW85qSoHu7WA==
X-CSE-MsgGUID: 4Mo+4z3LTb6Ajn2paIKJsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,328,1732608000"; d="scan'208";a="118504004"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 10:19:33 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Sun, 2 Mar 2025 10:19:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 2 Mar 2025 10:19:32 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 2 Mar 2025 10:19:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lkazYS3t6srUDcNkoAkEUz5qLcTKCW3104uE4/77rXyS0LAHfvORFnjiWpsNhYg1b+noKtBic3FFYSaGrZ6+WwI6yl4uZcqqmFEWo/V0bhIyGb5dGgUrVjUAdzQaIGJYM/i1BE2HrCoMior5sK2sR3H4/EkYvUBDjv1+FEwBsU0N88jJt64tDn+7TqZrZO5l6YA+LmalcPvS1oFw7sr4um4RZskCImug6BVPZY78Kjf8UJHEskoKgN3Z2eh6eXsMHQPqxCAK5cO0ko5BtqKEYWZJHU48NVGYUtGsPmzfIoACtv7GfepZJCO64wr1FkFy7YpvIpZVxZrOtUXPW1qyvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nO0muV/azQxdqWbFpjJndNp3vwXCt2nx52MTNIpWPiA=;
 b=nEoGfnQI0CltCpzauEVnFKBzuUKSxHAkY0N0OoDKunl9/vc8Fryp3jQ29JwfltUQ8zjLUIzRZ5mD991N/bVGXh+MDTdKcBooykpcsSV2sMZOxFGNXXzZ/s40FY7Vy2UiLkxOKJJc+7caoshaF7cD0bmE6GzwvWWC9wjLhHqKDZgCl3IzMOoRirOJ510sR+QsF/6pBAM8/zzFAb7jBYLJ46dSgN2uQDOaFDHydOriOJuLZYirQ4n/66/l8wWJ5uBYi8juCWYmDLMVyNKe0/cqik+6cJX/bsHaGPfS/a9BYaaLkHTdtf559qJYlYeQxQxDayVgIIbdELigktrzVkHK/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH8PR11MB7120.namprd11.prod.outlook.com (2603:10b6:510:214::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.26; Sun, 2 Mar
 2025 18:19:03 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8489.025; Sun, 2 Mar 2025
 18:19:03 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 07/19] drm/i915: clean up pipe's ddb usage in
 intel_crtc_disable_noatomic()
Thread-Topic: [PATCH 07/19] drm/i915: clean up pipe's ddb usage in
 intel_crtc_disable_noatomic()
Thread-Index: AQHbgkrlrBuHMbbRo0yxBqe61OkFabNgOo+A
Date: Sun, 2 Mar 2025 18:19:03 +0000
Message-ID: <b160bd7640953a89731befc6d31e7830a5fe250e.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH8PR11MB7120:EE_
x-ms-office365-filtering-correlation-id: 768bce21-05f6-4b1a-47c2-08dd59b6b675
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?L2hBcUV3Lytrdm5Xd1NTMUh0Ri8rUWhjckMxU3dldE9kQjdyUklBK2hTL0do?=
 =?utf-8?B?ZEFkK2xkY09KaGc4V1R3SVREK3dqNjJiaVFHNlhqYTgxR3pJY2JvMEFiNWdO?=
 =?utf-8?B?d3FuQmE5ZGhpMlJMekczYy9yRE5GaU5leTMwTm5MVVVtQW1vTk93VjZmRXRw?=
 =?utf-8?B?R0J5dk1JQjNVMDRxYTBINVprcVIyZXJKRFFyeG5SakRLWXd2dEtRRmRpMzlJ?=
 =?utf-8?B?c3lKNC9PeVBMWFVPNUVqbDhsamZIa3Jac2lVSEZqWkpJcHhXWTZTRnVLS1h5?=
 =?utf-8?B?ajIyV1YxZDRpdUVITWNLbk91SDJUU2hweDRzVXZXNEl3Vm9kQXNPdk9qMnJB?=
 =?utf-8?B?dGJQd1FjUGFwN1hnU1FLd3VVdE1OalEzK0g4cE9WTVgyTTVJVTMrODNtL1FZ?=
 =?utf-8?B?VWZ6U3BSWmliSnVVQ0FVTG43TXd3NjZQc0FlZUpPUHZwL09kNkZyQUlBWmc5?=
 =?utf-8?B?WURtSTBMc2ticGVwdGk1NXZ6K3F5RHBjdnU0NGllWE1ub2NsSVg2R21Dajhi?=
 =?utf-8?B?SGt6SFl5QVRTSXFETnpMeXh1eTUwUTZvdXRCTTZtcXcrZVhOZU1sSy8zWnR5?=
 =?utf-8?B?Sk4yRGoreUgrVFRWTWYyZTBzQ0d4V3IyWFhHK3RXNG5zTlY5aW9nR29VTlB4?=
 =?utf-8?B?OXZQM3BFTEgwVkFERUEzajZyRE04MEZJQ1QyRzZ1MFpHMlhlOVdSYitsMGg2?=
 =?utf-8?B?WTZDVmFaMmtRcWdlQmM3QjRVcWJxUkdoTjk1Z1FGbWF1S001TXI5TnFaemxp?=
 =?utf-8?B?VHNzSUdyRXpVRWdSZERSTzgxanVGbFZ6eDBNOHM0MnNvTjNjMEU4czJHSjJi?=
 =?utf-8?B?ZE9ZUExxTk9YQXNVSTVweURqQlNzUEx4VUtrQVQ1NkNsYzZhNXB2YmVmMlgx?=
 =?utf-8?B?Y2swaThOaEZPeDdwS3BDb0NqNnRLbG1MQmJBYUMzTEg0ZUQzbklLTXlpb1Bu?=
 =?utf-8?B?YWZwUmc4M1EyTzgwbWZFcU1ZQTcwUmtoRTNGNzRMVFVVOXhVSjZEckJieEU5?=
 =?utf-8?B?Um5sNmQ0eGZvaENNeG9lVFRSVENmbXRYZGFqNVY0Sk4rcEwrU2NPZlVyTGpv?=
 =?utf-8?B?MlA5N1FKT2VaYXJFR212ZDdwY0hXd0p5TFNEbEtLemFHSlZEb1F5RkdzdnlY?=
 =?utf-8?B?eXZadUI2WTRGblFjdmphMTFPKzFJNHRISlRLeE1vY1Z6aFpxUFdFaG9ibUhU?=
 =?utf-8?B?N0FEU1FXbVNXRmRYU204cmFoSzdmbWRJU1pRc1BBYmQyeGxaZzRtRzg3Z0hp?=
 =?utf-8?B?NmxuMFF0OGdObmo5NWFwQkR3UFZQbzl6cEl1WVljZXZUVHZyWjYyeDZqb2Uy?=
 =?utf-8?B?TUh4QTV0VHJkWEUyVTNPcnp0VWxFTVQrd2RHdjVFYkV1Um9hdlhVTXNYMWM5?=
 =?utf-8?B?WDJ6VVRZRC8yRjNEK2o1SHY5UVBCTERINVFLNDJhaWp2OVdYdTNVa3pUTWJj?=
 =?utf-8?B?WWUyNVdyU3dRVUlqK0tJaHVvVUs1RW1kQUhQbnFrV1pHNy9IaXFoT3VpbGg0?=
 =?utf-8?B?T0s0TXR6ZWlOT0ppM1Z0Vzc0SGNJL0NsNlZ5MWFKY0VNbEZRMzhPamNiVlVv?=
 =?utf-8?B?QnV5WWNUMTF0blBFbDUyYjJMdDN4WlF1LzljeHY1SGlNWGZZVjcwaGltbHR4?=
 =?utf-8?B?T3k5Z0IrSHExbVd3ZmM1WWlOQ3lkM21DdUp5UFVPT04rbmNOcW5uZUYwU3RK?=
 =?utf-8?B?b1E5Z083aER1YTNTRWM1NCtaVzlTNzVMdVZZYSs5RTh2WG5QKzQrQkh4NnJE?=
 =?utf-8?B?cVNReXpoUDJMQXlZQmZGMkNxQzVqaU0zVk9YSjFxbXhLR1llblBoRGc5Nm9l?=
 =?utf-8?B?MmZZcTBVdUxTTUVqeXRxWHg4a0huMVpSNzFwdTBvYmpxd1Rra25QcFVSZDFV?=
 =?utf-8?B?eVNhNmZBVHBaS1NIdGdPRXNheW1rRFFPcnptWDBlQlBBVjk2eVVsVlAvaTQ2?=
 =?utf-8?Q?OHPLc8FzL+8rl1J4+e3NW0RRmZRb8vcY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFZ0Mm1ZT3RmRWl4bU9zb2trdkRzZmRaYlc4YnBWT2xMWUUvaWViR3RqOUFl?=
 =?utf-8?B?UmRMMm0rZXdMeEVZWFFrajlHYjVWODlqazVVZ0lKRk4rYjROSWQ0dDFoMllq?=
 =?utf-8?B?Tngxd2llYWdLaHJNUkZRSXN3U01iK2JtbE1xcVowV3N3dGsxWVBHdGJLa1VK?=
 =?utf-8?B?SEJqZ3NvZWFMeW9DdVJuNGNtdFdpTVJKMGl5R3NURFAwV1pnT1MrdmVISGV0?=
 =?utf-8?B?ZDFpajBlM3BSQzJYV3V5Y1FtbnZLQ2g4SG1rWWhpTjYyUUpXUXRvVFVzTTZE?=
 =?utf-8?B?YVFSQU5zancvUWNxTUZ3SmdFalIySnlVSUd0VS9hNkQyblpVa1lrTENUVmI5?=
 =?utf-8?B?SzFQc1o2bkMrZnRaVTQxZU5NMEpyVmI2TUVHOWhTdm51b25OQWhsbjlpZDEr?=
 =?utf-8?B?UHp1aTJobVNXTmtWZm1PT3V4YWpqaDdKaGVRcjUzcUV3S1Q1VjhUdkF3aHhN?=
 =?utf-8?B?RGxGSWh5TXptNUZQc2tjOGY5WXd1RFBQYkRhaklsc3RPTzRsdFhZcEZZSCt3?=
 =?utf-8?B?cDYrQ1NWZUlQNk5SUG5VcnZIdi9FeXVEbzZ1NFJZeEtTWm1SRkpiaDJBSEJp?=
 =?utf-8?B?dnd4V2hjUWJMUUg4TjV6R1JGWXFkZEhhUTcwZzFJVENNbFJ1R3c3YmJpNGVy?=
 =?utf-8?B?SXRBdFd2MnpDVXRGR2FudkxMaXg2VG8wbXV0MHlXRTdYanhXK3c3Rms5cTBI?=
 =?utf-8?B?QUQ3ZHpYZ3NjeVVwaDNzSHRXMFgwVHVJZTNSalVjSDBhSkJVVE16a3VDcUdi?=
 =?utf-8?B?QjFKNnAzMmt0bXZOQ2prVXFLbEdkdlg3WndRM3djNWpsMTU5NVMvQjNrZ2pB?=
 =?utf-8?B?TkZHTkl6dThQYmZmeUl6WmFReEZuNklMcXJXSnczZEw0eSs5a3RHdGE2MnZt?=
 =?utf-8?B?M3JaWWI0Z0poS1dROXkrS3Q3MU9wc21kKzJvS3dDVzJRNm4zdzhzUmJ1a0Y1?=
 =?utf-8?B?cGN5c200ektKR1l2U1pWOUNwdFp6RGk3K1BGOXcxTDJXczhNVkgvUDE3Q0Jj?=
 =?utf-8?B?SXNZVjJ2QnRVT0pta0krdXVwM0xYQVF3WDJKRDZDdVNvQ1BHZFVmNWoycjYx?=
 =?utf-8?B?RWN1aGJrSXZrT01YUFlVUmFia09RQk8wUVFpcW1JdWhsOWNBSE5YOWtEeGRj?=
 =?utf-8?B?b3RucWhac1psNjJKUmhiTzEzbGwva2lsakE0Szdsc3dLUWJnc2VJOFpCUmFk?=
 =?utf-8?B?cGI1ZFNhemxxbFg5L3hQR1hvSG9DUWF1R1VET2JsdS83ZHA3MjlrMDg0RENw?=
 =?utf-8?B?Y1JBeVBVb0RkbVphSkE0NEJUM1lmRU52MTdWVUV6a05iaTEzUUgzUm5BN05o?=
 =?utf-8?B?Ulk2d0Zya2FzRWlWNVp0eDNEVjdLV1YvQ1hFWUtxYkcrRkxJRWNxbmxHbDlD?=
 =?utf-8?B?Um9tYXpuMTFsRFlaRmhxSjJNK21tODdKbVdRTGdhTko0NnBuNXZwalQ1RU0r?=
 =?utf-8?B?OXVNZkdaVndkUVlQcFNXNkpTeTY4bEdoWnJNSFB3SzRyM3BFcEZlY2RPUjQ2?=
 =?utf-8?B?ZUdKalYrNHdpa0hLRnI3WDN3VjNWeTdYK0dNWHNkQW9Mc0lmdHJ5TjRIQ2d4?=
 =?utf-8?B?RjBOcTJkNVRtaElvSnppci9RWWwzL0tzMHJ6Y21HUzNuc1dNMXFaaUhvaVYz?=
 =?utf-8?B?NWxrME0weGJYU3lQdXRyQUU1UXJWTXhPZVlaa0tpemh1VTN5TUV2UndvdDh4?=
 =?utf-8?B?ckhNNnFuTllId0ZGbHlSeGdoRk1OMjhwLzluZklIeThtSzlMaFQyWEF5amNI?=
 =?utf-8?B?cXZhRTUzSGdlZlRFaUc2S0xvRkVRRFJiV0ZoQjUyVEg0cmQrTWgrZDhGZGdl?=
 =?utf-8?B?d3NGMTdFNnBsN1VWc3haZEZPa3Fqc1pTM0IzNWUrQnhZdFlyK2VXb2RTMzUz?=
 =?utf-8?B?bkJMY3VmckE4dGs2bi9zdGxCZy92eStYSEU5ODI0K3JvaEVIUjZwTmNIMkxp?=
 =?utf-8?B?YVJ3ckpwYWttNmRrQTRjVEVEYm1FUjVDaDErQklCd1lTa2xLMGxaKzRhMTBF?=
 =?utf-8?B?Q1A5Tmw0OWx6elYxbW55cWZGQnUxZ1lqLzlNNmpIT2ViYlk0U29ZcVJQZ1o1?=
 =?utf-8?B?ZzJ3VVZXRXltZkNsZkxKTEgxMGNUNzA3U1BEbDZqUFFJcFRneVJEUW93MTcr?=
 =?utf-8?B?T2lmUzd4cFRLZXk3OG9rc1N4c1B5ZDlzSnRKTzAwZERMbG1HZHJNTjNTWTNR?=
 =?utf-8?Q?b6yw7qUrsNPgdJ0yN7uJ3bs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A1F00F6DE25B6C45B42F8A53F244C93E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 768bce21-05f6-4b1a-47c2-08dd59b6b675
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2025 18:19:03.5960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jjC8EraJ6mlVnz0iZ32AjC97wrePEISQcPa9CEm2hnSWnQ7tR4oJhdTeJFHiYQA7M9wmOrNZDe+ZvqImAeYHlQKFd9bJq9x4g42ROWOYTwY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7120
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVXBkYXRlIHRoZSBkZGIgdHJhY2tpbmcgaW5mb3JtYXRpb24gd2hlbiB3ZSBkaXNhYmxl
IGEgcGlwZQ0KPiBkdXJpbmcgc2FuaXRpemF0aW9uLiBBdm9pZHMgbGVhdmluZyBzdGFsZSBqdW5r
IGluIHRoZSBzdGF0ZXMuDQo+IA0KPiBDdXJyZW50bHkgdGhpcyBkb2Vzbid0IGRvIGFueXRoaW5n
IGFzIHdlIGhhdmVuJ3QgcmVhZCBvdXQgdGhpcw0KPiBzdGF0ZSB5ZXQgd2hlbiB3ZSBkbyB0aGUg
c2FuaXRpemF0aW9uLCBidXQgdGhhdCB3aWxsIGNoYW5nZSBzb29uLg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
LS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMgfCA5
ICsrKysrKysrKw0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykNCg0KUmV2aWV3
ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29t
Pg0KDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
d2F0ZXJtYXJrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1h
cmsuYw0KPiBpbmRleCA0OTMwZTUyMzIyZDMuLjk1ODRkNGRhMTNkMCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gQEAgLTM4NDgsNiAr
Mzg0OCw4IEBAIHN0YXRpYyB2b2lkIHNrbF93bV9nZXRfaHdfc3RhdGVfYW5kX3Nhbml0aXplKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiDCoHZvaWQgc2tsX3dtX2NydGNfZGlzYWJs
ZV9ub2F0b21pYyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gwqB7DQo+IMKgCXN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjKTsNCj4gKwlzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ICsJCXRvX2ludGVsX2NydGNfc3Rh
dGUoY3J0Yy0+YmFzZS5zdGF0ZSk7DQo+IMKgCXN0cnVjdCBpbnRlbF9kYnVmX3N0YXRlICpkYnVm
X3N0YXRlID0NCj4gwqAJCXRvX2ludGVsX2RidWZfc3RhdGUoZGlzcGxheS0+ZGJ1Zi5vYmouc3Rh
dGUpOw0KPiDCoAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+IEBAIC0zODU2LDYgKzM4
NTgsMTMgQEAgdm9pZCBza2xfd21fY3J0Y19kaXNhYmxlX25vYXRvbWljKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQ0KPiDCoAkJcmV0dXJuOw0KPiDCoA0KPiDCoAlkYnVmX3N0YXRlLT5hY3RpdmVf
cGlwZXMgJj0gfkJJVChwaXBlKTsNCj4gKw0KPiArCWRidWZfc3RhdGUtPndlaWdodFtwaXBlXSA9
IDA7DQo+ICsJZGJ1Zl9zdGF0ZS0+c2xpY2VzW3BpcGVdID0gMDsNCj4gKw0KPiArCW1lbXNldCgm
ZGJ1Zl9zdGF0ZS0+ZGRiW3BpcGVdLCAwLCBzaXplb2YoZGJ1Zl9zdGF0ZS0+ZGRiW3BpcGVdKSk7
DQo+ICsNCj4gKwltZW1zZXQoJmNydGNfc3RhdGUtPndtLnNrbC5kZGIsIDAsIHNpemVvZihjcnRj
X3N0YXRlLT53bS5za2wuZGRiKSk7DQo+IMKgfQ0KPiDCoA0KPiDCoHZvaWQgaW50ZWxfd21fc3Rh
dGVfdmVyaWZ5KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KDQo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E21F9DFCE5
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 10:19:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB38110E67A;
	Mon,  2 Dec 2024 09:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jj5zoU4V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D1910E67A;
 Mon,  2 Dec 2024 09:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733131167; x=1764667167;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kUPyBPEOZ991cVu0nc+iW4rZk3VGqG6l0Af0yX+LKK8=;
 b=jj5zoU4VK1Fb9fWqUkjX+5xw9Yeay9Fr0Lf3nDwOhjwTBz7Du38R+Ro4
 qNcyi7z84kZsTjVHujAS1qCYWSAHLL6VAjd1zGbRmng0KYjhAt1QgabGf
 cXATAOfG6sg+qkTRhD6ZodzgMAY/aw8pMthKGxBMncl7h2xNKUmya+QOi
 hThWVN3XAsBwuPrW8rY1V6n2EdzkYsclxZ1dNV3Kj8FgzWDhfYIkavQkM
 w9RmHIKHBeDtvZscpARdw7h9UGYdxpbBlYmbdNZ9JJD3xCy5coaB3mZHE
 DAQF9gwC8WFURt9zuIuBs0JTY/OqnbNBp5cUsSlzOzSL+J3QITpKxFP2/ Q==;
X-CSE-ConnectionGUID: Tb0QWb1dRQO78I6AelZ9+Q==
X-CSE-MsgGUID: aWBi6sWORxq+ySqeb6zHGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="33537937"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="33537937"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:19:26 -0800
X-CSE-ConnectionGUID: ZO+UI9E5STuKmh7Sq4B2CQ==
X-CSE-MsgGUID: b9Qf0yQ8QEuPY2O8kxDvAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="130532775"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 01:19:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 01:19:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 01:19:26 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 01:19:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AwEUUIyKVM6a9W2q9j4orWjoyfwzoG4addlufAifD8E8cWAymhV9M6pOP5HFE1Ey0XOSwpxcVIQYbS42RtyTeDdcq8N95QDCONSPhU2DEAAfLkHgoRyEUcfl4edDHuGAesatUNy9ZUBrQtqwzCysRmOhgQSAib+tQQt5VXqbAQjYbYGBQOsvP6kNrtIGVE00IZETYOOki3b6KPXyaIiGlQ+myZOV93BGgCQHZhNVH+Sd9U7l4OxWm65MfehRfI0YeKaGzf12JN99OwUVjclqNgPaDf7kamWqiAh8Jt21+icHvC0q+rYgGIal/l3sJVlA2sl9WPJh4OzsGjPvFkqwzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kUPyBPEOZ991cVu0nc+iW4rZk3VGqG6l0Af0yX+LKK8=;
 b=A3WKRj/pcGVCm8dUd0zpzAElkw3icRWmvNt5QB/fju+QNbwYBZrcsGaT0PMAUeRpmU72RF/MobuEZoLotNVJVtpJXCWvAWA+U67/ARpLPxcrbHMy++1OJYuXSE11uz/B9qrJg+hafFZhsYm1bNnczROpGgF19aylb2Wj7R1DjIEQ1m4Fx/yrK/ebPBZWOgSQyYMkOrTp2m1heHp0tsLNwVzRKdXH1R9DU+QuwxIVJQujyGKM6x16XJWZohTTLqWcxwmprdzW1mA6wbOQohzrgo212Xvig12wFwr28bX5OIvQiR8jBc2DLglfqebaE2uerSvjPJrSZKyHQdkbdvcMrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by PH8PR11MB8037.namprd11.prod.outlook.com (2603:10b6:510:25d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Mon, 2 Dec
 2024 09:19:23 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714%7]) with mapi id 15.20.8207.017; Mon, 2 Dec 2024
 09:19:23 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgRmx1c2ggRE1DIHdh?=
 =?utf-8?B?a2Vsb2NrIHJlbGVhc2Ugd29yayBhdCB0aGUgZW5kIG9mIHJ1bnRpbWUgc3Vz?=
 =?utf-8?Q?pend_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBGbHVzaCBETUMgd2FrZWxv?=
 =?utf-8?B?Y2sgcmVsZWFzZSB3b3JrIGF0IHRoZSBlbmQgb2YgcnVudGltZSBzdXNwZW5k?=
 =?utf-8?Q?_(rev2)?=
Thread-Index: AQHbQoKgP20vjTch80CATRxlYRbhMbLOhY2AgAQrrCA=
Date: Mon, 2 Dec 2024 09:19:23 +0000
Message-ID: <PH8PR11MB67535806CD787CE831C0E979F2352@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <20241129164010.29887-1-gustavo.sousa@intel.com>
 <173290066120.355976.6029837080249973542@b555e5b46a47>
 <173290181717.1637.311761190341957218@intel.com>
In-Reply-To: <173290181717.1637.311761190341957218@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|PH8PR11MB8037:EE_
x-ms-office365-filtering-correlation-id: ccb21141-933d-40fa-dda2-08dd12b2690c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?bkdaUWlsQU1ZOUYrMjRPcW9KamdiL0hSaG9ZSG1SamEwMEp3VXFKM1FBMjJR?=
 =?utf-8?B?K0h4SHMvb3VMR2QyU3J3aGl6TWdhUFQ4N3lBcVVKRVl1ZWFaekU3bUh2NEFF?=
 =?utf-8?B?WlVFelZwbUVhNHNuREVmbEtXcEE1czl5dXJKWitaSGNXN3JKaHVaUldVbEkx?=
 =?utf-8?B?cnQrVmUzUkk5N0JnNHN6bndPVWd6UUlEUU8yUEorWHEvZ2xuTlRFUURIU1I4?=
 =?utf-8?B?T3AwOTc1M3dnR3pVZnVkZlB6Y3hCdU1UazdNTHM5L0hwL1lNYklKbkQ3UENi?=
 =?utf-8?B?YlhEL0ZnczZtVDF6MkVwL2pzT3JRR2ZJL2RHY09KQWJ0VzZZMm42bzAyTkJV?=
 =?utf-8?B?WURYRWV1c2E5NEZ2d3ArQW9WU1VtMHVDUW05RjV2Vnl1ZW9hTWNTYk56Y3NW?=
 =?utf-8?B?VVJjTjBOaFcrbkpzLzFHc2RMUU5RTGJjUTBYa1NLbDBWUkI0cDByUHBhU25P?=
 =?utf-8?B?Qy9XYlVGVHZaVDdGSzNjTGpybXhSNUx3SitWSHlvQld4ckpiSzltMWlOdzdQ?=
 =?utf-8?B?MitDL3pzUW9RYTE4NURQa2d4KzY3bnhPdVVUaThmWFlBR3luN1YxZFI5Q1lx?=
 =?utf-8?B?Z2JOZXRHK1hlMVI0dGpHak9mV2kvbzZCR0d5QmUxR0orL2gxYmNXbFg3bk9T?=
 =?utf-8?B?VE9qeUExNlVwckpjSEsva245UE01cWl6dXpvZmNhRlZaRGp0UHQ4T3RDak5s?=
 =?utf-8?B?RHgxRkRuNDBScE5saEhjbnRKY2ZxUjRyb3hIVTZTWFZVV0JuaFJNbDEzQ2h4?=
 =?utf-8?B?alpCS29BQjRBbDJ3blFHWWQxTjdYR01Xckt5UXVWQ2UxNHN1QklEeEpTQnpB?=
 =?utf-8?B?RDFLZnZiSGF0bHFud2xtU1dycVFJRkhuREYxeStmTVNKRm1zMTVpai9IWlNa?=
 =?utf-8?B?RERzVkRreE9ZR0NoNjRpSFFJZGhtcjdqNlg3RklscmN4TjBYV2ZMRVVpN3lK?=
 =?utf-8?B?UG1wc0hoRlV4N0lqZDQ2NjIrNDU5VEJjYlB2TzFEQWFjcVdsckovbVdlS2Fn?=
 =?utf-8?B?UUNtNmRENUFjQWIvWnBMSmRwRi9nUGdpaVpWejB5RU1Td0szN2x3YXlPaEox?=
 =?utf-8?B?ZmJFUWJXS2hQcXdsOTNPb1ZvVVloRHljbXBTUmdmQVRqeEtENThvd1puQkRt?=
 =?utf-8?B?Q2JERGlLRmJpWVBHOFBJbGovbFBUWlplNk1Idml3UDNsY1FYVjhiSmJzSlhE?=
 =?utf-8?B?SG9aWXR5ZW5DU3ZRN0p1Y3NIdDhGb20rbVJZWVhQT0VnT0g1MG02SFB2MkJR?=
 =?utf-8?B?MzZRNkFLM2psZnJOSFFPeDFXckpTb0dCUVhCTGxRaStISk90NE1xRVlXL3J4?=
 =?utf-8?B?Zm1JUlJvMW1lcXY2R3ZsMzlmajFiNGxDTSs5NXp4V3Z4YktER3dtUlhMN0dR?=
 =?utf-8?B?Skgvc3Nsbm53RHVEWllCOTE4KzlmTG85T2pGckgzREZXTUFNcUxiTU04SFdu?=
 =?utf-8?B?VUdCWmxBNDJhM2ZLUzV0cmVheTBhMm9VV3ZnU0lHL2ovdEdRT3NxVWh3Qlhq?=
 =?utf-8?B?YW1zb3ZSVmNwZnpEOFB5Z0JheTREZE44dVd4QmYvM3VrcDV3UGlLZ1ZHdW5y?=
 =?utf-8?B?OEhNT2JhNXF0ZFhEN0hyejFrWDE4ZHRxQkJPRXFHSmJFU3BCTElQU2RTemlP?=
 =?utf-8?B?QUdaWlY0dTZraldCTmhyUm9GSm85YVVuOWNvZUNUNjc3WUJNc0orYVBZUVRE?=
 =?utf-8?B?SGY2SlVuZE05eHI0SHFZaW9PV3BUMmFHWC93UWh3cHRNajBSY0hZRWJRcFhJ?=
 =?utf-8?B?OUlXMzlRRzlXeWtUa3ZHcG1DZ0JwdE92M0hDc3phakIyTU1GbXdNMWlFMUtn?=
 =?utf-8?Q?WAairM07aCxkopKVDe2VX7K4XIOl4aBCFvhkI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekJ4MzZEd0Z1ZW1XSE5mYlRXd3R0c1F2a2F0NHZuc2dJVEZaV0h3bnR5dTlZ?=
 =?utf-8?B?MW1tTUxKMEMzVnVubDNPOGFIOU1wZTJFck5XTS9EcktSYzRRV0ZtRUgzMVZQ?=
 =?utf-8?B?U3QvMW8xZ0tlY29VUFdQczhsaTJJUHNQcGd3dXhienhPOWZSSStmVEpycStt?=
 =?utf-8?B?RVpYRDVVTk5QNGU4YVdSVVVvU1ZLSFBvTW90VHFYaEpnL3hLR2xHbU5nU0p5?=
 =?utf-8?B?WjVWZVJSSHhUTXBoanV1eDBBVWd3RVIwRENLVkFwaHI4OUxpVE4yRmFOeGxp?=
 =?utf-8?B?ZUphMDJpN0luZHBNUVVkWnlENzFCUGFIQlFYcG45dGVlOVpYajRYSnk4S09z?=
 =?utf-8?B?RGNkOVg3bFpRcUNGNFVRWHdpY29CdzAwODUyblRBbkw1MWUxL3kyRUp5TmFE?=
 =?utf-8?B?L3BwdWhRaEtmYk9KVHVMWG9Ud3hiTTBkTGJhbyt0SElnaThSUC95VDdVYnBP?=
 =?utf-8?B?cTFiTXVFRlNqTnlFM0Q3bHkrV3hOWW9xcFYzcmFJOWVhSUFRYmRkVFVkR2VV?=
 =?utf-8?B?SCsydGpWbHNVei9MelZWWmtvOTBvdmxPUzhiRXBEcHJEdEpJcGdqVmRMeDNZ?=
 =?utf-8?B?MXJlMlRpYzROaUd1dFp0M2dPclZFSzdtL3U3UDRUTDlRZng1VDdlb21yN1B5?=
 =?utf-8?B?bHZ4bm8wLzVLK3VaUnRseUhJREROR0cwTXc1SEs4UTdyMW9pUE9ieEZxM3Vs?=
 =?utf-8?B?a0lTSlZ0bzNTNjRVQ2RWM04zZGljRUMvVmU0MjVMdXdVVkFCdUIrSVpQYjFZ?=
 =?utf-8?B?ZENzSW1YZU5BQWhDV3FYTUFNczNsZXYzNTUwc2cxdFkwVm8zQnJiTzViQUdw?=
 =?utf-8?B?cGNpekw5WlZkT2hobVg3MnJuRFRhWEFZL3BuMlM1QkhuL2NGaDhkMnQ1bGdi?=
 =?utf-8?B?RjFUNXdpM1FydjBKU29JSDhFbVNqbTJyOXhWWVRRK3ArQk9pa1lFOWZJQUVT?=
 =?utf-8?B?WjFjWVFRTXM4UmdEYnlYVnJqYXR1VXQxQ1VEb0NtVTcrZURkZmpaK3VPeDYz?=
 =?utf-8?B?Y0NYSmJ6dy94SWgvaWFVN3Q3MllIU1l0Z2E4SEg1V1hLWTl1alVKT1VrK3Jp?=
 =?utf-8?B?b01uazNEdGpxeUUrM29zZGV2UTZNMU5VR25oRWJuVTdGWER0SnBNUUtDYkp0?=
 =?utf-8?B?eHd3ODh2K1NmVW5jWHA4WWNpMTN5N1BvcWhJaXIyYlRRdUlXazYwK3pWNGM0?=
 =?utf-8?B?clRRRTJ4N0x2empkVlBMMHlVRm9OY1NiQS9vNVJGOFVPK0RJd0M0cFVPdThk?=
 =?utf-8?B?elpFU2E5cTN1ZHRnS2YyRlZaSWRreWhGL3VMcjQ3OXI4WUlSMVdpSDdtMTEy?=
 =?utf-8?B?MjJhVzVhU1JZZWxwdHQ0dHVHWGw3UVJvblBkY2c0MDkvZStJc2w1WWg0WlhX?=
 =?utf-8?B?eHFxRDJuUzF2Z2RIMnlFemZ4RG9zSHJxVittalpqZldpYlRKN3FDQWEybWNs?=
 =?utf-8?B?WVBvdWRBNjcxUU83SmFaMWtHaDFxajdXNmMwRXhXNFFGdXpHU2xjR2FzQmhS?=
 =?utf-8?B?VHVMcXEwVnNuU3ZkNzcxbjUwa3NLL3JoVGpreFVFNmRhTllRcFlYZVkvSXVx?=
 =?utf-8?B?SlFkTWt6ekZSMGk4S3ZYRy9PbE1CZTlIaEVudndMNVNJTnVkdm5TVnAyeGRI?=
 =?utf-8?B?RFd0ZHY0WGNCMUJ6VHlIcXU3dFhTb1kyMjdCN3ZYdGFzMXd0QW12QjUwVkRH?=
 =?utf-8?B?b1lKSzRlUStldlpOcnBRR0diWG05SDVjWGpkK2Y4aHd1SGdtaE9rQ3A2WTZU?=
 =?utf-8?B?SzFVOVEvREw2MUhHWXU5QkRyYjNsNnhtK0N3ZE1TYmdQMEJVT05IZi8vMXRR?=
 =?utf-8?B?Mjh0WURwbGlIMDU0NkpBK0ZpNUtxMi9ZZU1iVVY0YTRCZXJEQ3pkWmNCa1JR?=
 =?utf-8?B?SW5tdjAxRTZDNzR2bFYwdnBsQ0ZwTXlXMWxMWm5HR3JSbVNlanlBMXJVRDYz?=
 =?utf-8?B?empjbnJFQ1Vjdm9OZDV3WWZSck9Cc1VpRWtvZG10SlhMVktNQXF2WTFhWTVr?=
 =?utf-8?B?L3NYM2ZhNzB3RkxLMVFudUpWVC9yM2dCREtiNTlEbHRkaWxRQkIvTW82eFdy?=
 =?utf-8?B?NEJETm84blRiM2d4akpWOFA1RS9ZS3F2VGxQSGdmVitDQ3FtTTMrd3RaTHUy?=
 =?utf-8?B?dEtEUDFRQkVoMUZmZll5ZmVTeUs2Mlc2RGdVaXRRR1dPN2NGbndMN05taS8v?=
 =?utf-8?B?bG1xWWZsZi9QSUFpbjR3MEVMbGI3K2k1QTFEaVhFck82N2o5dHU4Zkg2aGlF?=
 =?utf-8?B?QTN6T214QXRJNHJWeEhWcW1aSXRnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccb21141-933d-40fa-dda2-08dd12b2690c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2024 09:19:23.2268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pHlCWb4HH7XKj1Tl5z02Ju4+JwgSvYLIi+hfRZ5jO1+SUjiBPVtUcoduKyuNwqJa7iNHwVXaSwbj4fm6xj8bcUQEkSvUv6FyVF8BysfuN0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8037
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQxOTMyLyAt
IFJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpUZWphc3JlZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVz
a3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBHdXN0YXZvIFNvdXNhDQpTZW50OiBGcmlkYXksIE5vdmVt
YmVyIDI5LCAyMDI0IDExOjA3IFBNDQpUbzogaTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSZTog4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJl
IGZvciBGbHVzaCBETUMgd2FrZWxvY2sgcmVsZWFzZSB3b3JrIGF0IHRoZSBlbmQgb2YgcnVudGlt
ZSBzdXNwZW5kIChyZXYyKQ0KDQpRdW90aW5nIFBhdGNod29yayAoMjAyNC0xMS0yOSAxNDoxNzo0
MS0wMzowMCkNCj49PSBTZXJpZXMgRGV0YWlscyA9PQ0KPg0KPlNlcmllczogRmx1c2ggRE1DIHdh
a2Vsb2NrIHJlbGVhc2Ugd29yayBhdCB0aGUgZW5kIG9mIHJ1bnRpbWUgc3VzcGVuZCAocmV2MikN
Cj5VUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQxOTMy
Lw0KPlN0YXRlIDogZmFpbHVyZQ0KPg0KPj09IFN1bW1hcnkgPT0NCj4NCj5DSSBCdWcgTG9nIC0g
Y2hhbmdlcyBmcm9tIENJX0RSTV8xNTc2MyAtPiBQYXRjaHdvcmtfMTQxOTMydjIgDQo+PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPg0KPlN1bW1h
cnkNCj4tLS0tLS0tDQo+DQo+ICAqKkZBSUxVUkUqKg0KPg0KPiAgU2VyaW91cyB1bmtub3duIGNo
YW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0MTkzMnYyIGFic29sdXRlbHkgDQo+IG5lZWQg
dG8gYmUgIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiAgDQo+ICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9y
dGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMgIA0KPiBpbnRy
b2R1Y2VkIGluIFBhdGNod29ya18xNDE5MzJ2MiwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFt
IA0KPiAoSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93IHRoZW0g
IHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFs
c2UgcG9zaXRpdmVzIGluIENJLg0KPg0KPiAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxOTMydjIvaW5kZXguaHRt
bA0KPg0KPlBhcnRpY2lwYXRpbmcgaG9zdHMgKDQ2IC0+IDQ1KQ0KPi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQ0KPg0KPiAgTWlzc2luZyAgICAoMSk6IGZpLXNuYi0yNTIwbSANCj4NCj5Q
b3NzaWJsZSBuZXcgaXNzdWVzDQo+LS0tLS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAgSGVyZSBhcmUg
dGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRj
aHdvcmtfMTQxOTMydjI6DQo+DQo+IyMjIElHVCBjaGFuZ2VzICMjIw0KPg0KPiMjIyMgUG9zc2li
bGUgcmVncmVzc2lvbnMgIyMjIw0KPg0KPiAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQ6
DQo+ICAgIC0gYmF0LWFybGgtMzogICAgICAgICBbUEFTU11bMV0gLT4gW0lOQ09NUExFVEVdWzJd
DQo+ICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV8xNTc2My9iYXQtYXJsaC0zL2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sDQo+ICAg
WzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQxOTMydjIvYmF0LWFybGgtMw0KPiAvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLmh0
bWwNCg0KVGhpcyBzZWVtcyB1bnJlbGF0ZWQgdG8gdGhpcyBzZXJpZXMuIE9uIHRoZSBpOTE1LXNp
ZGUsIHRoZSBhcHBsaWVkIGNoYW5nZXMgYXJlIG5vbi1mdW5jdGlvbmFsIHJlZmFjdG9ycyBhbmQg
bm90aGluZyBvbiB0aGUgbG9nIGluZGljYXRlcyBhbiBpc3N1ZSBvbiB0aGUgRE1DIHdha2Vsb2Nr
IHBhdGhzIChhbGwgb2Ygd2hpY2ggc2hvdWxkIGJlIGZ1bmN0aW9uYWxseSBhIG5vLW9wIGZvciBB
UkwpLg0KDQpQbGVhc2UgcmUtcmVwb3J0Lg0KDQotLQ0KR3VzdGF2byBTb3VzYQ0K

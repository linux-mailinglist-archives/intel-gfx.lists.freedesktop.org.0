Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 420B2B41467
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 07:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A309289A5D;
	Wed,  3 Sep 2025 05:35:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RyDRqRKB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A13989A5D;
 Wed,  3 Sep 2025 05:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756877746; x=1788413746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=CYH4fXIupZ50GsrQraetXBRSOYVMChdvrG350jmYsRs=;
 b=RyDRqRKBGSgIgUEg0jwHBjSu/lSLFiyxv2fg4j2IYTsF2j35EroQcGhr
 V4zJ1bzvrxW/N5OqEui7r8sy7jzdalXyPt7z5J8kl442C30HR13/0B6mR
 tH+3vgpHIpSPN9hXAyLjr0HBAtqHpzNtZi9mMnpuI+K8YwdCfwv//aS4F
 DXSMshFTiwFS3EJkKcL+amyrwi2uoxHtrYbe2pADhmLKai+GshYtWxxhm
 QmwIAhkDUXQkyf/b5XnGqtpGMVYINrI/1wPFw+jFaWz1qlxZl9Qjzzv/E
 yzUoaU9E0A7EmFLVWz3FZBPMvov0YbaFeMTSTsCgd7a5Cj1iO1PC5t7uD A==;
X-CSE-ConnectionGUID: 9OKyT17XRt2hJQGm2ufP8w==
X-CSE-MsgGUID: D1HpuJo3Svayv0POVnpAEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="84602118"
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="84602118"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 22:35:46 -0700
X-CSE-ConnectionGUID: nzE3Nbk7RFC5wT+9hkF7kg==
X-CSE-MsgGUID: YO2JTJttQb2i4VDKVCajpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="171055258"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 22:35:45 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 22:35:44 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 22:35:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.59)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 22:35:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eEtOVwBph8IRr3YLJTuDHXQkPPWpdUypB3qUrS7cMrcdwJlIE6+QRLCXVndGS8MroLFqDDzH9GkClTyyaquu+YVZcLXJgjD+yO+Vm17yJNNsMhs00JXJtrMBaftSn0iIrEV0egXNa/TCLhGmw7wRDoKJOz/u98Z6zaD7fFdISycLaGF1u1+wLoxVBCOYlFsg62OTF12feYyYqN/prVoZZCNc642813T6t2lA0m2AVOVuGvWH4/jwrqp+hRLNft73z6cMWFKKgJvQBRFkj3qrDCrqouZbJJNYHcO957LNnFcF2j7eBmqTydXOoD1/yRMEkIG9HKRqrhzcf/qYD5rZtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CYH4fXIupZ50GsrQraetXBRSOYVMChdvrG350jmYsRs=;
 b=Si96qJburSVNgi1fieUg09VwrNGvPERXr+VuDFB04RCGnZbtqGR+txvtFVHrJpevoVmLVEGZ91Dq690d//3wT7COwQIteOrhuEr/TNeMfmB62cTk43v3tXUBlZAclsSfzhA0gqj5aXXmyaNax+yhc1iqpcbbznIS+kBNY5KDmhcu95FnOdphTnEgZel7W41jzZLX43FHoNAdAQTE1EgiCCYfSdgE0537klO2/W06YLJ7CILhaU71LqmbkC2KxfUmRFvuoJ80nsVAFd8dQunrQqJEzgo0tMd9oBZSkaHXiUyf/hd0mdnCEf7VaAgClF7hTI7NzT4HYB+hw4yuGfc15A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB5982.namprd11.prod.outlook.com (2603:10b6:510:1e1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Wed, 3 Sep
 2025 05:35:40 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Wed, 3 Sep 2025
 05:35:39 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Brzezinka, Sebastian" <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v9 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Topic: [PATCH v9 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Index: AQHcG2Gj+Tl672kU6kyYZqPOoACyN7SA8mOA
Date: Wed, 3 Sep 2025 05:35:38 +0000
Message-ID: <396e5e6060ff65188b23717e026631bbdec76f00.camel@intel.com>
References: <20250901170003.1582933-1-michal.grzelak@intel.com>
 <20250901170003.1582933-2-michal.grzelak@intel.com>
In-Reply-To: <20250901170003.1582933-2-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB5982:EE_
x-ms-office365-filtering-correlation-id: d5071808-c80d-403f-2b82-08ddeaabb781
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VUJUak5nMWRoaE4xb1BhaS9CR2lHem8yRDE1dlpkKzdPbTZVME1Bamc1U29X?=
 =?utf-8?B?OVJNcjZCWEtmVUlzUmFTMGczQ0s3TUhDejRUOVl2dzN1MjdDNkduaUVJWnJa?=
 =?utf-8?B?NHA1WU84dDY3Y0h2QTVtcGIvNHFBRS9FKzczamQzbFlRRW40RDE4WVByQzRK?=
 =?utf-8?B?V0pBMUZnWitGbkVyaGhOWEI1dWVWdUdpdEM3eHppMWljVXE5VkpJaFRyWTRh?=
 =?utf-8?B?bHRxS3k5Z05wR3UyMldvZFMzaGlBaVBqRGJUZDBaaXB4QnVDVm9jamhGd0ZH?=
 =?utf-8?B?eTdjSEg0aUpxUTJiT0VHWG5YY3hjOHVWMWQ0Nk5lQlEvNnl5cXZQQ3Z6OU1O?=
 =?utf-8?B?RjJZV2s3WmpsRFFDRzE0OHJTem5wb1locjJOcUIrZ2gveDEwNURNYTZ2Y0pJ?=
 =?utf-8?B?eXNFRnpPZ3BqeG5wWDdzZXRkbzBUZ0lKSDlmaThObEhxU0RZalR4UmROemZ5?=
 =?utf-8?B?WXlqTmhkOG5wTFFyUSttNjUrYitOQ0VGOG1xaEd6THVhL0p2SU0rOUJOeWlM?=
 =?utf-8?B?UmpNRUdDRktTUnlXczVCQnJJUWdmSHhsQkNTdEpqODdZbnJQbHZtaWxBNCt3?=
 =?utf-8?B?MzdRQmtRenl6ZXpjT0lhTGM2eVppZTVLdU04TU1hZlFuZHdIcE1MYWpPUk1P?=
 =?utf-8?B?VlpBZkhoZGY4eUZpeGV4UUtMK1EvcTJJU09ob3FyUzhpbmJpeW01Q0FMY1o1?=
 =?utf-8?B?M3pHZ0VRa3pNdmxCa285UUtzQnp5cHh0MjNWVEZDa09vL0hKZmU0Sm9sd05O?=
 =?utf-8?B?akIxRmpBWXNpNlNIOWF2ZE0rUG12YzVqUVBCcU9MbWNlQ1M4VUtuM2JqYS9I?=
 =?utf-8?B?RzdCNWQrZVZ5YTE0c3o5aHdDNzkxYWl6NG9CK2FybW0xc2hrd0FaaWp2cTV2?=
 =?utf-8?B?K1B2QmsweTdGbHZDazZ5YnE2Z3cxQTdGY0ZySFNzYmI4NXJxdHFDR0krNEZz?=
 =?utf-8?B?S0tqSVdEYUQxNGpnZ20zSHpQRDlOd0Nqei8wTmNYWUMvaU9GUEsyZjlOU0U0?=
 =?utf-8?B?V1VvNUxjR1VhaEdYK3N4MnFxVnpVRjF3Y1pWNHpEV28vRHB1U3dtWW9HMDRJ?=
 =?utf-8?B?SHlJUmFsck5xQnlwNW5tNUtZZkxTTFdtNmdrWk1XOHdmeGlWL1lEc0kxWmM2?=
 =?utf-8?B?bUVXUGZhR21adGIxRkZqMGNSZjM1TUp3ZHVXK1VTUVBEQUpFbzRyUVE3by9R?=
 =?utf-8?B?N05jZ1ZhRm00S2IyMzNJd1VhcGZkSDcwYk0xMjd1a1JSazJGbkdJOVlnazdI?=
 =?utf-8?B?NFlIWG43VFFKV2tEb2Nsd1ppemdGb29Gb2pCdXZRRm1TU2taSmErdmdGQUJn?=
 =?utf-8?B?UXdzMEtEMjZoYi9VNG51R0tSK2NqR0xvNnRmR1hqNy9JR1ZXL0cyRjQvSW5N?=
 =?utf-8?B?ZUJkUnhkdnZMdkJvQWlkNnhRR3hiMlRoN3ZPOHFza2p3blZjcWQ4YTh3K0sw?=
 =?utf-8?B?WWtPUThJWmExM1BGU01MaUR0TFBqQ3lScmVwd1BNMnVQTVZRcEQ4aDdjNkJk?=
 =?utf-8?B?YU9VQmNPZENTb28wU21VODczQ1hjYlNnandsWFZ6S0Naekd1TE95cDA2L2U0?=
 =?utf-8?B?Nk1iZXIwRWtDek1adXowU1ZpamhQNmh1Q1ZDSy82NXV0THZ0ZHgyVUl5NUNW?=
 =?utf-8?B?eENoM2lKWVFKaDNtM0ttd1U2dkp5WWQweGJ4OWdEL01NVXRodG1SNDBTOVdx?=
 =?utf-8?B?RkgyemN3WndiWlMyZ0tvQnB1WWRIU1pzaWtZekVDQ3FFWkZpS1JvaHprVlg0?=
 =?utf-8?B?VnlmTURUYU5XVWtZL2N1NHZUSngxKzVGYURpN0VsWDFGRXhhcTRHc0NMMm4z?=
 =?utf-8?B?bW5CbFA5UUhOZ3JNeTNOWktXQUNrenV1NTRLNVZRd0lpckF4NXNLMzM0L1pr?=
 =?utf-8?B?bzU2UUxwbmVmcXJsNDdVREdVRG80QVg2WnlzZUoybTV0SFhWanNJY0w0M3Fx?=
 =?utf-8?B?UjBCcnVpNnNGMVhPNmxEcC9iamxrNWNGbFdmUDlGaThMbnc0S29STko3clhr?=
 =?utf-8?B?TDlvV1FkZ2ZnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?emljcDBlRnRtclU0dVRua1ZuT2VDTVR6U1dRQ3E4SGdyOWE1T3l5K3dNQUtT?=
 =?utf-8?B?TDY3VnROVWw3RzM2WWxmYnA2MmxVOE9kNFhscXJRdDFJK1hnZWJqci9kVkZZ?=
 =?utf-8?B?SGRobktSTXI3TmZNWlJuZHFVaDgwUlZYRkxFaHJITEFUTll1bHZOVGVhbncv?=
 =?utf-8?B?UXV5ajVoS3BxZlgwQ2JrbkRmRGdBM2dMbHcrNW9LblBUc1pFQ20zaXZrdFJM?=
 =?utf-8?B?UldjQjlKUFJUS1BXdFJTWTRQQTJyOXN4WjArdlB6VVM4aXd6eE13VWFRVkZP?=
 =?utf-8?B?bm9HbGo5dk01NUFzdXF5R2x2WTY4OTJ6QTBIV1pQUUI2S1dRaXB6dVF4Q2k5?=
 =?utf-8?B?N2RkZTZsUTJZQ0M4Sm5LRWEzenFmZit5aktQdnBJcGN6cGFDZ05GemY5RGxR?=
 =?utf-8?B?ZXlDUGszcWRCb2hsVU1jRndyODB5cDgxTGRyNmJSeWZFVUI5b0RLUzhOczQr?=
 =?utf-8?B?cnpRN01qNlp0bEhXYkNDZ0dmdURzR25mZDRybkw0d251Tll3dlVDZWc4QkFw?=
 =?utf-8?B?NmFzYTlud2NubVNDVTZPekZoOUF4NytObW1zTFB4bm5JWTJ3b0ZNb05aZDRx?=
 =?utf-8?B?ZnVVaVBJR2x5ekpJM3QySitNMkJuNmRCRFpab3FwM1JaUXNqVk9FeUR6ZmYz?=
 =?utf-8?B?UGgvT3lDc1hHS0ppSzdLRHBZcXA0NXNzQ1pKdVJaTGlnOXJyTmJsdGRLYTFN?=
 =?utf-8?B?VWVCWDdqWUN1YkloWSs4N0Z3QkVtOWpKSHhWTnZxN1JJa05Wa1RHd3RSUUFt?=
 =?utf-8?B?Tm8wNTJzejVsTkhXdTN1YndWTDU0bXJKOFpQc1dlcGRiUlRsOEJZeU9EVnkz?=
 =?utf-8?B?Q085MDhINnpEN0lMbDA3cWVPR2pvZGNYa3BtaU5IT1pEdFJ1RFhnS1FKRnhy?=
 =?utf-8?B?b2dzMStqd1JubkVCc2tWWU96NW44OXJ5QkNyM1RWeWZmU24wRlpoNGZ1YlZk?=
 =?utf-8?B?QXEwVmh6d0dOT0U4em83Z2VMWnZRZThHSHhxeGVWeTE0MHIyNk8zb1dTOWZF?=
 =?utf-8?B?WjN2S0ZuZmtaT3BDOEl6a2k0V3FSUHppLzV2Z3NZb21CaEVWSDgyUUY0QUFm?=
 =?utf-8?B?VGtkdE12MFh0MUFRa2p3ZnZjQWgyVG1LeWx4ckxtZnA5VzRLS0ZrRzVVa2Fq?=
 =?utf-8?B?bGZjSDhyNjlIU3czLzRCZXJhY3FGV01wTktyNGFjSnI3MlU4ZzdxSWtvN2M5?=
 =?utf-8?B?SDJucGJzeXp2ZTVJL1Q1YjB0OTNqUmh6N2J0TUh0YjNJVklUVmVDb01IZ08v?=
 =?utf-8?B?UlNPc2lUdWJwQTltcFVWSVhFTEM5ei91VWE0NnVaRk02bXdDblBVT3RBdUtU?=
 =?utf-8?B?b21RWGtuaWxyUStWQWtMdFlsbHJyZVMrdTRINWpWTVJUSzBzbHRiWUt3cVBm?=
 =?utf-8?B?aGduQUhUeWZNQmxDUUVrWWRNZGZxOUdzT3dGMEZtSUpvUFBaYjFUcncyY3Ix?=
 =?utf-8?B?UlR1SUpNa3ZTZHdPWmI3TDJucWdJc3NSWlJudUwrN2MxN0NkWHJZWi9WRGpO?=
 =?utf-8?B?djZDRE1CQ2g3ZW51WGprek5FR1JZNFNZK1o3L1JHQWxDZGozK2pFS1NkYkNs?=
 =?utf-8?B?alhnZFdYRHk5WXpydDJjcDJrYyt4ZXMzdERFdTkxemhoMUM1c1F4T3ZNb1pu?=
 =?utf-8?B?RXhPTWRVTGRDeUhUMS82QXRxb1dMd3lzWi9HR2V3MTN0RVRDaFAwWVJOU0V6?=
 =?utf-8?B?M2JEN2JIK04xRnplQ0FKOFFnMkMrT2UzSFlYYXRqVEFrLzhYK2NNZk5tNnRC?=
 =?utf-8?B?NVZLZ2FoNHpINlNWUFFhZXo5M0MyeWY0bXVLaS94TnBHZGVTelQrcUszbDZu?=
 =?utf-8?B?N3BHQk1Eamg1bytkZ1Y2dEpOaUFMaTdjV2R6UDZ0UTFSMmhlYm5xbkZRaWFR?=
 =?utf-8?B?T3dyYjlOd2RaR1VEZWdtWHQyeEpvdW91bC9QTUNrbTZHU1VQbXlKWGhqNXVB?=
 =?utf-8?B?WlEwSHBkTk1BK0t1cDVUeHRPdmpid3Z6VUU2bm91dFZhc2NsODRSUVpTRjAw?=
 =?utf-8?B?OHFxYWxKYjNDRXdWbjB5bmp4dzFOT1hJWkNicnlMbWM3Qm1YL2pIRW0yaG1h?=
 =?utf-8?B?SENtcVRqR284dDgyaXlMd0Y1M0hlREZnM3FCUGRwS2ZWMm5iU3JzbXJaRDRP?=
 =?utf-8?B?MGd6YVBaQlR5V2VjaGcxSlZ0NktkU0dOMnRxWkE3cGhERkYzY290eU4wQ1Nj?=
 =?utf-8?B?OHpBTVAwdmZuZUNjcUMrWlg3R1lyWEt1WnhQZER3d0dMejhTVTJXVXVRUkdL?=
 =?utf-8?B?OHFPNmFaQkd1MjZ5ZWxNN1UrOGJ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <13457246D7DBE64BBBC76FDA0FB45798@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5071808-c80d-403f-2b82-08ddeaabb781
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 05:35:39.4654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: epIiog3+r52Q0RETYLUXxcw31vhNIYNPVhnZmpv63xv9tlEVKhYD4oaH945T4lTj/KYZMnPc1AqnZ2Z071akts3U1JSLPHuau0e6QA81muQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5982
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

T24gTW9uLCAyMDI1LTA5LTAxIGF0IDE5OjAwICswMjAwLCBNaWNoYcWCIEdyemVsYWsgd3JvdGU6
DQo+IFRoZXJlIGlzIG5vIHJlYXNvbiBpbiBkZWJ1Z2ZzIHdoeSBQU1IgaGFzIGJlZW4gZGlzYWJs
ZWQuIEN1cnJlbnRseSwNCj4gd2l0aG91dCB0aGlzIGluZm9ybWF0aW9uLCBJR1QgdGVzdHMgY2Fu
bm90IGRlY2lkZSB3aGV0aGVyIFBTUiBoYXMNCj4gYmVlbiBkaXNhYmxlZCBvbiBwdXJwb3NlIG9y
IHdhcyBpdCBhYm5vcm1hbCBiZWhhdmlvci4gQmVjYXVzZSBvZiBpdCwNCj4gdGhlIHN0YXR1cyBv
ZiB0aGUgdGVzdCBjYW5ub3QgYmUgZGVjaWRlZCBjb3JyZWN0bHkuDQo+IA0KPiBBZGQgbm9fcHNy
X3JlYXNvbiBmaWVsZCBpbnRvIHN0cnVjdCBpbnRlbF9wc3IuIEFkZCBub19wc3JfcmVhc29uDQo+
IGludG8gc3RydWN0IGludGVsX2NydGNfc3RhdGUgdG8gcHJldmVudCBzdGF5aW5nIG91dCBvZiBz
eW5jIHdoZW4NCj4gX3Bzcl9jb21wdXRlX2NvbmZpZyBpcyBub3QgdXNpbmcgY29tcHV0ZWQgc3Rh
dGUuIFdyaXRlIHRoZSByZWFzb24sDQo+IGUuZy4gUFNSIHNldHVwIHRpbWluZyBub3QgbWV0LCBp
bnRvIHByb3BlciBQU1IgZGVidWdmcyBmaWxlLiBVcGRhdGUNCj4gdGhlIHJlYXNvbiBmcm9tIG9s
ZF9jcnRjX3N0YXRlIGluIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlLiBFeHRlbmQNCj4gZm9y
bWF0IG9mIGRlYnVnZnMgZmlsZSB0byBoYXZlIHJlYXNvbiB3aGVuIGl0IGlzIG5vbi1OVUxMLiBF
bnN1cmUNCj4gbm9fcHNyX3JlYXNvbiBpcyB1cC10by1kYXRlIG9yIE5VTEwgYnkgcmVzZXR0aW5n
IGl0IGF0IHRoZSBiZWdpbm5pbmcNCj4gb2YNCj4gaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnLiBD
bGVhbiBpdCB3aGVuIFBTUiBpcyBhY3RpdmF0ZWQuDQo+IA0KPiBSZWZhY3RvciBpbnRlbF9wc3Jf
cG9zdF9wbGFuZV91cGRhdGUgdG8gdXNlIG5vX3Bzcl9yZWFzb24gYWxvbmcNCj4ga2VlcF9kaXNh
YmxlZC4NCj4gDQo+IENoYW5nZWxvZzoNCj4gdjgtPnY5DQo+IC0gYWRkIG5vX3Bzcl9yZWFzb24g
aW50byBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSBbSm91bmldDQo+IC0gdXBkYXRlIHRoZSByZWFz
b24gaW4gaW50ZWxfcHNyX3ByZV9wbGFuZV91cGRhdGUgW0pvdW5pXQ0KPiAtIGVsYWJvcmF0ZSBv
biBtb3RpdmF0aW9uIG9mIHRoZSBmZWF0dXJlIGluIGNvbW1pdCBtZXNzYWdlDQo+IFtTZWJhc3Rp
YW5dDQo+IC0gY29weSBjaGFuZ2Vsb2cgdG8gY29tbWl0IG1lc3NhZ2UgW1NlYmFzdGlhbl0NCj4g
DQo+IHY3LT52OA0KPiAtIHJlc2V0IG5vX3Bzcl9yZWFzb24gYXQgdGhlIGJlZ2luIG9mIGludGVs
X3Bzcl9jb21wdXRlX2NvbmZpZw0KPiBbSm91bmldDQo+IC0gcmVzdG9yZSBrZWVwX2Rpc2FibGVk
IFtKb3VuaV0NCj4gLSBkcm9wIHNldHRpbmcgIlNpbmsgbm90IHJlbGlhYmxlIiBbSm91bmldDQo+
IC0gYWRkIFdBIG51bWJlciBbSm91bmldDQo+IC0gaWYgbm9uLU5VTEwsIHdyaXRlIG5vX3Bzcl9y
ZWFzb24gYWZ0ZXIgUFNSIG1vZGUgW0pvdW5pXQ0KPiANCj4gdjYtPnY3DQo+IC0gcmViYXNlIG9u
dG8gbmV3IGRybS10aXANCj4gDQo+IHY1LT52Ng0KPiAtIG1vdmUgc2V0dGluZyBub19wc3JfcmVh
c29uIHRvIGludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZSBbSm91bmldDQo+IC0gcmVtb3ZlIHNl
dHRpbmcgbm9fcHNyX3JlYXNvbiB3aGVuIGRpc2FibGluZyBQU1IgaXMgdGVtcG9yYXJ5DQo+IFtK
b3VuaV0NCj4gDQo+IHY0LT52NQ0KPiAtIGZpeCBpbmRlbnRhdGlvbiBlcnJvcnMgZnJvbSBjaGVj
a3BhdGNoDQo+IA0KPiB2My0+djQNCj4gLSBjaGFuZ2UgZm9ybWF0IG9mIGxvZ2dpbmcgd29ya2Fy
b3VuZCAjMTEzNg0KPiANCj4gdjItPnYzDQo+IC0gY2hhbmdlIHJlYXNvbiBkZXNjcmlwdGlvbiB0
byBiZSBtb3JlIHNwZWNpZmljIFtNaWthXQ0KPiAtIHJlbW92ZSBCU3BlY3MgbnVtYmVyICYgV0Eg
bnVtYmVyIGZyb20gYmVpbmcgd3JpdHRlbiBpbnRvDQo+IG5vX3Bzcl9yZWFzb24NCj4gLSByZXBs
YWNlIHNwYWNlcyB3aXRoIHRhYnMNCj4gDQo+IHYxLT52Mg0KPiAtIHNldCBvdGhlciByZWFzb25z
IHRoYW4gIlBTUiBzZXR1cCB0aW1pbmcgbm90IG1ldCINCj4gLSBjbGVhciBub19wc3JfcmVhc29u
IHdoZW4gYWN0aXZhdGluZyBQU1IuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIEdyemVs
YWsgPG1pY2hhbC5ncnplbGFrQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAzICsrKw0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgIHwgMjMgKysrKysrKysr
KysrKysrLS0NCj4gLS0NCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCBmZDlkMjUyNzg4OWIuLmUxNjVhNDcx
YWE2ZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTExMjUsNiArMTEyNSw3IEBAIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlIHsNCj4gwqAJdTMyIGRjM2NvX2V4aXRsaW5lOw0KPiDCoAl1MTYgc3VfeV9ncmFu
dWxhcml0eTsNCj4gwqAJdTggYWN0aXZlX25vbl9wc3JfcGlwZXM7DQo+ICsJY29uc3QgY2hhciAq
bm9fcHNyX3JlYXNvbjsNCj4gwqANCj4gwqAJLyoNCj4gwqAJICogRnJlcXVlbmN5IHRoZSBkcGxs
IGZvciB0aGUgcG9ydCBzaG91bGQgcnVuIGF0LiBEaWZmZXJzDQo+IGZyb20gdGhlDQo+IEBAIC0x
Njg3LDYgKzE2ODgsOCBAQCBzdHJ1Y3QgaW50ZWxfcHNyIHsNCj4gwqAJYm9vbCBwa2dfY19sYXRl
bmN5X3VzZWQ7DQo+IMKgDQo+IMKgCXU4IGFjdGl2ZV9ub25fcHNyX3BpcGVzOw0KPiArDQo+ICsJ
Y29uc3QgY2hhciAqbm9fcHNyX3JlYXNvbjsNCj4gwqB9Ow0KPiDCoA0KPiDCoHN0cnVjdCBpbnRl
bF9kcCB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBp
bmRleCAyMjQzM2ZlMmVlMTQuLmM4NjhiYzczZGZjOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNTc5LDYgKzE1NzksNyBAQCBzdGF0aWMg
Ym9vbCBfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+
IMKgCWlmIChlbnRyeV9zZXR1cF9mcmFtZXMgPj0gMCkgew0KPiDCoAkJaW50ZWxfZHAtPnBzci5l
bnRyeV9zZXR1cF9mcmFtZXMgPQ0KPiBlbnRyeV9zZXR1cF9mcmFtZXM7DQo+IMKgCX0gZWxzZSB7
DQo+ICsJCWludGVsX2RwLT5wc3Iubm9fcHNyX3JlYXNvbiA9ICJQU1Igc2V0dXAgdGltaW5nIG5v
dA0KPiBtZXQiOw0KDQpOb3cgYXMgeW91IGFkZGVkIGludGVsX2NydGNfc3RhdGUtPm5vX3Bzcl9y
ZWFzb24geW91IGFyZSBzdXBwb3NlZCB0bw0Kc2V0IHRoYXQgaW4gaGVyZSBpbnN0ZWFkIG9mIGlu
dGVsX2RwLT5wc3Iubm9fcHNyX3JlYXNvbiBkaXJlY3RseS4NCg0KPiDCoAkJZHJtX2RiZ19rbXMo
ZGlzcGxheS0+ZHJtLA0KPiDCoAkJCcKgwqDCoCAiUFNSIGNvbmRpdGlvbiBmYWlsZWQ6IFBTUiBz
ZXR1cCB0aW1pbmcNCj4gbm90IG1ldFxuIik7DQo+IMKgCQlyZXR1cm4gZmFsc2U7DQo+IEBAIC0x
NjYzLDYgKzE2NjQsOCBAQCB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50
ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gwqAJ
dTggYWN0aXZlX3BpcGVzID0gMDsNCj4gwqANCj4gKwlpbnRlbF9kcC0+cHNyLm5vX3Bzcl9yZWFz
b24gPSBOVUxMOw0KPiArDQoNCk5vdyBhcyB5b3UgaGF2ZSBpbnRlbF9jcnRjX3N0YXRlLT5ub19w
c3JfcmVhc29uIHlvdSBzaG91bGQgbm90IGNsZWFyDQpub19wc3JfcmVhc29uIGhlcmUuDQoNCj4g
wqAJaWYgKCFwc3JfZ2xvYmFsX2VuYWJsZWQoaW50ZWxfZHApKSB7DQo+IMKgCQlkcm1fZGJnX2tt
cyhkaXNwbGF5LT5kcm0sICJQU1IgZGlzYWJsZWQgYnkgZmxhZ1xuIik7DQo+IMKgCQlyZXR1cm47
DQo+IEBAIC0xODEwLDYgKzE4MTMsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfYWN0aXZhdGUo
c3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gwqAJCWhzd19hY3RpdmF0ZV9wc3IxKGlu
dGVsX2RwKTsNCj4gwqANCj4gwqAJaW50ZWxfZHAtPnBzci5hY3RpdmUgPSB0cnVlOw0KPiArCWlu
dGVsX2RwLT5wc3Iubm9fcHNyX3JlYXNvbiA9IE5VTEw7DQo+IMKgfQ0KPiDCoA0KPiDCoC8qDQo+
IEBAIC0yOTIyLDYgKzI5MjYsOCBAQCB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0
cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoA0KPiDCoAkJbXV0ZXhfbG9j
aygmcHNyLT5sb2NrKTsNCj4gwqANCj4gKwkJcHNyLT5ub19wc3JfcmVhc29uID0gb2xkX2NydGNf
c3RhdGUtPm5vX3Bzcl9yZWFzb247DQo+ICsNCg0KVGhpcyBpcyBvaywgYnV0IG1heWJlIG1vcmUg
cmVhZGFibGUgOg0KDQppZiAoIW5ld19jcnRjX3N0YXRlLT5oYXNfcHNyKQ0KICAgIHBzci0+bm9f
cHNyX3JlYXNvbiA9IG9sZF9jcnRjX3N0YXRlLT5ub19wc3JfcmVhc29uOw0KDQpCUiwNCkpvdW5p
IEjDtmdhbmRlcg0KPiDCoAkJaWYgKHBzci0+ZW5hYmxlZCkgew0KPiDCoAkJCS8qDQo+IMKgCQkJ
ICogUmVhc29ucyB0byBkaXNhYmxlOg0KPiBAQCAtMjk3MCwxMiArMjk3NiwxOSBAQCB2b2lkIGlu
dGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gwqAJCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwNCj4gwqAJCQnCoMKgwqAgcHNy
LT5lbmFibGVkICYmICFjcnRjX3N0YXRlLQ0KPiA+YWN0aXZlX3BsYW5lcyk7DQo+IMKgDQo+IC0J
CWtlZXBfZGlzYWJsZWQgfD0gcHNyLT5zaW5rX25vdF9yZWxpYWJsZTsNCj4gLQkJa2VlcF9kaXNh
YmxlZCB8PSAhY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lczsNCj4gKwkJaWYgKHBzci0+c2lua19u
b3RfcmVsaWFibGUpDQo+ICsJCQlrZWVwX2Rpc2FibGVkID0gdHJ1ZTsNCj4gKw0KPiArCQlpZiAo
IWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMpIHsNCj4gKwkJCXBzci0+bm9fcHNyX3JlYXNvbiA9
ICJBbGwgcGxhbmVzIGluYWN0aXZlIjsNCj4gKwkJCWtlZXBfZGlzYWJsZWQgPSB0cnVlOw0KPiAr
CQl9DQo+IMKgDQo+IMKgCQkvKiBEaXNwbGF5IFdBICMxMTM2OiBza2wsIGJ4dCAqLw0KPiAtCQlr
ZWVwX2Rpc2FibGVkIHw9IERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMTEgJiYNCj4gLQkJCWNydGNf
c3RhdGUtPndtX2xldmVsX2Rpc2FibGVkOw0KPiArCQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkg
PCAxMSAmJiBjcnRjX3N0YXRlLQ0KPiA+d21fbGV2ZWxfZGlzYWJsZWQpIHsNCj4gKwkJCXBzci0+
bm9fcHNyX3JlYXNvbiA9ICJXb3JrYXJvdW5kICMxMTM2IGZvcg0KPiBza2wsIGJ4dCI7DQo+ICsJ
CQlrZWVwX2Rpc2FibGVkID0gdHJ1ZTsNCj4gKwkJfQ0KPiDCoA0KPiDCoAkJaWYgKCFwc3ItPmVu
YWJsZWQgJiYgIWtlZXBfZGlzYWJsZWQpDQo+IMKgCQkJaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQo
aW50ZWxfZHAsDQo+IGNydGNfc3RhdGUpOw0KPiBAQCAtMzk3OCw2ICszOTkxLDggQEAgc3RhdGlj
IHZvaWQgaW50ZWxfcHNyX3ByaW50X21vZGUoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gwqAJCXJlZ2lvbl9ldCA9ICIiOw0KPiDCoA0KPiDCoAlzZXFfcHJpbnRmKG0sICJQU1IgbW9k
ZTogJXMlcyVzXG4iLCBtb2RlLCBzdGF0dXMsDQo+IHJlZ2lvbl9ldCk7DQo+ICsJaWYgKHBzci0+
bm9fcHNyX3JlYXNvbikNCj4gKwkJc2VxX3ByaW50ZihtLCAiwqAgJXNcbiIsIHBzci0+bm9fcHNy
X3JlYXNvbik7DQo+IMKgfQ0KPiDCoA0KPiDCoHN0YXRpYyBpbnQgaW50ZWxfcHNyX3N0YXR1cyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQoNCg==

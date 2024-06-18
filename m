Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3150690CAD0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 14:01:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A216A10E64C;
	Tue, 18 Jun 2024 12:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TSvl8OAQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D4BF10E660
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 12:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718712066; x=1750248066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1w27Tgxj518k1rnR4X/aN83B7CXP8KAr1U2vjoJCBQU=;
 b=TSvl8OAQKo81Q8SbX+K+06yettrQC5rZTJysZqdtBcQRF+O1Q0tfiTWD
 AtwyuH5QoWZ+A50l27qAOOQoU3Lyi4cNFVhDBt1RuWkwcPWVGOoPdroD/
 omxEL5kyw5mFAWTt+Ly5O2vCIhyTP4XczLDx3sf3BdmIIbPpUXbCdmqkf
 wbmjxO8yfBHTAnJ0zSC2uMjtoymSI1PUYk+u8aBh9MLQqjatz+lgACBi2
 EKacsF1791fYm/x2OustnizUlS5rhgAhw05jCKPxAPAQbd9MBCoDWR3np
 0mk9jLURg92GyiU85q18ugG0ojtc1GLS0A3OReNC9BEg6tNjQD4EtQtBA g==;
X-CSE-ConnectionGUID: EeI47eZUR9yY1r8JW0N/Ew==
X-CSE-MsgGUID: NH6NsuleQpO0ieq4SNHTYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="26213198"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="26213198"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 05:01:04 -0700
X-CSE-ConnectionGUID: Xa5ndtmvQj+4giMlK1B8JQ==
X-CSE-MsgGUID: Ibyo/tG+RvaLSGAU7yYB3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="46068394"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jun 2024 05:01:02 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 05:01:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 18 Jun 2024 05:01:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 18 Jun 2024 05:01:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z7fjuimom6oMyHnkHIbjWF1RO2QTG1RXJA4rFEzUftX6wlQZJQiNvutya2xqmRXgLwNtTiRw6v9Qzf8Y6CIdSemrh9uyB9f/Ai9UP89z83XUWbu2e7qWvco31jFyJrlThvQ9/qAXzSQs4mBvKWUdTCCtP21eIUDwHI0SGzlCraR+fHtIArrH1qBE0997mI2/6kBHVik5mfykofVv3hQQgHvBIwbeu5xghaNDi+Z+7HiH8SuikfI9wsOx6x4Vsj2WHSPrQiXBfdLWuJ2WeL2ry4uMcD7caKxu9+sII4yOKmKePTKpYCCx2PUAeuuhhBhhkUQUT1++isacxNdsV96y3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1w27Tgxj518k1rnR4X/aN83B7CXP8KAr1U2vjoJCBQU=;
 b=Phrxzt5KH0zmGy/PZw0KPoB8NxyNIpGHacObLTMHtJ7ayY8EA2Zxi4UFnSZr5jQXG78cjm37FeKW4sdr+myL42WOrPatAkbR9cxKcXN0+zP52sR/8SBhPvEVCP0UTcRqnxD0khubXHSe0j3bzZxA0sMvmktXDUaehrUq7LV5EWq0P6L1QrQcFREha7e7yQ/8+zZAbJ5ArN8Ts8UhiBsRyTwTCZeaIhpMoI7+B9Pw732ubu4SvPIWhSAqhNkOyQLUVJSbZQVZDB94j9Qu3+B86nxwORDm/aDMvvONlgpnxX3t+e4VC9F3y8TaKJhasbgsjxqLxK1CAQGBaZ7yVh4JYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MN2PR11MB4727.namprd11.prod.outlook.com (2603:10b6:208:26f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Tue, 18 Jun
 2024 12:00:59 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 12:00:59 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 4/9] drm/i915/psr: Disable Panel Replay if PSR mode is set
 via module parameter
Thread-Topic: [PATCH 4/9] drm/i915/psr: Disable Panel Replay if PSR mode is
 set via module parameter
Thread-Index: AQHawUC5ZlrR4p1gjESy0pw4xvBwObHNa6oQ
Date: Tue, 18 Jun 2024 12:00:59 +0000
Message-ID: <PH7PR11MB5981E70125335B7F4BCB6A7EF9CE2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
 <20240618053026.3268759-5-jouni.hogander@intel.com>
In-Reply-To: <20240618053026.3268759-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MN2PR11MB4727:EE_
x-ms-office365-filtering-correlation-id: 87d06aa0-992a-49e6-818c-08dc8f8e518f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|376011|366013|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?UlBxK0VhN3hveFlaMnF4WnJSZzZ1TTlVZ0pYRlJ4RG5FdlA2ckx0TmRtNnVl?=
 =?utf-8?B?OXoxVjBibXVHbDBOU0tQODh0ZzlnaGg3L2puZk1wRDdOVG4xTXNoZzhaSFl6?=
 =?utf-8?B?bjMxYWxoTjZzV0I3ZjJ1b1puWWRLVURPOENIVU5HSG1qa2p1QXRycjJnekY4?=
 =?utf-8?B?RnB0TWZsRysvM1U0YTF2RE5hSlZ0NlU1QmJwRW5WQVVXTHJ3T094LzJxb1hl?=
 =?utf-8?B?UktFdmNnN01PcjdjcFpRRTJ4eloyREdzeEhBdDh6a3JRVjJhQnUwUWtUWENL?=
 =?utf-8?B?eXA4Wi84VXJDS2VrVVpsT2JlZ2FNQWZmb05SeHR4NDFRdGtPd0VoOHYyRjVp?=
 =?utf-8?B?Zis4RGdYWTFyMy8xanh3bDhtZHg0UkhORk9md2llTXBibkxOQkhkQkhBZC9F?=
 =?utf-8?B?ODI3aGZCQzYvcUFIOFdlUVdabEYwb1pVb3pvc0FEUUwvdmg0c0xuN2QwSkhQ?=
 =?utf-8?B?YiticjJGYnhFa2lPSjNCd0IybnJiVFFnNFQzMjhpR25zUmhaQ0VlNm1YZUJN?=
 =?utf-8?B?WnU5N3p0eXk2M1RSMzRLNWlxSnJPMzgrU3JJZGYyT3ZlMmRDeGVkbCtmVDkx?=
 =?utf-8?B?MG1jemRvYUNVLzZIbjhaVjJwam51TlJmWitrV01ldTNPNWxJWG5wbUhPZnFC?=
 =?utf-8?B?TWxhL3ozY1lFTGJVbWVDdTNTSG1TZFhoT1N6VkpoV1VjTU4zdTdQVlJDN3hI?=
 =?utf-8?B?NjhqWWFNMC9tZWQzdTNSUnliZDhOdjdsaHZEL3pTK1dKdGR2N3VNamNqU2xS?=
 =?utf-8?B?RkczRlhseW1tYUh2ZzB4Mkpka29ndTl3Z2dyRUcxckpwclRVc0hJZjU4TDhL?=
 =?utf-8?B?T3JaWVpSRnR2eDd6OGU4c3pJSE4yRmw3TkFScFJXK1lkV1dZTEQ5Q0NnMGZW?=
 =?utf-8?B?MTVmQm04RmtzOGU5OHlNZjhqMWNlb3d1WEJSRkhsMUYwcTV0c01aaXlraUpt?=
 =?utf-8?B?b050eVdsam9yWHJIM1dlRS9ZVTFZZDBmbDVmRW4yejZRemVFVFpCaVl1cXlD?=
 =?utf-8?B?MVJVbEo3cVBuUHFsOGJ4ZjhwMUhuS3hNTHhtdE05aE50WmtkQjFVQjRVTE9I?=
 =?utf-8?B?M1hWcHJIMWhzUjBWTzJob3g2RkEwYno2OEplZDgyc3o3TnNjYzZiZmY5ek5i?=
 =?utf-8?B?d2tTSTViZVcrbEJ5RU43YXJTT2Jnemp0U0lXakJxQ3FPZFVtVDVVVzBiM01Y?=
 =?utf-8?B?enVrdkxYRmd1czNERHg0c3dGNm8rUVY4S0d4U2VaMmZ0bW1SeExCNndkOFAr?=
 =?utf-8?B?bWduRHR5cmc5YWpIdU5FaG1JZi9mTjZzVVJYdzIyMnRoVlhaOEJPc1FJcEJG?=
 =?utf-8?B?RGdEdFZBalBOcytFalFURVVITm81NmlnSjY4Y0FkSFd2NFBOUlB5Tk5SUEVS?=
 =?utf-8?B?QXIyaVg4L3crVmtnT0tnVlBEMDJXakNKWllGUmhwSFQ2TkdiZW1HZ0FyZ3JU?=
 =?utf-8?B?eUhtdXFwSDJobUdoT2RSdXlKL2RyQjRqU0FSVThnbTBFWnpESXQ3ZnNES05O?=
 =?utf-8?B?cDdnRnp5Sm42R3NBbW1EQ2FYY3NtNmI2OS9HNGlsRlNJNmJDblRsS1hvVEtL?=
 =?utf-8?B?OFFYWW5FU083bmlPMmxCV3VUSVFqZUZSVEtnMFd5eFNtT00yTmU2MDlCeGRj?=
 =?utf-8?B?aFZtR0hNR2QwZXRUWklSV0JKZ01OMGdPNEJMMHQ2RFNWLzU4Z01ydVo2eGVr?=
 =?utf-8?B?RkRjbU5nU0pVSExDUldQaEpoRjNJR2kwaC9YamdmbDhVcFZMbkY2R1dENGdZ?=
 =?utf-8?B?Si9LV1MxNElxdUE0VDhaSzc1L3l3UTFFVWV6MWVjUjdPSFd0bmNHeXVGQkNk?=
 =?utf-8?Q?F0vOIgpOSNqcz5IwjP8Sw3a/CZVJp4asTYkzQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(376011)(366013)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVpDbDRiMllucTJ2Vm9QWllCNTRqOUVEY2o4UEwwRXBCSy92QXpCL2d5QVFO?=
 =?utf-8?B?djNMOXBkWFo1MndCclRUSlNtSHMxUE4zUWZwcHFNNVY2UGh2YmRGZytOTjMr?=
 =?utf-8?B?cndXK2JYdVFZdVh1YVY1WlJ4a2dzOWJ2QStnZ240QzdNQU1GVG52WlNEczRW?=
 =?utf-8?B?M1A5aGhIbktwU0J0K1BMaG1EUlZrK09XRUtiZmRwcG9JNzg5bXJncUxEUmxS?=
 =?utf-8?B?eWhrZm5jazJNOEx4NlRRRUZKaFhWK01jV0lUK00ydllOOU90cUI4VjFxcjFI?=
 =?utf-8?B?cFBweEJyQXNwQklsaU1wSzJkTTJ2Rk5iTTNUUzJ1cjZqV0E3cCt2U3VQRVpX?=
 =?utf-8?B?S3dNb3ViMzlUYmFJS3Q4ZVdGYzNiMTFZK2c5OXFnRmpaTjVlUS9uR0ZCVm1L?=
 =?utf-8?B?S2hEVmZuendVSlZCenhmMXNvNkJEVzZwanpZd3pKYUhjL2I2K2ptVjZpbGJ1?=
 =?utf-8?B?Uk9qZCtKQkpnMXh5K2lzL2VIY3hwTFhoQzQ2Q3pyR0Y5UDFrZG03LzN4amtq?=
 =?utf-8?B?ODRQanhHOWxYak5hcDl6VXIwOWVPeXRlc2NMd2F3VUY0U3hrUWhob2hoZGlT?=
 =?utf-8?B?QnA0cnQrRy8vT2hUVlRkUHd1MXhZbTkwUHp6TS9pTmZ2aVEwR0RqajQ0TEQr?=
 =?utf-8?B?Tll5c3FheDdLTlRITkdZaFordEo4NkQ5cnhYTE84ZzdFbTBZYlhOelpwWjl6?=
 =?utf-8?B?OVlITTVPMURRemJxM3IyM0Rac09wcTQ4bUFWUWwrS0JJZm9Od3IrdHF6bnA1?=
 =?utf-8?B?blYzakMyQmNENXlpbVQ0R3hHeDVSS0ZKWmQyR3BIQVBxY2hVdFNlTk85c3lK?=
 =?utf-8?B?RFo4dE5idjNjb1FiZlJQN0g0U0pJOEJ4dXVCdXFyU0Y3UW92bnNPcDMyRXNX?=
 =?utf-8?B?M3cyc3ZCeU9BUFdxdU9VclZuSDZkV1lydjhuWXM0VzV2bTJoYjE0S1lwUEl0?=
 =?utf-8?B?Z3V1QmVxSUpDT1VQempvVDFxWGwrcGNnNjRQalJxekZQamdGODY1TXllMXA1?=
 =?utf-8?B?dWJwSGh1ZUpnQ3FRVC9XN3VIalBCUlU2eWh6NzBVRmw1NFpMZENWZ3FlcS9L?=
 =?utf-8?B?ejFJbjNnc3BFOVpuY29Nd2RYNElKY0hrTUJQckFyU2E1YmswV3JqcEdGSkRk?=
 =?utf-8?B?NC9DWjZLUXF1b3NraWhVQm5ZTnc0QUsyMkNWM0tnVEs5NHNKQmIwOENTNDRK?=
 =?utf-8?B?QzRlQmRUQlV4eFViWXdnR29lRnVScGpQR3F1VkdGb1FobWJjVGdsb1h5WC9N?=
 =?utf-8?B?SWhTZWVLZnIwQzlUSkdUV0RHSWx5ajk2YXZpRXRKZHpLUXdlWENGdFIrR2ta?=
 =?utf-8?B?RnErRzRwZ3BJYnBYcnBIZGlyOTYvNFhKMGU2eCtDeVZGSjBqdDhYY1ZFV0gr?=
 =?utf-8?B?Mk5hTzZiM1hiRzhjQ3FwMGwzTk8raEFwaVR5eHZKNG9RSTNyNnBsSG9QYXZh?=
 =?utf-8?B?Sk1vbGtJZmpVL0haQ3cwL1hsRnFvYVVJQXh6STlKc003NXdOQkRNeWhWemJo?=
 =?utf-8?B?WlRzNW9oa1JmaHdEM2E5a3g5dC9ZZFFkdUVFYXpUajB4VVFjV2c4c3ZGZGkv?=
 =?utf-8?B?S2MzSHFtUWRPR0xRYi96cGN1bjN3Q05LRGgvUlczY2JTZWJiMzhBdkViOVRJ?=
 =?utf-8?B?amw3VTk3QzlOcGxiQ3hwZDFucXVnM1YzejZXZHZ3MEhMWTNNOEh0TWlwYXFW?=
 =?utf-8?B?ZUdhRm9YejJSb3VFSjUxelIwTnRVQ3dEZkdoRjFoeWVEQkJWOHN2d2VwUS8v?=
 =?utf-8?B?ODFCdS9sZzBhT1FvVE9pNG45RE14NjY2U29zY3ZnL0F2b1FoZ1FReE5kQlo5?=
 =?utf-8?B?bVJ6ZnhzTmhiY2liRDViUzVGbzBXSXdJYjc5OTdnc21oNHRpaFZlTm51RHlL?=
 =?utf-8?B?MktmNTFQZFRRWU40YXFjVnhDMUY5TWhiRUY5M04xTXFUeEJMMmpSL2c3UVpP?=
 =?utf-8?B?ZWtLd1FkSnpUa3NpY0JadmtScG1yYVBMWHVRNGVNSlBSVk5iUnMyNjhBTlRi?=
 =?utf-8?B?SHJOZGxRQVdhR1E3M0U5dFJMTUdadC9OWE9sb2ZlT05GMkxuSCtwc2U3cndC?=
 =?utf-8?B?ekUzVGxHSk5Jd0x5dmVLdGhxSHVEWHhoeEM4ZkxwQWE4dEVDVUtiNWJJaHpM?=
 =?utf-8?Q?kFJ8wePUHP35xVfHpTx7nlsEY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87d06aa0-992a-49e6-818c-08dc8f8e518f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2024 12:00:59.5735 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k5Nks3mOAjUbGd0Tp1Crg+xwLyNb5jZVa8TEqpzZHg9TBs4prX43Tyl8ccL56BKHmLQNo4xASU+6X2if+sABEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4727
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMTgsIDIw
MjQgMTE6MDAgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCA0LzldIGRybS9pOTE1L3BzcjogRGlzYWJs
ZSBQYW5lbCBSZXBsYXkgaWYgUFNSIG1vZGUgaXMgc2V0DQo+IHZpYSBtb2R1bGUgcGFyYW1ldGVy
DQo+IA0KPiBJZiB1c2VyIGlzIHNwZWNpZmljYWxseSBsaW1pdGluZyBQU1IgbW9kZSB0byBQU1Ix
IG9yIFBTUjI6IGRpc2FibGUgUGFuZWwgUmVwbGF5Lg0KPiBXaXRoIGRlZmF1bHQgdmFsdWUgLTEg
YWxsIG1vZGVzIGFyZSBhbGxvd2VkIGluY2x1ZGluZyBQYW5lbCBSZXBsYXkuIERpc2FibGluZw0K
PiBQU1IgdXNpbmcgdmFsdWUgMCBkaXNhYmxlcyBQYW5lbCBSZXBsYXkgYXMgd2VsbC4NCj4gDQo+
IEFsc28gb3duIGNvbXB1dGUgY29uZmlnIGhlbHBlciBpcyBhZGRlZCBmb3IgUGFuZWwgUmVwbGF5
LiBUaGlzIG1ha2VzIHNlbnNlDQo+IGJlY2F1c2UgbnVtYmVyIG9mIFBhbmVsIFJlcGxheSBzcGVj
aWZpYyBjaGVja3MgYXJlIGluY3JlYXNpbmcuDQo+IA0KPiB2MjogU3F1YXNoIGFkZGluZyBQYW5l
bCBSZXBsYXkgY29tcHV0ZSBjb25maWcgaGVscGVyDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFu
aW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMuYyAgIHwgIDMgKy0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgfCAyNyArKysrKysrKysr
KysrKysrKy0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+IGluZGV4IGFlYmRiN2I1OWRiZi4uNzkxMDc2MDdhNmZm
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcGFyYW1zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3BhcmFtcy5jDQo+IEBAIC0xMDYsOCArMTA2LDcgQEAgaW50ZWxfZGlzcGxheV9wYXJh
bV9uYW1lZF91bnNhZmUoZW5hYmxlX2ZiYywgaW50LA0KPiAwNDAwLA0KPiANCj4gIGludGVsX2Rp
c3BsYXlfcGFyYW1fbmFtZWRfdW5zYWZlKGVuYWJsZV9wc3IsIGludCwgMDQwMCwNCj4gIAkiRW5h
YmxlIFBTUiAiDQo+IC0JIigwPWRpc2FibGVkLCAxPWVuYWJsZSB1cCB0byBQU1IxIGFuZCBQYW5l
bCBSZXBsYXkgZnVsbCBmcmFtZQ0KPiB1cGRhdGUsICINCj4gLQkiMj1lbmFibGUgdXAgdG8gUFNS
MiBhbmQgUGFuZWwgUmVwbGF5IFNlbGVjdGl2ZSBVcGRhdGUpICINCj4gKwkiKDA9ZGlzYWJsZWQs
IDE9ZW5hYmxlIHVwIHRvIFBTUjEsIDI9ZW5hYmxlIHVwIHRvIFBTUjIpICINCj4gIAkiRGVmYXVs
dDogLTEgKHVzZSBwZXItY2hpcCBkZWZhdWx0KSIpOw0KPiANCj4gIGludGVsX2Rpc3BsYXlfcGFy
YW1fbmFtZWQocHNyX3NhZmVzdF9wYXJhbXMsIGJvb2wsIDA0MDAsIGRpZmYgLS1naXQNCj4gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAyYTMzZTM1Y2VlZmYuLmNmY2Uw
ZmUwNWQ5MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IEBAIC0yMzUsNiArMjM1LDE1IEBAIHN0YXRpYyBib29sIHBzcjJfZ2xvYmFsX2VuYWJsZWQo
c3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAl9DQo+ICB9DQo+IA0KPiArc3RhdGlj
IGJvb2wgcGFuZWxfcmVwbGF5X2dsb2JhbF9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50
ZWxfZHApOw0KPiArDQo+ICsJaWYgKGk5MTUtPmRpc3BsYXkucGFyYW1zLmVuYWJsZV9wc3IgIT0g
LTEpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKwlyZXR1cm4gdHJ1ZTsNCj4gK30NCj4gKw0KPiAg
c3RhdGljIHUzMiBwc3JfaXJxX3Bzcl9lcnJvcl9iaXRfZ2V0KHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9f
aTkxNShpbnRlbF9kcCk7IEBAIC0NCj4gMTQ1NSw2ICsxNDY0LDIxIEBAIHN0YXRpYyBib29sIF9w
c3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAlyZXR1
cm4gdHJ1ZTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgYm9vbCBfcGFuZWxfcmVwbGF5X2NvbXB1dGVf
Y29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiArDQo+ICsJaWYgKCFDQU5f
UEFORUxfUkVQTEFZKGludGVsX2RwKSkNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJaWYg
KCFwYW5lbF9yZXBsYXlfZ2xvYmFsX2VuYWJsZWQoaW50ZWxfZHApKSB7DQo+ICsJCWRybV9kYmdf
a21zKCZpOTE1LT5kcm0sICJQYW5lbCBSZXBsYXkgZGlzYWJsZWQgYnkNCj4gZmxhZ1xuIik7DQo+
ICsJCXJldHVybiBmYWxzZTsNCj4gKwl9DQo+ICsNCj4gKwlyZXR1cm4gdHJ1ZTsNCj4gK30NCj4g
Kw0KPiAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwNCj4gIAkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0K
PiAgCQkJICAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpIEBAIC0N
Cj4gMTQ5MCw4ICsxNTE0LDcgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0
IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAkJcmV0dXJuOw0KPiAgCX0NCj4gDQo+IC0JaWYg
KENBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKQ0KPiAtCQljcnRjX3N0YXRlLT5oYXNfcGFuZWxf
cmVwbGF5ID0gdHJ1ZTsNCj4gKwljcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID0NCj4gX3Bh
bmVsX3JlcGxheV9jb21wdXRlX2NvbmZpZyhpbnRlbF9kcCk7DQo+IA0KPiAgCWNydGNfc3RhdGUt
Pmhhc19wc3IgPSBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID8gdHJ1ZSA6DQo+ICAJCV9w
c3JfY29tcHV0ZV9jb25maWcoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiAtLQ0KPiAyLjM0LjEN
Cg0K

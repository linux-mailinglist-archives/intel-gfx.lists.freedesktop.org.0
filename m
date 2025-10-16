Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750C3BE4B5F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 18:58:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0339510EA58;
	Thu, 16 Oct 2025 16:58:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NQhXu3AT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A99210EA6B;
 Thu, 16 Oct 2025 16:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760633893; x=1792169893;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=JNx+s0kPZ1wwJGTxOt9DBxX+mqW+HM1L9DPPP1BahXM=;
 b=NQhXu3ATTjaZVEMHwqAzJV9EI9YtkE6Vd4iyrRTkoqKMIZS2Ue67oLYA
 3i9MEpX3/jgKNy0ooyfQip2MGEjiTkQAiYmXiqhu3oyYA7LaawIoEf0A+
 OXO2vwUiCJpYYhgS3l+FyJ3NzXZx9hlfHYbN5bwJtNqxC1QB4pDCaU+TH
 2PTMv8gKVztFOoqLz0qRkXtykjIvw4IFBuuK4OToac+6Wo/DXPjfH/TG1
 EwG6qDLlybaZHjzQa70wFxstXtQBWSDmf3AHV810DoUuYY5byGgKPpoKu
 xOQXX/f6rPpdTaEi+Pfb7o5YJN1L/VtO/RLgnH8ZBljFH7Csu/lIQGl5Q Q==;
X-CSE-ConnectionGUID: N7ig5TbNRhSoAK7egTVBiw==
X-CSE-MsgGUID: l8XIpc3vS/qyuEydQPHedw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="80472110"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="80472110"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 09:58:11 -0700
X-CSE-ConnectionGUID: 2unRUDR1Sba0kri8z0R9xw==
X-CSE-MsgGUID: Tzd6N93PSBWreLQeJePm4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182437897"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 09:58:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 09:58:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 09:58:06 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.9) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 09:58:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DnGEEDZVAk0FCqJjvybBqqQpjH0WqqhSGXA6rZoVot1vmY2wJvcgmw8pEbeijimHdzftYx5+sKYgqq349PbQH+bPnpvWfnnvrXR56By16sYrcMzpTmtyIi3Q4PNDXIoka6qm5UN0mCsCbFsHrCzCAWfiCa8kJMC6Sni0WkPwfKH1I6rG7W3mKUcORdiOzV4r7fPDwxmg4mb5encLrWUq1aNbuBwm9aC/r3TUnlHy35sf/FUsJit4X3idESePXjkQE+2C0TEKakKlDbhpv7RpX4S+oNYezccWiAoTepNLDsF9B8yBnPzSebM6JM5yVp+RgZb/YSL0t5is0qM7CrqiIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JNx+s0kPZ1wwJGTxOt9DBxX+mqW+HM1L9DPPP1BahXM=;
 b=MiIKgw9nEE/QfJ4/HaZs/9ONhKYWsT6kv1syHjdJ5FsGLWWdH2wfiBgVSM6Nu/XCZN9ODi5eCxUDZkzZ035WnmD21cG3ImWpVsAZqfgAmbK1qewH/nQTotpH1kHMOwYQQi2r7tAIclOTDKT9bSiUZ2kjI1CE72rNvENTIHxpD9gPGWQanJkKc1yrQVEOP9Z3E/Z/Xb4oUNqfHT5TORdASr23PHCuqwHDWxQpsFRvk+cGOOBQ1j/EvP9o2/JQ34+BhDWr5Xwvvyuw3iqE8KNpVxXKPS6CIsC4UFw+B9OVGhW1cURHUFWIpDVSI8yl0QriCsH3QXP4KRsevG3QlBaZVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.12; Thu, 16 Oct 2025 16:58:04 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 16:58:04 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v2 4/7] drm/i915/dp_mst: Reuse the DP-SST helper function
 to compute FEC config
Thread-Topic: [PATCH v2 4/7] drm/i915/dp_mst: Reuse the DP-SST helper function
 to compute FEC config
Thread-Index: AQHcPfCQ6gLwABE4yUCC60qTIw680LTFAC8A
Date: Thu, 16 Oct 2025 16:58:04 +0000
Message-ID: <c53a7f653eac67266dc178a70833a8955b536291.camel@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <20251015161934.262108-5-imre.deak@intel.com>
In-Reply-To: <20251015161934.262108-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB4870:EE_
x-ms-office365-filtering-correlation-id: 38590acc-e498-4b04-5149-08de0cd52c42
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VlpsMFR4NUlqU2ZUQThOMDZ0VzUzNjdhQ0twRlJEYVIzejRpMWhVQzloYlJB?=
 =?utf-8?B?LzVvVVdtWVA2K2dQUGdjVjNhVjVPRnRyOTJJc2tNNnE1T00ybklEdGg3UHF2?=
 =?utf-8?B?bnJEejAxM2w3VGFUYko4QnplaWFmbHNLVzVPMElHM1E3WXFNazVVWHl0YWEz?=
 =?utf-8?B?SUlWNXkvUElpNWZScjFPQUdybGVXaC9lWFFJcWR3MnlQT2J3RFhTWGcrS0s4?=
 =?utf-8?B?VXp0R1lwSzhTYk1hK2ZEejhZYi82VE9IalRGenZySWdzVzZYNzdmcFdoaGd5?=
 =?utf-8?B?SFI3aDdKVndteGF5MDBiNVBmcThkazgyV2Z0WTd0K3VvQ3JmYklIOVpNWW4w?=
 =?utf-8?B?enE1R0lob1JnNHpQTmRuWWxwZU1pdS9zYXllVm9wdm9ObHQzY3hHYXJPS0hP?=
 =?utf-8?B?ZHlDdWdlL1VTdmxPYlEvUnJsa1lPb2pMQzhjWWNObUIzdHpnUWVPYnB3SnZE?=
 =?utf-8?B?U3gyUUxmUEt6V3NSWU9EUXlWU05rblNWUk1ydEUrWWJEeFljOS8wRnl3Rmlj?=
 =?utf-8?B?ZzJVKzRRclU4OGdCWWxreTRZM2djWmF5YVJXYWxGbW1ha2h3cGdFaVlTOFRS?=
 =?utf-8?B?OGxLWGtnVk93d0x2NEcvZ1VVU0hELzZKMEFhQ1M3SDMrdjhiUUJ5eVdzeVZ3?=
 =?utf-8?B?dGQ3bjZZT3FaN3pyMVN1K2Z5WEVpMkRnQTNiS2RRWlUvSXU2ZjgvVzRPVUgw?=
 =?utf-8?B?K2haTFVSU2lPN083QkJBM29tVkZIeVZ2VTFKZ25qZ2hWdnIzMTF5QjZjbVZL?=
 =?utf-8?B?OVVZbXFsaDBWV1ZZVCtMOThvTndYUFhYSlBGZkhVNXdEYnN0dEt1ZCtQTTUx?=
 =?utf-8?B?K25takVsWStwT01xUERqNFNhMG5zN0R6S1htVVRHWlBoS001WGR1Q2RWaXdP?=
 =?utf-8?B?OFFadC9Zam1sQ01hQU9KbmJvckJHazk1d3VhSlI5Njh0cTRnZGE0OVZ5Mmx3?=
 =?utf-8?B?eTZ6QkE3YXZBaUhOalYvbXlScnFKeUJGUFBUVUpKejZzdmphM2NDS0xBM0hN?=
 =?utf-8?B?K0NFMjhXcTM4cXR1MzUyeWhZRUU1ZmQ2Z3B1UEM4SWJLZ1RSMjg5T01SNUNN?=
 =?utf-8?B?d1VZRTN3RFFlY3lYdlNZSkg0eHl3ZUxmeXNheTJyR01wYXllcXpVZDFra3p4?=
 =?utf-8?B?aXI2anRubXNvR1RPdW1hK05CeUd0dGNIQ05Zbkp1UTV5d3ZhOTBIcnM5Q0pV?=
 =?utf-8?B?bndRVWRwQjFPU1dtTzlWZjROVVQ1K3hBVjdhaVpvOXovOUdwa2wyV2FEUmlR?=
 =?utf-8?B?Nm5mbjFwcTBoRFdkQWNIc25vRmNZbnJkekx4M1Bpemt4SkIvcG9EQTBVdXpw?=
 =?utf-8?B?ZWRCekhDcE01ZEhvQW1wSVhVRkZ3aTcyN0h1UENCaFF2MlMxTk53SW1NYmFN?=
 =?utf-8?B?MWl4UHM5cURkOVJOQmRodGxlcWl0aS83dVl2RGJ3ZTAvOWhjcStpWStMeXZi?=
 =?utf-8?B?S0l1azBHNVBFc3NhUWtObW9ieU5xWUVudlVIS1FhTUwrUWhFS3lBTlN3ZXBo?=
 =?utf-8?B?L1AzMWozM3BQOVozSVBJd0RqWlVMeDU1RkZzZnVHekJremUrT0JleUVibG1L?=
 =?utf-8?B?aEUvSzZsNXBFbGRiY05JSGVJai9RYnQ3ZGJFM0hEMXBkd0tERUhSOFI3TDFm?=
 =?utf-8?B?ZWFFU0p5S24wcWtKMjJjbnRBVmJrRTNrdTdaTlF1bE96OUVvN1o0VDBnd2dD?=
 =?utf-8?B?R0l6NldRNGp4L1VYSVJwT1Z4YU9abUdrUVc0N0IyRTMvV2JoMVJSQ3RCQXdK?=
 =?utf-8?B?UFQ5WTBZbFFuUDdqS0VMS3kzMUxZZ3hVK0x6NS9QQUlzcWxTK2NDaDMybWhO?=
 =?utf-8?B?WnNlQmhFTUR1S09maVV2QzZ3L3ZKL1U3UXViWG1Dc0hXVG9QV1NDZnNCQXlY?=
 =?utf-8?B?WXJma0RwWTJteUJjeExWcUExZUh0ckpOVHVMRGE2c1ltaW1zaU04MndlQ2Vp?=
 =?utf-8?B?a0YyOUZLY2lnTDZBT1R1emt4c3NoSThtVVNMb0ZqdEE2YVVaVjhFdEhneXdG?=
 =?utf-8?B?bGgrTSs2QThjV0ZLTlpUN1Yrd2RmS2RZQWtONU5DWGJ2Ty9kd09XdDVvMkx2?=
 =?utf-8?Q?Nx9OGd?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VzcwSHhFRDk5c2JldVBkOVZ6SXBrUGNFRTZNOHcyd24vUm5zSkE3YmFTL0Z6?=
 =?utf-8?B?YUs2RHFJYWxXOHdGcFdaZEJMSWJUWnNqazFFMys2VkltcjBPRHpGZk9yV3NC?=
 =?utf-8?B?RWRTUzJtRk43Q1RiQ3ptZVRzeEYzUTMvV21ZZzlUUEMxamJhTExKOW5hdk9I?=
 =?utf-8?B?RmdYOTErbUM5VE1kQSs5N1UwNHBlWmpzMGFXR0w2QXRHQ3ZLSlFtQzZSckNi?=
 =?utf-8?B?aEUraDhzdVg5em1oZlRCNXV3OXk3bCtUNXFYSDFKVVBFWTNzVmtxUnZPY0cx?=
 =?utf-8?B?aWl6eFdFdW51Rm8vdlJvMzRWVGg1K1dYV0RBMlNUNjN4Tk53dWt3VEo4TDZh?=
 =?utf-8?B?MCthempZYzVQWG1DQzJFUVN5RUlJeVRlTHk4ZXh0TSszek1rSzNRWUR2YkF6?=
 =?utf-8?B?d3cvblFQbkZ5NnlpcDN4TEJFbjUrUHVueEs2RG80Q3l3Y0VrVjkxc3JQNnFY?=
 =?utf-8?B?UUZtbmJhR1Z6cVY5QTk0dG8wNmpRdWNuU3NpcG1zcnI3dTRtcE5OSmhqbFkz?=
 =?utf-8?B?a1pubWNVeXZkcTRRcTNMWGp3L243Y0ZZcDkrTmJMWWhhOWZLWHRaZERROXUv?=
 =?utf-8?B?YnBhMXB6V0VjVHFSV1pxSjRNMisxVFllaGRBTXVJcVUyUXhTSkZacE5Odk5V?=
 =?utf-8?B?S0dnQ3ZPR0RKOFUwUmptbHRvYmNhdStxYUxPTnZVUDZ3ZXBQK2E0MkkxMXpQ?=
 =?utf-8?B?eGl0U2orVktCMDlidzdUeHlKZ2xzNE0vUS9sWWFmQWZpTWJiTGMwOXRZT2hz?=
 =?utf-8?B?bnhWaHFGTGJnRElTTnFUdEk0MzgvdGNOK2czSEs2TzlEOUJIL2hlY3hEQUVt?=
 =?utf-8?B?RmRta0hNRU54QjhuZHBvYURIa1VQRWVpWHd6V0w5Qk9rZUdHTVJJb0VodmND?=
 =?utf-8?B?Vy9ldVNyRTBNUWlUeFVxZzNZNmZVQTN3U1BBQUtMQVFxNk5FblF3ZENDUm8z?=
 =?utf-8?B?elRxckdVN1FtdTdGbDhGZUlSTG56OXY5U0Rya3ZXc095dHdrWGhpRjFKNk9E?=
 =?utf-8?B?TmhtU3VLaHZWazBaN1hrZWRjRUg5blMwamxzeUVySVdGT3BJRis3R1pwZU5O?=
 =?utf-8?B?ZU5XWXVNSGV3Vk0wV01DSlRDL3lMMkdSdjlPNXBkckpHNVlLVVZ6c0k3Y2pu?=
 =?utf-8?B?Y04rTXB2UjIwMUMveDhhb0kzNHUwQ0o2cGpqTUhrNjVQZVZlY2h2TXpJUFFq?=
 =?utf-8?B?SmN5aTFzc1RhUy9uSVppWExYOHgvOVF1YzFLTlBPblhUcUlNY3dQREw2OStG?=
 =?utf-8?B?cEpBTXNwczFudnhEZXFUM1pydHAyR0p4ajJyNlp1dWloTjdzZllyWnh3ekE4?=
 =?utf-8?B?dWxRbFRMNnJ0WUtJT2dwaThyRWZldW5vWEhGN1krVklDbTA5d1dKZ0Z1VkRG?=
 =?utf-8?B?dkxKbzVpU0NEUTVmMkNKYW8xTnpPNkcvTThlU29wcHZaZ3ZSK3pYOW51VmFN?=
 =?utf-8?B?dC9ua2lMQ2Z6SjFZbk5SRm41dTF6VFRyUVlUWGVOME5ZMWFxSUF0VUtCOVpx?=
 =?utf-8?B?YVcyWnZPSmZTMlE0YnBUbmJUQWt0M096MCsvMnA0aTRUdllRZDdkZXhkRmF4?=
 =?utf-8?B?SFFDOTZNZUo5RUhKSC9NdTlGWHMzcG1PT1JhTlQvdHJTOGYzc3JnMkRld05E?=
 =?utf-8?B?RlBxZkY3ZU10RkdFOUJVOWR6dEtYbzlLaUtlbFdwRHkrTUI0TzR2SDRYR0t2?=
 =?utf-8?B?TTkvT3ZTTGJoT2hHYkpUMWVoZ2ZReWJuWit2VFBmZUNKYWhSQlVlUTJ6Qkc4?=
 =?utf-8?B?SjIwVUZhUTk4VFRNS1pSM3VySXF2cHN0alQ3SXZZeEN4UFFtc1h4VmR5bklR?=
 =?utf-8?B?RVNvK0UyV3drZVd6amdYSHluQlQ1NG1WYTVKeUF0eStqZ1Nhb0dSVW9BYzdi?=
 =?utf-8?B?eFMxYUlML1lOWGUwMFpGdXdSOThCb3Q3aStjZm5Ea28rREZaOFpOeDh5dEJq?=
 =?utf-8?B?SlZ3d01va1dGdWRCS0xzY2VpSVZYOFpwWUd5R2pjVjg2aElkYmxMUW52K1Bu?=
 =?utf-8?B?alFrbGlEYXJtVFBNUGlPb0RGQkJyYytaVUo2WkVEMytCRkhmeFJ6V0NzS0h6?=
 =?utf-8?B?cFFzQUQwS1RHeVhWSHJNeVl1eTZBNGZSMk9lVHJiOGkxS0t0QTlrT2UrT29s?=
 =?utf-8?B?TlFPaG9JMG5wREIvYmU2eE5rck5KSHRBVGZ6R0tuU2kwWGFjMXFweEZYZnpz?=
 =?utf-8?B?UjU0ZThKM3BRQXUyaGI5bGpId0VCREFMRVVOYWNkMjNkNXFkWktxZm9rTHJz?=
 =?utf-8?B?VXAwVi9ueWgxUDBXbEJxRW1Wd0Z3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <361CDD2A1A635F4FA91357EAFC25129A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38590acc-e498-4b04-5149-08de0cd52c42
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 16:58:04.3000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B/6LeCcT6I68DtH7xSx6aInCMfYxN7iAlI9Ci3xQJGOw9Nq60Ekzkcmrwj4kDGPuOSj9QMfDGaBbf9Rt8QHzD0lgVyQoTTTXKQNaemBaaVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDE5OjE5ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFJl
dXNlIHRoZSBEUC1TU1QgaGVscGVyIHRvIGNvbXB1dGUgdGhlIHN0YXRlIGZvciB0aGUgRkVDIGVu
YWJsZWQNCj4gc3RhdGUNCj4gZm9yIERQLU1TVCBhcyB3ZWxsLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAxMCArKysrLS0tLS0tDQo+IMKg
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBpbmRleCBk
MDU5MGI1ZmZmZmQ3Li4wY2JiNGMzYThlMjJmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gQEAgLTI5OCwxMiArMjk4LDEwIEBAIGludCBp
bnRlbF9kcF9tdHBfdHVfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9k
cCwNCj4gwqAJICogYWZ0ZXIgaXQgd2FzIHNldCBieSBpbnRlbF9kcF9kc2NfY29tcHV0ZV9jb25m
aWcoKSAtPg0KPiDCoAkgKiBpbnRlbF9kcF9uZWVkc184YjEwYl9mZWMoKS4NCj4gwqAJICovDQo+
IC0JaWYgKGRzYykgew0KPiAtCQlpZiAoIWludGVsX2RwX3N1cHBvcnRzX2ZlYyhpbnRlbF9kcCwg
Y29ubmVjdG9yLA0KPiBjcnRjX3N0YXRlKSkNCj4gLQkJCXJldHVybiAtRUlOVkFMOw0KPiAtDQo+
IC0JCWNydGNfc3RhdGUtPmZlY19lbmFibGUgPQ0KPiAhaW50ZWxfZHBfaXNfdWhicihjcnRjX3N0
YXRlKTsNCj4gLQl9DQo+ICsJY3J0Y19zdGF0ZS0+ZmVjX2VuYWJsZSA9DQo+IGludGVsX2RwX25l
ZWRzXzhiMTBiX2ZlYyhjcnRjX3N0YXRlLCBkc2MpOw0KPiArCWlmIChjcnRjX3N0YXRlLT5mZWNf
ZW5hYmxlICYmDQo+ICsJwqDCoMKgICFpbnRlbF9kcF9zdXBwb3J0c19mZWMoaW50ZWxfZHAsIGNv
bm5lY3RvciwgY3J0Y19zdGF0ZSkpDQo+ICsJCXJldHVybiAtRUlOVkFMOw0KPiDCoA0KPiDCoAlt
YXhfZHB0X2JwcF94MTYgPQ0KPiBmeHBfcTRfZnJvbV9pbnQoaW50ZWxfZHBfbXN0X21heF9kcHRf
YnBwKGNydGNfc3RhdGUsIGRzYykpOw0KPiDCoAlpZiAobWF4X2RwdF9icHBfeDE2ICYmIG1heF9i
cHBfeDE2ID4gbWF4X2RwdF9icHBfeDE2KSB7DQoNCg==

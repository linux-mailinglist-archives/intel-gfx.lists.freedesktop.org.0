Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C403C68FEE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 12:10:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71F3710E47C;
	Tue, 18 Nov 2025 11:10:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BLn1f5yt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7753D10E353;
 Tue, 18 Nov 2025 11:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763464218; x=1795000218;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5HAydxaD+ey75SUVVutB4C4JF0+TjIC9WU3ZsjEzx78=;
 b=BLn1f5ytwdxDgi+l0BbFHcsJDIeFAfRe3gMGF0f4NMXNEVzrOCpwLPxD
 UCtSeTVaVeKqG+NMs9iAA9idjxJqDqEfFykyOCDMWAhI70olhH3HAeDtj
 5vNRkPtICGyYAYeTuQMp0FsOH7eq38OOZOrdMuHRXdo2Xej2UJmKJSf0/
 KC8xRQG4IZATlqQhIu4iUTPaC2VxtAjgxquuANYIE6O1dmpyl8u3uFDZy
 rX13EPuL35yI3E+MF0QWWj5lPA2H+5/Fo2WpEcz+ug6Q6wqaGGy0d7CeX
 s6W29bQszSLAmNMkzQlbtAnaRsuO4rYXoMzpT1rQ+rQ6moJiDDSVtNwL2 g==;
X-CSE-ConnectionGUID: j2Ve0H1XQ6CF9bqbZkIF5w==
X-CSE-MsgGUID: EhikIexEQK+gYOapy2JinA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65512947"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="65512947"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 03:10:17 -0800
X-CSE-ConnectionGUID: 5mB4F8MERem+YcUZ0onLEA==
X-CSE-MsgGUID: mD60dklmTau8du+V9WOyyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="190959557"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 03:10:17 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 03:10:16 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 03:10:16 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.8) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 03:10:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qQEEOpVB2vF5e2ZN2jSJECfbWQo9/UXi2UpAVMwIZHl1D+ofPkeABnq4WLjOevaUmMTcsVdzvqx11ZWLbQ1kwgynaall5Z7R/p2rOXOrdYEnvCWggP8XE5H+Ps3d5h0Oy/MwT4B1HZjCE6kbeSJQ2xLJPzaFweIS2LD4MN5guz3RKhhuPVqcAIcblhtKpAX1qbstm3nLmP2Szi6EwZoSXLpEVIDUElOdVTtBtKsv1qUc1n9FmtHf/au4R97B/iIxBdEkADMQO5Ho9ZtYucKnb+uveG7MF2B7AAapHGfyY6JBfHj9wj8mXzIM8N3h59F8IXsFFq5AWPpDVVvEuHVKSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5HAydxaD+ey75SUVVutB4C4JF0+TjIC9WU3ZsjEzx78=;
 b=lKcNmLHQXp967e/fI2oygAGkxCJStcPxaMrTaFi3A7Sdx51ofqBW0i0sqKjXDdJ869hGE8aGpJsNEbwnHY5uja4xJPzfps/37RFOKfAoCbUmv8KEN16Ta2keyecTTgWSJ0zYIukjR5MUP4FgWbI5TjD3yzDxg24GDdD9WDlyRBfm1SMDsMv8Xrvxk0VG6SXZ/m//Bb/yY1QwL9pVjQ8e1NnDL00+ThnehQa+P3IkvLL0pBRq4k+ULf7XK48IMjpwoth1Mjv2FmNviLr+llXOKchnTO0EBVrKANtsgBvELCkDy5sPdtCLUFc9Nhdm1Qpt9NqpgdXhoNEU9gPgUB5aHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by DS0PR11MB8666.namprd11.prod.outlook.com (2603:10b6:8:1bd::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.18; Tue, 18 Nov
 2025 11:10:14 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::250:1566:d191:a23b]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::250:1566:d191:a23b%4]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 11:10:13 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IGNh?=
 =?utf-8?B?bGwgaXJxIGFuZCBycHMgdGhyb3VnaCB0aGUgcGFyZW50IGludGVyZmFjZSAo?=
 =?utf-8?Q?rev6)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNTogY2FsbCBp?=
 =?utf-8?Q?rq_and_rps_through_the_parent_interface_(rev6)?=
Thread-Index: AQHcV+biMDHnaEtOxkKykmypsjgm1LT4R8Aw
Date: Tue, 18 Nov 2025 11:10:13 +0000
Message-ID: <CH0PR11MB5491E0EEDD64C8EBEBC82C57EFD6A@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <cover.1763370930.git.jani.nikula@intel.com>
 <176339912272.2934.14955772788609189358@a3b018990fe9>
 <e078c38b6e735ac8c1e16f2174601563c727c7d6@intel.com>
In-Reply-To: <e078c38b6e735ac8c1e16f2174601563c727c7d6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|DS0PR11MB8666:EE_
x-ms-office365-filtering-correlation-id: 0f1c828d-bcf7-4d6e-72b4-08de26930bf8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700021|7053199007|13003099007;
x-microsoft-antispam-message-info: =?utf-8?B?UGhpaFFyRUp6VVZ1UDlMRUlRcktUeG53QlBMZWx6ckVaK0xOL0ZmT0FxQUJ2?=
 =?utf-8?B?NlJsMjNkOVo4MUxYUEEwdUJZSFJsRDI4dDl0OWt4d0p6VGs1RUljMWd1YjdT?=
 =?utf-8?B?MTI5UEtwa3dKSjJRZU8rc21JemRUdFRURnRFbGh4OTNBeTk0MXlqbVRMaEJz?=
 =?utf-8?B?Z1lVN0wyQWdlOTNCamREaGw1NXN4S3I3dlk3dXM4WE1UdWM5ZTRLY1FNVXlG?=
 =?utf-8?B?cDhrRzg4RE5OVHk1eTNWNjVDck1wZyszZ3UrdEE2M2V0YXJQaERPTjNrMmJh?=
 =?utf-8?B?TXdYam9iRnVjeTNxQWI3RjRMcndnQ3B6K2hwY0YxWWNBY1hGcjJGcUtEZ2dh?=
 =?utf-8?B?MVE0RTkwOU15OWJyMGFwckM0RVNWeFNrb3ZrSE9YcHhZVjRSdFNEZzlYY1Iy?=
 =?utf-8?B?UU1uRXd3SndTakt5TFVNN0V0SERzWEt4eW13ZG5GOVJ0Q0NnQnFQWWtVZVFl?=
 =?utf-8?B?citvWmZDVHoxQ3JjVXJGMmljUUk5QnpmSzM1RmNqRWlkQXBXUTFXNHRpaEZF?=
 =?utf-8?B?UEpjL2g0dUpWVzhHOSsrWGNheVFUQVRsdGhHWGlpTEk5VnFoMzRlTTQySXJU?=
 =?utf-8?B?c1J3TE9Ob3FwZ2M2OW93ZG1QeWJsa2ZGZXlyY1ExTVp1RnZua1owa0tUQVdO?=
 =?utf-8?B?aXY3ZHBVNkEzdnpDdEUyWjNoSy80WURJYkJML2JHQUo2SlRRNlFEL3BnNHp5?=
 =?utf-8?B?WDFLeFBvT2RjNkltYTlEWmcxWGsxWnNaejBZVkRGaVAyTXdJeWN5NHRXV1Mv?=
 =?utf-8?B?STdRaU5weDNwOHNCU0VPdFVuOVBxM00weTZRdWp0ZGdaZnVtVTlORUIyTzJa?=
 =?utf-8?B?ckIwQmFqU3NQT0FaQVZMWE5GVnBsS2N0MUt3NU10bDBmUW9ZckNWWFVpVVNY?=
 =?utf-8?B?ajg0TWlYaGdXdm5vQ2NRLzNRbUR1VlRzSm1LcmhYaUN6RjhXQUdrRXpGR0ta?=
 =?utf-8?B?cVRHaEgrcjJWeWFFR1FCRnhqVm1mNjI0TlVta3M4STI0WEUvTEIwMm44ZE1H?=
 =?utf-8?B?M0ozR3E0TVZycGhqSnprZXhIOUYvdWE1dm9jRER3eFFXbHJQNHpPaGZVcVFu?=
 =?utf-8?B?S0YvR0FhUnFTbFBlQ0tTMVdmUUtIdWl1RXJlV2liOG5EcmJCTHlPckFFckZq?=
 =?utf-8?B?RmdHZGI3cFBscGVkY056MkpBQjB6dzNHSExzWFlMY2tkR0Q5NFpOdGNBanJx?=
 =?utf-8?B?TytlZkRZRytmRVdsV2RSNEcwVU5tMmlUR0w1RVJXaUlCUFV3dWtJVXI3bklL?=
 =?utf-8?B?VmpuWW83QnlqMHNudytneThKME5Ia2k2TFdQR0JGNDFXVXcvalBuVXlFMzlI?=
 =?utf-8?B?c2JzaFVlSXZIbVZmUXlUNlo0NnZQaEtORGhWN1lpdFRGa0NzajI0Slp5WXlP?=
 =?utf-8?B?U2RaeGVUNzdZaG9pa2g3UG1ESG8ybkFDaFd2N20xSW14T2lYZW50bWxkUlpT?=
 =?utf-8?B?T25GWk9yMUJWZDY4KytrT1c3RzRPMG9scURPdEtvOGMwZEZtdzlhaVJLOGtK?=
 =?utf-8?B?c3BoRHl5aks5SUN2SUlZTVZ2WWc0ODMwVXZnUWVsNTFBeC9peEEwNSsxRHR4?=
 =?utf-8?B?QVhyamxGdDdVMnJPbGhIMERyTXJ1VDljN0Y1Mzl1YVFKV3pzejNTNE5rVVBT?=
 =?utf-8?B?dlNuV3Y2WUx6WVVYK0ZvdFN6ME1KY3l5N3FpNmxtZVpzTTREZXhRbStLaytp?=
 =?utf-8?B?U2psUk1JWlp1cTY4L28xRXp4VzQ2Ri91REVzQmhVVGNoTDRLS0o5MGJwTXQ3?=
 =?utf-8?B?VFBWTVBSU3Mwb1ZkSmV3OVZZUEFOQWhkY1hwT1RQMHU1ZVg1NU5NeEVuUk92?=
 =?utf-8?B?TFhMbVppWWk4bSt2eUxBNUJHa0F2QXYwNFJkZ1dwK0lrM1NIU2dPOTh1Y2hT?=
 =?utf-8?B?aEV4cmFWSUg1NU9ZVUFuUWFIWk5saWs4eTNac2VNdGVITzRRdVQ2MkRqL25J?=
 =?utf-8?Q?LKaGg/FOT5cJkGLntbIqWdCR7FmmlCVa?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700021)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?blphWUN4K2tuYXFSZU5oMnI1ZlZKWjFIRldocUpONkJaanNMd3ZrUlVkQU1o?=
 =?utf-8?B?cSsvTENyZGt3ZXI4SHluM2FmMHhiR2Q2dDNKeWJQRWNrZGdPbmd2YXhDZVQ4?=
 =?utf-8?B?b0ltbDd3NEE2WkJqRk1OOGkzRHNuZ3YvWFlYc05Na3gvczY1QzlBeGVIdFp6?=
 =?utf-8?B?MEtEL01lcEdRemllaWhzc2NaYkN5SjVNTDNrKy9qbkNPdUp5ampUMHN2SDAy?=
 =?utf-8?B?Vmp6UkNKN29nbzlSNGtzMmVJRnJaZEFLV2xMYzhadkxQT3kxeWFldlZmaTVB?=
 =?utf-8?B?bGN6R1ozOWRobG5lZmEyKytsekZBZEVnZnVtTnpUZnJDOVhvUldzdDNRdFU4?=
 =?utf-8?B?a1FMYTZ0UHhRYXNnVWpXSjVDNzZQY2RmMXNtcUFWUkUwK0NaSkh3RUNocGJi?=
 =?utf-8?B?T2VHRmszOVJZV3BVa2xwakZBQ1dTVTQzWi81REQ1dC9sS0JpeUZHK3NPL1RH?=
 =?utf-8?B?THd0ZzI2dm9NOWFybVJzUHh5SXVmT1czWWN5bmhVWFFOOHd2Ny9MUVVHQjkr?=
 =?utf-8?B?Z3VmYm5KZXpoVXk5QmJtd3RsNjNwOWN4dlkrY0plSWVHd0hpY2d1c3kvalJD?=
 =?utf-8?B?WUkrM05vRzJ2NnNaQTc2bVMvQ3k0bGcwaXVHajM3MEc3N05pYUM4cldyMkJS?=
 =?utf-8?B?UkozOWJWM1BOcWthdHc5OXZaOUJQK2p6NVBsWGFRKzNxZlJ2bmdkZkxxTWZS?=
 =?utf-8?B?QzFWeTJxbXFYNFk1U0M0K3A0dkZWRktzQ0VjOEY5SXp0dW5waFBmQkdqZUds?=
 =?utf-8?B?YXNaTlgxRzk3WDE5bTBIVzJMaGhuVC8weWtMc1FGblREVmI3bmtpTzd0Mlpl?=
 =?utf-8?B?WUlpc1JzeXRLeFp6ejhpK3JoZXVXeFNOVU9kTTF3TEROK3paK0xYcXBXWVlj?=
 =?utf-8?B?bTU1UkdvWGxpSzFyWVBlWHFLVWxIanNqS3NlcXhoL1RrazVXSk1wd282WnV1?=
 =?utf-8?B?cjRybFdKQWZaYmdRUWZ4N1h6TzJIWmR1SkFJb1lPT1ltNVdVQU5IRisrWmFZ?=
 =?utf-8?B?a3Y3c1Aza2FONGNjRHhPd0ZCd2o3Y1FYQWhQQi9rS0tnZVh6TXhWcElGM2FI?=
 =?utf-8?B?T0w3bXNsR1VLeW93OXN1dEMvMEUrZGpKS2FldVpxTnVaQ3Exc0JuM0pFQ2gx?=
 =?utf-8?B?QStEWVM0NlNUckNxVjRadFJhc3lrb0hZTVFmdksxUm82S2pMR0NMRzRWMFRX?=
 =?utf-8?B?TFZIZFB0NlY2YVBMZ2dTTVhDWFVOYnpFeGZ6dFJzTEEraE45SzBGUlZkNGdl?=
 =?utf-8?B?MWJhaUs3Umk2eGtxa3A4clc3TTBETm54djBLZTRyTnRwbldTN3BweGVlb3pL?=
 =?utf-8?B?dk9sQ2dDcW9GZDB5YmVXcDhXcHlLWUd1VnVLcm5aV1Bqd3h3WFRKN2N5MEli?=
 =?utf-8?B?a2lrS3FESVFZT1UrTEFWejhTYjRaVlZGVnAwWktLdTNva0dzMHprb3dOWkZo?=
 =?utf-8?B?VWdTNE83MkQ4L3F2VEY4N2VWMWcwQkpVM3NZMlN4ZzUvU1dBZ3hHVU1DSmJ5?=
 =?utf-8?B?TWVhb0tGVGhxVzVNMHVFZmdkRkMxUGdNTEFGVjJjOEpEbFhYT0J6ZHd2bGpa?=
 =?utf-8?B?ZVplRVU4aUpaUUJKK2NQY3pVWGdqSFRaNlNvTDdYeDdnV09pa3VSWXFEYkxm?=
 =?utf-8?B?QzVwQnNkZjJKOURRVFJmd2xtRW8yRzM0YWlaT2Z3K2trOC9ROU1Rand4SlRo?=
 =?utf-8?B?M00zenpxdXRhSEZRYU95am1TQ25SY3ArQnFLL3dFc0RjTWtXcWNDK1F2QTN1?=
 =?utf-8?B?Z000MDNqZUdSekk2VDE2RnpBQ1dBUHB4dXdJMHdmNkZXV2dvYzQwZUxZUXh3?=
 =?utf-8?B?QmR0bzREWTNDWmg2ZVJvMCsxaXJDVndnbW9sV2J3U3FkRTNUT0ZxbmJPUzNX?=
 =?utf-8?B?UkxLVWxsS25yMjZVRjBjUFFWNHRqNk93NDcrVmYvcEh2cGxWSTh4emQ5QlBH?=
 =?utf-8?B?SnU5ekdSa2dGMWQvTGNMOW81VkphY3pRMEc5RGxYRG1JVVQ5bCtIbGJRNFVL?=
 =?utf-8?B?Y29sZlZrQXozejJvcUp3RUF2YmRJUHhXZGhhSEtqKzAwNUtDZEpCdWoxTWpZ?=
 =?utf-8?B?SHBNSG5DQUdmUFR4aHVsb09tdDRjNWY3SmhZblBpSGl2RnVBaXg5dEdrWWd5?=
 =?utf-8?B?VS9hYWtMWHJhMzViU2xEdklHd2M1WVZqN1Fqam8yV0YxQnRVbEtFaVErYVd5?=
 =?utf-8?Q?wt2LWSmBt5ql49QZrQ/7+3EP9aH6Qe912HQKvbKToisR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f1c828d-bcf7-4d6e-72b4-08de26930bf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 11:10:13.5940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sKqfB1kGbPaVM4E/7YLqJ1Fppxc/ux0ZkCGFTKgPBMk7G0VGDkSu8qq0OPTQJ8FrTPCezLHXCZOofzqXsG9GmH12kBh+xxDFGsT2dNTubyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8666
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTU3NTc1Lw0K
aTkxNS5DSS5CQVQgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KUmF2YWxpLg0KDQotLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8aTkxNS1jaS1pbmZyYS1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkgTmlrdWxhDQpT
ZW50OiAxNyBOb3ZlbWJlciAyMDI1IDIyOjUzDQpUbzogSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0
OiBSZTog4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNTogY2FsbCBpcnEgYW5k
IHJwcyB0aHJvdWdoIHRoZSBwYXJlbnQgaW50ZXJmYWNlIChyZXY2KQ0KDQpPbiBNb24sIDE3IE5v
diAyMDI1LCBQYXRjaHdvcmsgPHBhdGNod29ya0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnPiB3cm90
ZToNCj4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4NCj4gU2VyaWVzOiBkcm0vaTkxNTogY2FsbCBp
cnEgYW5kIHJwcyB0aHJvdWdoIHRoZSBwYXJlbnQgaW50ZXJmYWNlIChyZXY2KQ0KPiBVUkwgICA6
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTU3NTc1Lw0KPiBTdGF0
ZSA6IGZhaWx1cmUNCj4NCj4gPT0gU3VtbWFyeSA9PQ0KPg0KPiBDSSBCdWcgTG9nIC0gY2hhbmdl
cyBmcm9tIENJX0RSTV8xNzU1OSAtPiBQYXRjaHdvcmtfMTU3NTc1djYgDQo+ID09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4NCj4gU3VtbWFyeQ0K
PiAtLS0tLS0tDQo+DQo+ICAgKipGQUlMVVJFKioNCj4NCj4gICBTZXJpb3VzIHVua25vd24gY2hh
bmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTU3NTc1djYgYWJzb2x1dGVseSBuZWVkIHRvIGJl
DQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+ICAgSWYgeW91IHRoaW5rIHRoZSByZXBv
cnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+ICAgaW50
cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTU3NTc1djYsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVh
bSAoSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93IHRoZW0NCj4g
ICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZh
bHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4NCj4gICBFeHRlcm5hbCBVUkw6IA0KPiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTc1NzV2Ni9pbmRleC5o
dG1sDQo+DQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDQ0IC0+IDQ0KQ0KPiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4gICBBZGRpdGlvbmFsICgxKTogZmktYnN3LW5pY2sgDQo+
ICAgTWlzc2luZyAgICAoMSk6IGZpLXNuYi0yNTIwbSANCj4NCj4gUG9zc2libGUgbmV3IGlzc3Vl
cw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hh
bmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTU3NTc1djY6
DQo+DQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4NCj4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9u
cyAjIyMjDQo+DQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHNhbml0eWNoZWNrOg0KPiAg
ICAgLSBiYXQtYXJsaC0zOiAgICAgICAgIFtQQVNTXVsxXSAtPiBbSU5DT01QTEVURV1bMl0NCj4g
ICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8x
NzU1OS9iYXQtYXJsaC0zL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAc2FuaXR5Y2hlY2suaHRtbA0K
PiAgICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTc1NzV2Ni9iYXQtYXJsaC0zDQo+IC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHNh
bml0eWNoZWNrLmh0bWwNCg0KUGxlYXNlIHJlLXJlcG9ydCwgaXQncyBoaWdobHkgdW5saWtlIHRo
ZSBzZXJpZXMgd291bGQgY2F1c2UgdGhpcy4NCg0KPg0KPiAgIA0KPiBLbm93biBpc3N1ZXMNCj4g
LS0tLS0tLS0tLS0tDQo+DQo+ICAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3
b3JrXzE1NzU3NXY2IHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoNCj4NCj4gIyMjIElHVCBj
aGFuZ2VzICMjIw0KPg0KPiAjIyMjIElzc3VlcyBoaXQgIyMjIw0KPg0KPiAgICogaWd0QGZiZGV2
QGluZm86DQo+ICAgICAtIGZpLWJzdy1uaWNrOiAgICAgICAgTk9UUlVOIC0+IFtTS0lQXVszXSAo
W2k5MTUjMTg0OV0pDQo+ICAgIFszXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NzU3NXY2L2ZpLWJzdy1uaWMNCj4gay9pZ3RAZmJkZXZA
aW5mby5odG1sDQo+DQo+ICAgKiBpZ3RAZ2VtX2xtZW1fc3dhcHBpbmdAcGFyYWxsZWwtcmFuZG9t
LWVuZ2luZXM6DQo+ICAgICAtIGZpLWJzdy1uaWNrOiAgICAgICAgTk9UUlVOIC0+IFtTS0lQXVs0
XSArMjUgb3RoZXIgdGVzdHMgc2tpcA0KPiAgICBbNF06IA0KPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTc1NzV2Ni9maS1ic3ctbmljDQo+IGsv
aWd0QGdlbV9sbWVtX3N3YXBwaW5nQHBhcmFsbGVsLXJhbmRvbS1lbmdpbmVzLmh0bWwNCj4NCj4g
ICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6DQo+ICAgICAtIGJhdC1hcmxoLTM6ICAgICAgICAg
W1BBU1NdWzVdIC0+IFtJTkNPTVBMRVRFXVs2XSAoW2k5MTUjMTQ3NjRdIC8gW2k5MTUjMTQ4MThd
IC8gW2k5MTUjMTQ4MzddIC8gW2k5MTUjMTUxNzVdIC8gW2k5MTUjMTUxOThdKQ0KPiAgICBbNV06
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE3NTU5L2Jh
dC1hcmxoLTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sDQo+ICAgIFs2XTogDQo+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NzU3NXY2L2Jh
dC1hcmxoLTMNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPg0KPiAgICogaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4gICAgIC0gYmF0LWRnMi0xNDogICAgICAg
ICBbUEFTU11bN10gLT4gW0RNRVNHLUZBSUxdWzhdIChbaTkxNSMxMjA2MV0pICsxIG90aGVyIHRl
c3QgZG1lc2ctZmFpbA0KPiAgICBbN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzE3NTU5L2JhdC1kZzItMTQvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3
b3JrYXJvdW5kcy5odG1sDQo+ICAgIFs4XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NzU3NXY2L2JhdC1kZzItMTQNCj4gL2lndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPg0KPiAgICogaWd0QGttc19waXBlX2Ny
Y19iYXNpY0ByZWFkLWNyYy1mcmFtZS1zZXF1ZW5jZToNCj4gICAgIC0gZmktYnN3LW5pY2s6ICAg
ICAgICBOT1RSVU4gLT4gW1NLSVBdWzldIChbaTkxNSMxMTE5MF0pICsxNiBvdGhlciB0ZXN0cyBz
a2lwDQo+ICAgIFs5XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzE1NzU3NXY2L2ZpLWJzdy1uaWMNCj4gay9pZ3RAa21zX3BpcGVfY3JjX2Jh
c2ljQHJlYWQtY3JjLWZyYW1lLXNlcXVlbmNlLmh0bWwNCj4NCj4gICANCj4gIyMjIyBQb3NzaWJs
ZSBmaXhlcyAjIyMjDQo+DQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRz
Og0KPiAgICAgLSBiYXQtbXRscC02OiAgICAgICAgIFtETUVTRy1GQUlMXVsxMF0gKFtpOTE1IzEy
MDYxXSkgLT4gW1BBU1NdWzExXSArMSBvdGhlciB0ZXN0IHBhc3MNCj4gICAgWzEwXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTc1NTkvYmF0LW10bHAt
Ni9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gICAgWzExXTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU3NTc1djYv
YmF0LW10bHAtNi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gICAg
IC0gYmF0LW10bHAtOTogICAgICAgICBbRE1FU0ctRkFJTF1bMTJdIChbaTkxNSMxMjA2MV0pIC0+
IFtQQVNTXVsxM10gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAgIFsxMl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE3NTU5L2JhdC1tdGxwLTkvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFsxM106IA0KPiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTc1NzV2Ni9iYXQt
bXRscC05DQo+IC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4NCj4g
ICAqIGlndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLW1vZGVzZXQ6DQo+ICAgICAtIGZpLWJzdy1u
MzA1MDogICAgICAgW0RNRVNHLVdBUk5dWzE0XSAoW2k5MTUjMTUyMDNdKSAtPiBbUEFTU11bMTVd
ICszIG90aGVyIHRlc3RzIHBhc3MNCj4gICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTc1NTkvZmktYnN3LW4zMDUwL2lndEBrbXNfZmxpcEBi
YXNpYy1mbGlwLXZzLW1vZGVzZXQuaHRtbA0KPiAgICBbMTVdOiANCj4gaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU3NTc1djYvZmktYnN3LW4zMA0K
PiA1MC9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1tb2Rlc2V0Lmh0bWwNCj4NCj4gICAqIGln
dEBrbXNfaGRtaV9pbmplY3RAaW5qZWN0LWF1ZGlvOg0KPiAgICAgLSBmaS1jZmwtZ3VjOiAgICAg
ICAgIFtTS0lQXVsxNl0gLT4gW1BBU1NdWzE3XQ0KPiAgICBbMTZdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNzU1OS9maS1jZmwtZ3VjL2lndEBrbXNf
aGRtaV9pbmplY3RAaW5qZWN0LWF1ZGlvLmh0bWwNCj4gICAgWzE3XTogDQo+IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NzU3NXY2L2ZpLWNmbC1n
dWMNCj4gL2lndEBrbXNfaGRtaV9pbmplY3RAaW5qZWN0LWF1ZGlvLmh0bWwNCj4NCj4gICANCj4g
ICBbaTkxNSMxMTE5MF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9r
ZXJuZWwvLS9pc3N1ZXMvMTExOTANCj4gICBbaTkxNSMxMjA2MV06IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTIwNjENCj4gICBbaTkxNSMx
NDc2NF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9p
c3N1ZXMvMTQ3NjQNCj4gICBbaTkxNSMxNDgxOF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTQ4MTgNCj4gICBbaTkxNSMxNDgzN106IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTQ4
MzcNCj4gICBbaTkxNSMxNTE3NV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTUxNzUNCj4gICBbaTkxNSMxNTE5OF06IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTUxOTgNCj4gICBb
aTkxNSMxNTIwM106IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJu
ZWwvLS9pc3N1ZXMvMTUyMDMNCj4gICBbaTkxNSMxODQ5XTogDQo+IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTg0OQ0KPg0KPg0KPiBCdWls
ZCBjaGFuZ2VzDQo+IC0tLS0tLS0tLS0tLS0NCj4NCj4gICAqIExpbnV4OiBDSV9EUk1fMTc1NTkg
LT4gUGF0Y2h3b3JrXzE1NzU3NXY2DQo+DQo+ICAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+ICAg
Q0lfRFJNXzE3NTU5OiA0ZWJlYTc2NGQwZTZkZGJjYWVkNmE0NzRhZWUzODdmOWM0NWUyZWFiIEAg
Z2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ICAgSUdUXzg2Mjg6
IDg2MjgNCj4gICBQYXRjaHdvcmtfMTU3NTc1djY6IDRlYmVhNzY0ZDBlNmRkYmNhZWQ2YTQ3NGFl
ZTM4N2Y5YzQ1ZTJlYWIgQCANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNp
L2xpbnV4DQo+DQo+ID09IExvZ3MgPT0NCj4NCj4gRm9yIG1vcmUgZGV0YWlscyBzZWU6IA0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTc1NzV2
Ni9pbmRleC5odG1sDQoNCi0tDQpKYW5pIE5pa3VsYSwgSW50ZWwNCg==

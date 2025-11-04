Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D254C2F520
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 05:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6E910E22F;
	Tue,  4 Nov 2025 04:52:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U3/o0P8W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63C3910E22F;
 Tue,  4 Nov 2025 04:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762231932; x=1793767932;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1jXxCDC/fXmloaQJB7tDQTi7lwcWEbC4tIUmSBNoQ4Q=;
 b=U3/o0P8WEaZRvicV6RgESpNX1XCg43r37p6rkBGgaJIXB+aem4c8FPsq
 dp/rCBTzYqLuHyHGRx+STZoVTwQtwk3ZYXVjwoqFfcpZdBbCZaH1O7hrM
 9NrSIf+ozUvCOUeyeClz7aGQXT0wQjFEkg5bekIzcuzAmASweW86aUgiN
 nE84K9MW8Y7NrluljstPBFEs5ueOrhvVps7pN/g4ej4q1v+YlesIKm8Ps
 PfwtCN+cKlpYrYlOG/cLFA9SQf5xWw6/eWkSe7nwVWrEiYaxIfWSJ9wb6
 B93r++zn4zP84qHTvt/HE3XQ1xhjkftaidxzPTZEMJEGn61610k1PamRv w==;
X-CSE-ConnectionGUID: tVta1WVfQ5iHRHLt7dGDbA==
X-CSE-MsgGUID: WQE6rJ7zSYGCvxB3eovWaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64416326"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="64416326"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 20:52:11 -0800
X-CSE-ConnectionGUID: 6oe8ycYkTeGlVf5nzNhV9w==
X-CSE-MsgGUID: thIW500URl2IFNZ6rZjUOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="186742701"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 20:52:11 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 20:52:10 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 20:52:10 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 20:52:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YsJt4EyfK0q/5zxDop7bo8kLHIOhR5WesL+bICgNZOBfYQoMhjtCarBh0sk9tQMkXQ4NM1jI2aGlL6LzC+5CKBXt5toWwv7lvTpVrawhGWbABuG2wJUPOlnntx6ZopnhkmnSWnJmxranu+1M414g5hFy+K1LZyN6agrAjc+TUxfGJ6OAEZGT5wJd7W+BYvkBIYUlY6A5LHTizK8eKo1cbjz+ndtkzt43JaFMnj9LvPftclvMXykbk7wOVLyQHKRLm1rj6nUldMineoulnaMq7hbk8PldsEiRtdZOqYzp9xo2v8NNyl2M/p6MzL3LSh99tkHdzf5NwR2XTIx665Mpwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1jXxCDC/fXmloaQJB7tDQTi7lwcWEbC4tIUmSBNoQ4Q=;
 b=p08kX9SUM10ACbZU8sqjfcGOE2JjnXENeK1uqozlnmlocBFqJw5wmLmek1FxaomWtWeunViKSSkTj4Z7IcGstws/oRoUer0Jv4/JjYiVSHyyIx8Rotkef3Nvf+QnTD6Y9u9rYAjC2Xpaq5/qN9Bqp1oTtcxGvRB0DI0sNnTlazhn2TTT6A/LLxxUMcFV/Xza0XnlUsiKeIRSbOgs/sntSRfJzal/d8g6UdCT/NrDbfL0E6zwQyp2bdmPaL45c2wC+uKpDAbm8QjvImIwgAVXMA4T258Sej26UUCG+2WwuljNQIUmiMiW7CYKgJD7pdeR9RJ4pWc77ovaecvbXKsroA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 04:52:08 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::250:1566:d191:a23b]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::250:1566:d191:a23b%5]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 04:52:07 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlz?=
 =?utf-8?Q?play:_Add_initial_support_for_Xe3p=5FLPD_(rev3)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kaXNwbGF5?=
 =?utf-8?Q?:_Add_initial_support_for_Xe3p=5FLPD_(rev3)?=
Thread-Index: AQHcTP9LC9qW6wwAiEqbdpNz9ALmmrTh81sA
Date: Tue, 4 Nov 2025 04:52:07 +0000
Message-ID: <CH0PR11MB54916E9B8CF30F1C6E6C2843EFC4A@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <176219987661.11360.10134688087673136663@10055242dc62>
 <176220120150.3586.7968753268835334691@intel.com>
In-Reply-To: <176220120150.3586.7968753268835334691@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: abc3450d-e1e6-4fed-835b-08de1b5de873
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|13003099007|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?b2VpaElnRmpHR3UwRWhkWjU3azB6dk1FQWxDcTc0dVpnZkNkQmh6dlJPazY4?=
 =?utf-8?B?d0J6QnM1YXpIYWpzcGJaVHl0azdGYnZhKy9xZGJTRUQ0bHRWR0JYdmtFVUIw?=
 =?utf-8?B?RlVyd0owY25nTTV0R1FQNFdkcDBWVjF2THBPS0hLMUtUVHlHNFJZMUlIVkR6?=
 =?utf-8?B?Y3BqajZ4eVhJdEJ3QlEzMDZ5cnVGY05pV2xnNjFMV3FNODlTQW1XQXYya3Bi?=
 =?utf-8?B?Q1o3OS9uS3hidjk2R0paZC9FN2w2ajJnVzVKaU0velFJV1luUTBqQ1h2c09G?=
 =?utf-8?B?M1hjRm9kVVowZHdHYmQ4eklIVTJqTFlVNUtOZGphdjdwdzNFZ1dzU3lKYWli?=
 =?utf-8?B?VzFKUVIyMExJY1RacC90bTFJUFJueXBUVW4velpSTERiSUk4eTMxTE1IOWhj?=
 =?utf-8?B?VTFYS2FacGoxWCtWc1B0d0MzOXFFYW0zZDlZYmNhZURnWG1pbEd4OHcxSUR5?=
 =?utf-8?B?ZUJ3VXNGUGMyYzVWT1pmSjQ0ZTdGZFRTQVEvbE5TYmk1ekZkSVcvL01ObmMx?=
 =?utf-8?B?S0N0NFI5TVBrVThVQVpEWUdlRmszVkxZTmRWNkhaZFRmcDFLN1RBOUpiQVU4?=
 =?utf-8?B?VWtVRURuVFplSFVCeW5hcW9nZEVlMEpDbUplY0gxYmF6NklWKzJPV1VwNjRu?=
 =?utf-8?B?eFhmYzlydXN6T0x5VUpiVXhMNXpKdCtNNVVMUmpzNnp1K0xCa3hzZTFIbHZF?=
 =?utf-8?B?MTdMYUVGRlVEcWMwZlE4TFZGcmNZWlFuUDhPcy9tTkhEN0x0OXBReXcwbEpM?=
 =?utf-8?B?clRMdVF0a1k5MmZyUkhxOW5PZnd4bU0vRDMwRmMwbW94aU5SSTJLVW5wd2tu?=
 =?utf-8?B?bnJ3TzhiemFkUmczZ2F3dGkxSkhRaDFaUWtHYVpDYTZQVTdEcDFKV2RsSmpm?=
 =?utf-8?B?djlQU3ArbTFTREtkVWoyNHRPOU9pSDR5endQbzFWcVdJZDRWSmNyQS8vNHZh?=
 =?utf-8?B?SVo4bW5RS0QxV1dKMm5pR2YzVHFvSUNLVCtHMGRmbVpHWVoyZ21NZlVXd3or?=
 =?utf-8?B?ZDM0Y3NraytMYjdxMktvbkFFZTFrV0Q3RDhOWk80dldnM2hxK1ZodnZFd210?=
 =?utf-8?B?TnFYaXNUZ2YwckNLQ05DenFFeTdQVUs0bytwQ05tbGpTRy9Mdm5HUUdEWi9M?=
 =?utf-8?B?MllCSTc4TFExTzJzSlJqa0xHd3kzZ0laQnpGQUZSM21VT0RRK0lrUWtXVVlP?=
 =?utf-8?B?MkZFK2dPdTF3RmNLY25rb1Q0T0UvblNlYU4vdDIrSXNHcTVGV2ZjcUI3L0th?=
 =?utf-8?B?NC9yN3MwaDNVYldlRXJ3WjlJRjhmUjBSNHpsaWQwNkFXck5PZ2EzRWN3cTN5?=
 =?utf-8?B?eGgxYkxNdk0rOG4zZmNubVM0QWZuOW9qOGk1OXI0M01DZ09NNXpqLzR5WUF3?=
 =?utf-8?B?d1ZmckNsaFJDaEI0d1hmbnZtTEJZZmg1QjRsbGVTcHoyM0dKZkN5R0VkSlFQ?=
 =?utf-8?B?NFZQaFRMd1JZR0pWL1dTOHhYK1pVTS9XMWYyS245cVFXN0c4YmFvSjRDc3hO?=
 =?utf-8?B?Z3VMRDNKdEF6NUdBTklvU2xVSG1MS3U0V0E5M1NxRkFxN29RZVVpYTI0WE1U?=
 =?utf-8?B?bWw3Nzhvbms5VkdsLy9GZ05YN1N2MTJXZGd0V0R4RWtpRnQzV0hZeHlzeTZS?=
 =?utf-8?B?TWNsK3FRck5jcEh2ekorRWJsejgrbnQ1QkJVN3hNWjNWNGlHenJPSzZURGdG?=
 =?utf-8?B?Qm9WV2t1WW9QL3lzN1RyS0lDUjZ2TDkvbUVnVDdzcGVidWRtREJEUWhwZXY0?=
 =?utf-8?B?WlQxSTB0SjBLZmtrRnRnNmo2ZXBmeUhuMjVFaXJGdWV2c3c4VjlwVFg2QUI3?=
 =?utf-8?B?Y2VkK2ZrbTVta0FlV1BEZFNzSzlBSlEyWnNXU2gxSVlvampOMFJoYmtxQ0ts?=
 =?utf-8?B?OVRRQjJsSEEyYURKWGJUbmYzN1FudHBUNEFyTWVaRWVDZUh2bGNJVk4vL2o0?=
 =?utf-8?B?bDRsL1BOV3VrVXA3RSsxdHhWV0t4REU0SGVYNUJpRldmZUNaMnNjRXR6NnBa?=
 =?utf-8?B?UlRsRVM2UWNRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(13003099007)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VFRQQUZrOW1hTFlCTERCdXRBUUtLMEZ5cDY1dEhNNmpBK2ZDc2dsNDZPR1VI?=
 =?utf-8?B?eHpvZ212UWtmc3J3MDN4ZWplOEloZms4RlV0Y0FYOUFEUnNWNXVqUnI4cTNp?=
 =?utf-8?B?YlBUZUVSdWl0NURJRy85MFJuNkVvOVFlNjRGZWNHWGZjaXBKaU4rTmEzSXVn?=
 =?utf-8?B?aTcvUUtCZU40RXNKMlduNXoxeGJrWlRGbjZqbEVXQzcrL0FVU3VTSHlBUjZ6?=
 =?utf-8?B?Nk1Ea3ZqTVVpclZWRnZOU01PVWF5T0EzTDRRL1VGSVlVM0tqMnlJUFdkZXdW?=
 =?utf-8?B?c3NKZXRmaXA1SFlzeFYxUWVDZUU0aDliWWdOSG9yM1FGMHBTMW9HTlM4VGVN?=
 =?utf-8?B?a294NHRRZkc3MmxNUjdnSGpoL3dQTFFieXR3TW51U0k1REhzWldTOUw4OEZQ?=
 =?utf-8?B?QnlVT0ZHazNieVpTSFY0WE5SWmo1RlhpT2dLWXJXMnJWWEJiRDRaSmdMYThH?=
 =?utf-8?B?aXU3TVMyR0hiek1TTm5KZDZvQy9sSEUzOUZxdURQUDJYQ2k3czJIV1FIaERQ?=
 =?utf-8?B?VkllbkYvY1NzWERBdjAxaTRheTFoVTVoRUgrTHFDZjU1aU5xampqMFBVMlJ0?=
 =?utf-8?B?ZHFwbnpHRXgwTCtlL3RVSG1CRG5hMzBNQjR0VkdUS01QUWxGWVlqaEtqU2d2?=
 =?utf-8?B?YTFvVGVnbHNmS0FCY3pkUXI2bmF3Z0xGQlRORnZCSHhWYzFmWDJ3bTRXSUlx?=
 =?utf-8?B?Vkd1djByUEpTSHkxOFMxWHZGV2FwMmZiZHVuR2NqNUVoYkRKbDFWOXBKTkNp?=
 =?utf-8?B?VW0yWGNZcFM5aW5JWHF6NEFJMTQrV093UXdmT1lmUFdvWVpYNkdtZVBMUzQy?=
 =?utf-8?B?R2NyS0JFMVh6QlM0V2hNeWY2TWR5Ny8zVElxenB0TGgrTlVXajMxc2xwY2pL?=
 =?utf-8?B?RVpWVys0bEVUSVRsa3Q2MlRIb0YvaHBRMGJtYkV1bW1LWDNQY1JjMmNXVVZL?=
 =?utf-8?B?UmkwSllXQU1HSGdpZFNqeXYwTzYwdWFONEdKYnRzWUVZQUEzaVluTXVlR2s2?=
 =?utf-8?B?L0NmRURVeE1zNDdnSnZ3ck5PSVBxT0Q5ZGh0NjVOVml3M3h3UkZHVVBjZGpI?=
 =?utf-8?B?ZG5iNGc0dzlRM0dxNDNlOWtZZ056WCtTRFJhR21Yd3F6VkJMWENVbExkK3RT?=
 =?utf-8?B?S3Q4M0l4S2haNW1rWkUrRlZkRnZRdkRGbm9jZVp3eDhHN0FKSEppTGNPTnNz?=
 =?utf-8?B?bGhBR2draFFGRTlneC93QW1TYjRia1FuakJuZ1FPQTJyUHNYSXNJMERYT0tR?=
 =?utf-8?B?L29jM1NPRnlHbnZJdElYMStweitCQ1RITG4rNWQ0WTFCUk05VktQMDFaRCtl?=
 =?utf-8?B?MytKYzZLWFduaC9ycytxeDdoa3lobnpOd2pPQmozaTloMHhwMFd1YWxXSzdp?=
 =?utf-8?B?TEtaN0lmMy9QS2tYRUpYcWQ4OWtzTWxwemRDQTVqOUpRMjRSQkIvYmd1RjNZ?=
 =?utf-8?B?Ti9jNkNTUlJDRW9velpjUUI0SlcxeDRWaERaWjYzNWw0WkVtaDlWMTlMbmhn?=
 =?utf-8?B?OFVDaTFtNThZNVlTYTNiT2g2eGxqTFgrakluK2REMWlsa1R0eWRzMm1nSXVw?=
 =?utf-8?B?UEFobkJYNUZiaERqWHB0NEN1MzhoRXlHdzl0eEVNM2ExK0ljSGVjbVU5K2cz?=
 =?utf-8?B?YmNwMXZEeDlJZEVVeUlwcTJwdlE5TXE2REpva0F6aUd5c3BJb0dKQTlPZ1p6?=
 =?utf-8?B?MEo4WWpwL0g3RmRpUlo2bG9rb1dzYm43V0ZwWVpsNENpTEROaElpV1lWalov?=
 =?utf-8?B?VE1VeENPb0JhOTRWbnQrVVN3b2JVU3NFZ0piTHo4MEJHK2JrUXZ5bUY5alhR?=
 =?utf-8?B?TzhzSzFpY3NjOHduSnZ1a2tncENRYlNOYVpIamhrSHJlTkdHczFQRE9nQW5Y?=
 =?utf-8?B?RzdoL2ZvaHB0SUU4SzdRYlBJZXc3enVOYzZSOVFwYjNMZ1FiL2RkaU15YUJs?=
 =?utf-8?B?UnlrNGxEWER3NXVmaHRZb09lbk5reU5tODNpRzk3OHdaei9CZDVYRHR1RG94?=
 =?utf-8?B?Rk9BU0c1TUZpV0dwN1djd2xZYWRHZ0JHUHlDN1VVL1pTend6Q3hmcWlvNmF5?=
 =?utf-8?B?cGNnM2o5S2srYjlpK2lrOXJKUTR6ZkR0Unc3UXV5dFVVT2hwdTVEM2RJNSsx?=
 =?utf-8?Q?KPowVJ4LDUGL0rcS89bmAdAET?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abc3450d-e1e6-4fed-835b-08de1b5de873
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 04:52:07.8822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S5afbnzvOq9s5FKl4slfGQrKa1G9umw5AmdoLLFpyUh5MOclTu5b+x1FUlnNW6y3MUotSmteKINADCz9Cmrs1JCAYTQK2541PwwK8ohcPac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTU1OTUyLw0K
aTkxNS5DSS5CQVQgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KUmF2YWxpLg0KDQotLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8aTkxNS1jaS1pbmZyYS1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEd1c3Rhdm8gU291c2EN
ClNlbnQ6IDA0IE5vdmVtYmVyIDIwMjUgMDE6NTANClRvOiBJOTE1LWNpLWluZnJhQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1YmplY3Q6IFJlOiDinJcgaTkxNS5DSS5CQVQ6
IGZhaWx1cmUgZm9yIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBpbml0aWFsIHN1cHBvcnQgZm9yIFhl
M3BfTFBEIChyZXYzKQ0KDQpRdW90aW5nIFBhdGNod29yayAoMjAyNS0xMS0wMyAxNjo1Nzo1Ni0w
MzowMCkNCj49PSBTZXJpZXMgRGV0YWlscyA9PQ0KPg0KPlNlcmllczogZHJtL2k5MTUvZGlzcGxh
eTogQWRkIGluaXRpYWwgc3VwcG9ydCBmb3IgWGUzcF9MUEQgKHJldjMpDQo+VVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE1NTk1Mi8NCj5TdGF0ZSA6IGZh
aWx1cmUNCj4NCj49PSBTdW1tYXJ5ID09DQo+DQo+Q0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBD
SV9EUk1fMTc0NzkgLT4gUGF0Y2h3b3JrXzE1NTk1MnYzIA0KPj09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4NCj5TdW1tYXJ5DQo+LS0tLS0tLQ0K
Pg0KPiAgKipGQUlMVVJFKioNCj4NCj4gIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3
aXRoIFBhdGNod29ya18xNTU5NTJ2MyBhYnNvbHV0ZWx5IA0KPiBuZWVkIHRvIGJlICB2ZXJpZmll
ZCBtYW51YWxseS4NCj4gIA0KPiAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhh
dmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzICANCj4gaW50cm9kdWNlZCBpbiBQYXRj
aHdvcmtfMTU1OTUydjMsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSANCj4gKEk5MTUtY2kt
aW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnKSB0byBhbGxvdyB0aGVtICB0byBkb2N1bWVudCB0
aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBp
biBDSS4NCj4NCj4gIEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTk1MnYzL2luZGV4Lmh0bWwNCj4NCj5QYXJ0aWNp
cGF0aW5nIGhvc3RzICg0NiAtPiA0NSkNCj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0N
Cj4NCj4gIE1pc3NpbmcgICAgKDEpOiBmaS1zbmItMjUyMG0gDQo+DQo+UG9zc2libGUgbmV3IGlz
c3Vlcw0KPi0tLS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4gIEhlcmUgYXJlIHRoZSB1bmtub3duIGNo
YW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1NTk1MnYz
Og0KPg0KPiMjIyBJR1QgY2hhbmdlcyAjIyMNCj4NCj4jIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25z
ICMjIyMNCj4NCj4gICogaWd0QGdlbV9leGVjX2d0dGZpbGxAYmFzaWM6DQo+ICAgIC0gYmF0LW10
bHAtOTogICAgICAgICBbUEFTU11bMV0gLT4gW0lOQ09NUExFVEVdWzJdDQo+ICAgWzFdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNzQ3OS9iYXQtbXRs
cC05L2lndEBnZW1fZXhlY19ndHRmaWxsQGJhc2ljLmh0bWwNCj4gICBbMl06IA0KPiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTU5NTJ2My9iYXQt
bXRscC05DQo+IC9pZ3RAZ2VtX2V4ZWNfZ3R0ZmlsbEBiYXNpYy5odG1sDQoNClRoaXMgZmFpbHVy
ZSBoYXBwZW5zIG9uIE1UTCBhbmQgaXMgbm90IGRpc3BsYXktcmVsYXRlZC4gIFRoZSBlcnJvciBz
aG91bGQgYmUgdW5yZWxhdGVkIHRvIHRoZSBzZXJpZXMuDQoNCkNvdWxkIHlvdSBwbGVhc2UgcmUt
cmVwb3J0Pw0KDQotLQ0KR3VzdGF2byBTb3VzYQ0K

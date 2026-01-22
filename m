Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAzSNG0NcmksawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:43:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE88662AD
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C72F010E991;
	Thu, 22 Jan 2026 11:43:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QXP6OUpw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3067C10E98D;
 Thu, 22 Jan 2026 11:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769082218; x=1800618218;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=LKplfWsktyuqOq2GH6kXfkgsI8DudOHb/MdIVbHMkEY=;
 b=QXP6OUpwtZnoV0NXQcxSxc6Pu5TF4sJBhz5ilLDW7qTKyTgkDPOlXx1i
 W2MTu1A5s9KhFiQ7EJ8w/8bFEdiEWDqsThdZMXo0GpaA0jpVVtFouhrhz
 6fCcX1MaaZfJHdQDWHWTkQCpbj9hxfNK6w7LOgyFV/SXw5ZuVrikymXyS
 SCv0dvpKym7dMvtmEa6vDthsfYuW5a9fBBYUoeag9vo6x2QzS0cTyGeJ4
 w3wBWjhb7809m9zaTF0L8Rt+2vAOSxhAHMUenUEO6OjSgIAVoK/6P6ir+
 sxI+AcBp9CWKYsQo8XMXLRr9Qy2jXcX/k3W4GFh3YwMDMlbOzLFH7G5vi A==;
X-CSE-ConnectionGUID: 7798hEj3Qk+if7jZxgC+xg==
X-CSE-MsgGUID: TZSRIInmTEC/RekhwA5EKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70222871"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="70222871"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:43:38 -0800
X-CSE-ConnectionGUID: JcxQqrUFSuiDgDlLcYJLeQ==
X-CSE-MsgGUID: JAJquG8ESB2HlPgk65DCKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="210856804"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:43:37 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:43:36 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 03:43:36 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:43:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WGQgYHH8hmiCF5MCvqVUovavElkLjILrlLPUEI8BZ1GNfnKyqKm72ii9ypKSXl9aAIShHN0XPP2i7/lfNoPORQL/HQEvfIM363fnAO30DI3xF5HLHSZcdi+wtIu+/Odk2f867iR/Gm69Fc5KmjQabpMobB3zE52tl7vW06YNoR8pI3gHa0XVxtlB82al0SWcMyFyGSA/Lncg+ULTBdTNEbXrJLq9IRAYm0WNBszJvc//Ksc9osjwgOKEINZxAmn4tXs2FdADfFHouC6ri8651dFc14V74mbld5/Cxfpl3Nxuc+IuyX9xPV/NM7DAbJQaDHCmOz9nfqou1UphYpqHow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LKplfWsktyuqOq2GH6kXfkgsI8DudOHb/MdIVbHMkEY=;
 b=Gy7xFwNgLf2Ya2s+OjiZlq81QSlSZEqp0by84K79Y6oxCDIc2ad4ypBuV8Svfz6Zdj3NmZ7aoYmdP9nz7TLCwf7CxDoSlZhDcYNH4bPmGyUo7o6ucmt+DhJczc+NdTa0gGQAdQLuydY3zdgQhbbCWBBrEJ21jbLDWijgyXAKddmx+oTf/LmaHq5fo6kpitWyo0gtnoA+iup4sU9hw7/drB0obHG9cMueu2Ch9wpRYa6FylPQ6If7epi1Rp1NEyvEzOdJ8u/P5xsCfiOSWd9KMgEewa5Ge/ygoyGcJ3QTcB+Hala7yBsjmjfYwhKakHRDfuQjPU/U8uNohR03IivqEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW3PR11MB4649.namprd11.prod.outlook.com (2603:10b6:303:5b::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.11; Thu, 22 Jan 2026 11:43:34 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9542.009; Thu, 22 Jan 2026
 11:43:34 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v9 8/8] drm/i915/psr: Use TRANS_PUSH to trigger frame
 change event
Thread-Topic: [PATCH v9 8/8] drm/i915/psr: Use TRANS_PUSH to trigger frame
 change event
Thread-Index: AQHcc/oonRuprtWlKUOuSUBCA3vzgbVeNdmAgAAK3oA=
Date: Thu, 22 Jan 2026 11:43:34 +0000
Message-ID: <28f217a118eb4058f068bc27926412b10eb8ae46.camel@intel.com>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
 <20251223105120.21505-9-jouni.hogander@intel.com>
 <8fb7e836-7ee2-4bb1-8f6b-abb7906b61da@intel.com>
In-Reply-To: <8fb7e836-7ee2-4bb1-8f6b-abb7906b61da@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW3PR11MB4649:EE_
x-ms-office365-filtering-correlation-id: a5ebf4c7-0bc0-491d-704c-08de59ab7976
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?WTVud0E1MTcycFJhczFNZHI5ZGxBQ0ZpWWVsbUpGb3lsZm93Y0tUTVV1cWF6?=
 =?utf-8?B?QkYyWWFOS3gyVnZRS3l6UTRFUndoYXF4TFhuM1FJOVd6SFlLVDRuemducXhX?=
 =?utf-8?B?dldESUJ0VTZCNXRNcEZ1MEVlamlSZldqUnlvS3FMLytzdXZPRWV5eVV2SHo2?=
 =?utf-8?B?a3dVVnZQTFhVNzJ0cmN0QjlrdzZDd2xKMUNxc3FyaDhkTjhQa2lMN2c0OEN2?=
 =?utf-8?B?UXcrUE4rMVp2R3VXNjdjZER3amU5cmN5SW45aGRibUdibHcyWjFiNnJiRE4v?=
 =?utf-8?B?c3Rpc0xINU1MTEhsWjB1TWFYYjE2UVhLc3k1OHBVZEdhRlg1WkNvZWY2MHNu?=
 =?utf-8?B?V3NIL2xVa3FWRlNTcHd1Y0pkUXU1VzJkLzdYVC92Yis1RmU2MDYvOHFSb2Er?=
 =?utf-8?B?SXE5a2NlZXp5MmtldmFHQnJDRGMwcGp1bndSSWdLbW1IcEdWc3h2dmVKUkpB?=
 =?utf-8?B?SHNhZThQbGtOUzB0RjRpMlJOem9Lb05Ud0MwVDhtYVpuZEVLeUY3QkhzVXRr?=
 =?utf-8?B?cFd6cnByNC8xVk1OZHJtM0p6cWg1WlpLTjV5Wm5qdUtobHArQXdpdVV2czBa?=
 =?utf-8?B?SjZOWTQ5RTF1cDZWVnFDYXRtVTh1WEE4QUJkMmhFbnBvUkFiMTFkaUxuOXNX?=
 =?utf-8?B?MUF4MEp0Q1NiaFdUZTl1eFFoZUtHK1BkMysvL3gza0xNZm9SR1g2M0pVMlNP?=
 =?utf-8?B?cVVIdkVBQVJ1UFUrOFhuWVB3d1RFVzNUakFRYVVmbFd6RHpxRDR1WHluUzBt?=
 =?utf-8?B?WmhybHFaSXc5azI5NzR0NTNzR1dEYTJMOU9wdFJ4MmVCTjNvZFc1Snd1SERT?=
 =?utf-8?B?MXVQUzlGWnBnKzNiaFRlTi95RXRIWHhwMmMzdm9FUDNPZUcyUXlpWXpHSXlw?=
 =?utf-8?B?aldnQThaT2U0YU5WRURENnBDOWg3NStGaWlKUjh6YUJIbXlYUm0vQ1ZpZStq?=
 =?utf-8?B?SUVtVVVSVGxsOWprVHNIWThweGdZVEFCRHp2TWd6aGFEekEzbVdtY2ZhazdN?=
 =?utf-8?B?dWVBVVdYZW0vOUZrVTFuNHoxa3ZRZHVFeXFkY09nSlVYcFZBZFlqZVZvcWdE?=
 =?utf-8?B?RVYzV01KeWx0dVhic2IvaU5nZGxmcXRoZExFK1o0WEJPYjJCVmM5MExIeTRT?=
 =?utf-8?B?dDZYdktFdWc4cit6RXFBSG9UaC8vTW84Nmg0a0hUU0ZxbkdzZFJsSnVGcng2?=
 =?utf-8?B?K3dHaDlOeUcwZTRpUm5BREZDdVhpVTlObTd2cTcwMlprRlBiQ0ZUc1AvOXlw?=
 =?utf-8?B?K2drZHBGaGlQVitGSUNKMzhqVmtHSVRTNnhJbWNBZXpMSGxiYjdrSUJtR0VH?=
 =?utf-8?B?cHVKMXFHZjJmV1RqWmh1eXZMQUxFT1lmVDkrTTl5L3p0aElxN1JoNDY4MTJQ?=
 =?utf-8?B?eUJHalkrK01NZHZ1MzJoc1EzNW9FYjZzNFd4eGFWaEhlL1Z0NVJyWE9ObUpa?=
 =?utf-8?B?R1FwN2JaRS9XUVAyL0phd2NmUGxXTVRkc09IR0Jpb2ZkMlRiV2xMdzNMTkZX?=
 =?utf-8?B?U3hsU3o2ZFQyUUdYOWV4dVY0K1V2NHloeEpQeXJsRVZHNUtNZXRzRVFDay9X?=
 =?utf-8?B?V0taS3FhTXhKbTBmN1RycGJWRzRUM3dVL0pjajFmWUIzaDRMczl2b0U2MEl5?=
 =?utf-8?B?UjVJaGU1aVdNTDB3TEUwaUFJOW0zTDlMRDBKc2xEckg5WnU5dmx1ZGQ1WlUz?=
 =?utf-8?B?OTRlRm9pQjA1ZUNPQjcyODhVaTF0dnZ4MjBpSUc0YnQ4TW8vOEt4TSt2b1F0?=
 =?utf-8?B?U1ZuSUZMSHZabzJaa3B4bWRuWXN1eHhzSzhXRUtmajBwUzZYNzJ6MUtzV0t2?=
 =?utf-8?B?eThlRGpRS2hsMWRCVjdoUG5yS2l0RDB1S1BnSXVnNTlmQ1dmcEl4MTZTR253?=
 =?utf-8?B?VHhOR2dyQ0krZTloVzBkTDMyWGFqQWR4U2ZHNTU2QXhXencyM1B4L08vZkxU?=
 =?utf-8?B?WEp3SzE4MDlTOXF2R3BaWWx0UHhkVGpTRm9mUERsTlM5UkxYMk5QemRzdmRC?=
 =?utf-8?B?RHpVZFlRS2FLSFlpOEZMUXRDaGRvbG1FcUN0eDR2eUpuK2Y2U0hXeU9HdzlD?=
 =?utf-8?B?M0JETVhlL000MjR0N08vUGY0UXBBSHgxK2ptWVRkS3ZSZ0ZWT3Ftc1dHdXc1?=
 =?utf-8?B?eFAvQ3FkY3ZKR0l1VWNJSzh6UlNCTHI0UUNRbmF6dysxbmVWbVBLV083bFIx?=
 =?utf-8?Q?XU2ygdpfXPWsPfckN0k+SPA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUI2dkFzdFdsdTNKbXpDc1kxbU9PY1V0NStJQ25SSnF6RGw1clhIVjBtUHNK?=
 =?utf-8?B?TnFFTTAyanliZ2RUV3B3b3ZRTG5JaEtsbERyTGR3VUE5MVdlQW5tUy9BWCsw?=
 =?utf-8?B?VCt2ck5lY2thQlVjc1hWQVpneUw1S3lmTnQ4RFhoL3V4YVVESjRZNThoY2pa?=
 =?utf-8?B?cE5hV0s1WUpXYUJiaXpDdHZ3MGV4ei81UnRDeGkwTDFYRUZ5VVNFMkxTOGxi?=
 =?utf-8?B?SmJBanJPOHJMZUpRT0J3T3ZxOUNZV2F2TmdibWl3eTVWbWRGZWRKMmgzVDZX?=
 =?utf-8?B?eWdzNWpCckpiVm5YMkRnL1RxN3ZWSkFGcmM4aXJMY2NyalozbUNnVlNsd0k1?=
 =?utf-8?B?SmdkeWRzQ3ZoSUp6cm9mMHB6QkFvTkMyL0Z2aDFGZ1g2WmZaNGUvWHdrMWZZ?=
 =?utf-8?B?MHJ1bTkxMjVGb3ZWeGxsUEJNSVhHbi84Y0lPYXdlNituR3psUE5uSmlybWNM?=
 =?utf-8?B?bjhjbjlUOUpETkdWeS8rWTQ0WnZFK2lHUldIbjJBczlHcy9VUVBjc3VUeVhi?=
 =?utf-8?B?YkVNdlBNSk5Yai81ZjNHaVJ2MDFHZjRvK2VEcHovOHFnN2VyWHJqcHFPMHNS?=
 =?utf-8?B?MW5zekRrUWN6MmpxL2w4b1Nrc1QzUFVwaVNqOFFkYk9SdVNhZ1ovaTB3TDlu?=
 =?utf-8?B?V3lqYys2UTRlSHBSa0ljZzhWWmtHS0E5Z0JiYmMxbHZ2Z2JyaFcrZEVuaFZ3?=
 =?utf-8?B?VHh3MVB5anRURlRLV09Oa29MdmNabTFoRnVaSWJ3bDZ0TFFsSXpTQ2FxWEpO?=
 =?utf-8?B?Ujk2amFwditMTmVrMElueHI3ekhUeWFVZnpLWXVMT0J3Z0tlU2s4U2RjRXVj?=
 =?utf-8?B?bnVHQ3ZrZm5YZjJsc3pkUTBDZDcyVkl2SUt0Q0E4OXVaN29mR3BjV3VTYUdW?=
 =?utf-8?B?b0IyWWRCZENJR0ZNYU1xWmVXOFBVR0hwbStpL3lKUVR0eHNIcVZxTWxNbXpv?=
 =?utf-8?B?YWFCbU1zMlRRQU1va2dDWlFxdmwySFFGSlZtZEtidHBtYkxOWlhFOFp2Zy84?=
 =?utf-8?B?WDZleE83WTdRaEpMK294bWRUNUI1S0tISkFpOWhEd2ZML2VQWlBxQm1NNXZ5?=
 =?utf-8?B?bUFkdGtUUzZQc0x0Tk52bWpDSWVHZm85VTFOWFBadWtaTlludFVBR2VoUVRk?=
 =?utf-8?B?eXJ0S21uV3FIRWI1NC90QXE5OHRxZ3RNeEt4WkY3c0Y1anhobnNQQ0xXNzBi?=
 =?utf-8?B?ZERxcFp4ZG90QUpMZTE5dGhHY0NJYTVGOWd3dGNManpKcnkxSmYzRGk4NUp5?=
 =?utf-8?B?cW1nOTEzdWlCY0R5NUl4ektzQk5XNGZqWVprZGNZZFVJaUJRb0dMV0JpaFpv?=
 =?utf-8?B?VGdHU0hsdkthRXVIVUM2TVFwZU9veDMweER5QU5xUzVHTmRqRFBuUk5JR3hS?=
 =?utf-8?B?K21VR2ZpTHRud3lXd1NRYUJPTGRLT1VPc1IwN01IZ2E0VUk1MHM3QmRJeDNQ?=
 =?utf-8?B?TlRubDRyN2xwTmo0R1MxcVlUUy9FNVNaQUtoRW8yMDBld1d2NDZ2RTNLT3Bn?=
 =?utf-8?B?WVFySnRaYnNRS0VqWHlDZXVrd0JSR1hIU2NWVHFNVVBMYVdPWWZ3Q3dZNk5j?=
 =?utf-8?B?K2NKMTM0RHJ4ZjhuakluZm9nQUlFUmZjampGVDgrcWZUVXd0TW16cmY1L3Jj?=
 =?utf-8?B?V3RBSld3cUx1Z1FucDNwNjJlS2FIY09ROEx0UnkwVWcrNXMycG5lT3EwdVFZ?=
 =?utf-8?B?Uk0rMGtIRC95QUR0TXo0V0JqclVwbEVMQW5pSzhEM2RTWnNOOGJicXoveFVV?=
 =?utf-8?B?aE0vaFZoQjdkelorNTljeDl5MmVVa0hHKzltbHh2am4zenNEQmZsM2ZISEsr?=
 =?utf-8?B?NTZiSlpJV2dqWGVncUdnUTlGWlNOZUoxNTBLbFZVeGNFbDRoczdZN1JlOWVW?=
 =?utf-8?B?SlpZMFFXdVo4alF1a3FtYS81aVFmWmVUVGd0dHJXOGo5ZHVWWWRRc04zVys2?=
 =?utf-8?B?K1BSZDRmWWFOSEI0T1FDUE82UmJjdFRKWmVpdHcrYnpmNUNUakZ0eGdGYy9M?=
 =?utf-8?B?SFllRTB4YndtcWViT0FOQVBHblUzelM3ZXpsL1VMZUJucGRjMm9CRUlhOVNa?=
 =?utf-8?B?MWZ0VDNYM1VRcWR2Q0R4aVF1a3RpZXVVdjUzWFR6Ni9xNTFJZi9RTWFNdEU2?=
 =?utf-8?B?dkpjeU5EbTZDOUhTc3dhZ2V3azdGdFQxRHdjSmdESG43MktzKzZmMTBJRzhn?=
 =?utf-8?B?SzN3dmlyanRZcTA1VXhOWHVSTUhuTlVCRGVBaTNWczJ3dGdEb0xlOWRSdGtI?=
 =?utf-8?B?bDgwTzdBYjdUMFl1UEI3Z3FMWVdEN0VYWHdlcXRWSVhmdlRhQ2FKbktack5t?=
 =?utf-8?B?Q25KUGNzYURuSUx4THVuYzhKVmd4eTlPa3o0eWVvb2h3b1FuVTBhVXlqS0RQ?=
 =?utf-8?Q?yrON/XmIyUQCrBDJPYzchr7jW5WLZ4zi1yAB+sdPw2aEC?=
x-ms-exchange-antispam-messagedata-1: DVbwqz/3Sotmb4+uaRSlVt+3R7UxVF5CrC4=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9AA771946C9F0748B81F1B9ED5E481DD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5ebf4c7-0bc0-491d-704c-08de59ab7976
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 11:43:34.4663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B3yAzMNbxlcdScMfoE4PC+uCI9QLzaY1AwbVhN3jcfzkgriXXZjPgSRbhl+tkpFuuZ1W4m0k51ZizGrzHqPGtubzbGVMXXZVs3a00osNlUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4649
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3DE88662AD
X-Rspamd-Action: no action

T24gVGh1LCAyMDI2LTAxLTIyIGF0IDE2OjM0ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDEyLzIzLzIwMjUgNDoyMSBQTSwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0K
PiA+IE5vdyB3ZSBoYXZlIGV2ZXJ5dGhpbmcgaW4gcGxhY2UgZm9yIHRyaWdnZXJpbmcgUFNSICJm
cmFtZSBjaGFuZ2UiDQo+ID4gZXZlbnQNCj4gPiB1c2luZyBUUkFOU19QVVNIOiB1c2UgVFJBTlNf
UFVTSCBmb3IgTHVuYXJMYWtlIGFuZCBvbndhcmRzLg0KPiA+IA0KPiA+IHYzOiB1c2UgSEFTX1BT
Ul9GUkFNRV9DSEFOR0UgbWFjcm8NCj4gPiB2MjogdXNlIEFORCBpbnN0ZWFkIG9mIE9SIGluIGlu
dGVsX3Bzcl91c2VfdHJhbnNfcHVzaA0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA1ICsrKy0tDQo+ID4gwqAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IGVl
NzBkMGNlZWI1Yi4uMzUzOTI0ZjhjOTc1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTQ1NjksNiArNDU2OSw3IEBAIGludCBpbnRl
bF9wc3JfbWluX2d1YXJkYmFuZChzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQ0KPiA+IMKgIA0KPiA+IMKgIGJvb2wgaW50ZWxfcHNyX3VzZV90cmFuc19wdXNoKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpDQo+ID4gwqAgew0KPiA+
IC0JLyogVE9ETzogRW5hYmxlIHVzaW5nIHRyYW5zIHB1c2ggd2hlbiBldmVyeXRoaW5nIGlzIGlu
DQo+ID4gcGxhY2UgKi8NCj4gPiAtCXJldHVybiBmYWxzZTsNCj4gPiArCXN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiA+
ICsNCj4gPiArCXJldHVybiBIQVNfUFNSX0ZSQU1FX0NIQU5HRShkaXNwbGF5KSAmJiBjcnRjX3N0
YXRlLQ0KPiA+ID5oYXNfcHNyOw0KPiANCj4gDQo+IENhbiB3ZSBqdXN0IGFsd2F5cyBlbmFibGUg
dGhpcyBiaXQgZm9yIExOTCsgcGxhdGZvcm1zLg0KPiANCj4gSSBtZWFuIGlmIG5vIFBTUi9QU1Iy
L1BhbmVsIFJlcGxheSBhcmUgZW5hYmxlZCwgaWYgd2Ugc3RpbGwgaGF2ZSB0aGlzDQo+IGJpdCBz
ZXQsIGNhbiB0aGVyZSBiZSBhbnkgaXNzdWU/DQo+IA0KPiBUaGUgZnJhbWUgY2hhbmdlIGV2ZW50
IHdpbGwgYmUgZ2VuZXJhdGVkIGJ1dCB0aGUgUFNSL1BSIGxvZ2ljIHdpbGwNCj4gbm90IA0KPiBn
ZXQgYWN0aXZhdGVkLg0KDQpJIHRoaW5rIHRoaXMgc2hvdWxkIGJlIG9rLiBJIHN0aWxsIG5lZWQg
dG8gaGF2ZSB0aGlzDQppbnRlbF9wc3JfdXNlX3RyYW5zX3B1c2ggdG8gaGF2ZSBjb3JyZWN0IHNl
cXVlbmNlIGluIGRzYiBleGVjdXRpb24uDQpJJ2xsIGd1ZXNzIEkgY2FuIHVzZSBIQVNfUFNSX0ZS
QU1FX0NIQU5HRSBpbiB0aGF0IHRyYW5zX3Zycl9wdXNoDQpkaXNjdXNzZWQgb24gcGF0Y2ggMy4N
Cg0KQlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBBbmtp
dA0KPiANCj4gPiDCoCB9DQoNCg==

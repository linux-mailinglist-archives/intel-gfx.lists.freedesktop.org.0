Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6D6A89351
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 07:25:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFF0E10E080;
	Tue, 15 Apr 2025 05:25:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OoNcO6GC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 372D510E04C;
 Tue, 15 Apr 2025 05:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744694726; x=1776230726;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=1RDkCNJxJzRsgzJ9rHfusxJr3eOMIPBLc50HDwzT8d0=;
 b=OoNcO6GC4sZZZSXsyNAFGpIh2CrE4lTxoU5lTEJLOyS6rdlLigOpGoEn
 ZYTbm4IeqKw2+tBFztpDNUMWdt8JRcOzqBTRTQ8EcFtM1VQScCp4mwfUu
 +shEUgQmzFEyzpDrmcRGoc42h9yozJgBDnRp8obWstpYPs0QOKnJdIhF2
 TCJXgTBmTnvLXAxT/mDbnbdey82CzqCquJkoCy092MFsxm9aIEvnK0A4f
 FX960C1OCrz6qe+CC+tYsRuxYgNFAnRaO3/rS4C3/ca1/kDze2CtXja0Q
 fsoRus50+XZsZp/TqZsYrzShIj1OPPhypvMfadFL5ItCRdZO9BWWJyanl Q==;
X-CSE-ConnectionGUID: sfFib9C9THOqlkK0k9t+jQ==
X-CSE-MsgGUID: 13qLKllSR8OLWFTKrUafig==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="71573011"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="71573011"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 22:25:23 -0700
X-CSE-ConnectionGUID: u8DSsn0nRESXhe7YFowjeA==
X-CSE-MsgGUID: ahatVvQyRTe9H3fBYhsKMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130018102"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 22:25:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 14 Apr 2025 22:25:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 14 Apr 2025 22:25:22 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 14 Apr 2025 22:25:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h3Ut4hLwWfSKbY0nA3DMiQDlf86hxMjWiknkoC3kmGhixA8TCC69m2dNFai2OiYNmZwznY50Ljo2aQjRPGPyGonnO0Rrq3erPRQGobmqAV8vhewI2RSCy9iQ/0O6nTQlsnhO7Z6egdfu80hJjL69/2p8hxi2+B0mCICT5C3PPDsR1pbhQ0as8sWCRq/LOLThjdlY3y+tywvzzB3BQOtOVazQQfyfs7sZ92FdIbMO/1gsERb7VLjhNt1UhDWu/nf7tTcJExLmo0OwrkltZDuOt8e1JLmMvrqa2itpWq1HBSosMLmxU8Ti1qyZNOcRWgdNvnQZlZ6lsi3qkUDMdHGSGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1RDkCNJxJzRsgzJ9rHfusxJr3eOMIPBLc50HDwzT8d0=;
 b=ZKv7Jd0XgZeWMs8iDubj/+GYx7HawygmRe5LcTRdYR8xfkOlksT0NEd1nGCYWduk/OF+43JfCQoeQD14G/+0fDGqLEyAK+bQFcPJH267Z8p1A28Hg9gF7P+LPhFBE8PmsOGRfJ/Otf733WS3rqmLXwc/o8S0PT4Umo6u8nU2ngLisPQIf0cV4Z/rVEMOeaye7rAE4JruWR0isrvriH0yRsJNA6+WRnhS7hu6EkL5Ztnnk9WNtb+Vg+gITnZ5ijMKXxYSWhU4A0rRX986Et9AHX+0AVml8C0ItlR+dYookhj8OQUXBcqULsLiHJCx+3hv9l0eh0KN+FL8iDBy77Yqfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7933.namprd11.prod.outlook.com (2603:10b6:208:407::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.34; Tue, 15 Apr
 2025 05:24:38 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.8632.030; Tue, 15 Apr 2025
 05:24:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v8 0/9] LOBF enablement fix
Thread-Topic: [PATCH v8 0/9] LOBF enablement fix
Thread-Index: AQHbqVtTBo5d/ip1B0moLSczNdJdeLOkOqWA
Date: Tue, 15 Apr 2025 05:24:38 +0000
Message-ID: <3fe058301a99b9fdd613cfc556717a8e8012f4ce.camel@intel.com>
References: <20250409140258.785834-1-animesh.manna@intel.com>
In-Reply-To: <20250409140258.785834-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7933:EE_
x-ms-office365-filtering-correlation-id: 179afc91-adf5-4458-281b-08dd7bddd15d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?N0xmRWgrOEd0OVBBYy9hUUliZkczS1A5Vkt4ZDBYaTdKMnJCK2x1RmFFQjdq?=
 =?utf-8?B?KzkyMG5mTFUzQ1ozRENKejFvK003QXRWRVhZYW9CeTFTUTdJWGgybEFuZm4w?=
 =?utf-8?B?OUIxMDQrSzVRQXV1NzIrS0Z4dnlMa05NSG1EQk5zQklOVHptOFdLWFVLM0hC?=
 =?utf-8?B?alBkNDZ5S09wdWk1UmsvM1JuTmV1OGZhOGEwdEhTS1hYRVZ6MkVlbHRMRk15?=
 =?utf-8?B?ZFhwMHBFZzlEVCs5Z1VyOFo1Z2J0RUJQRy8vSWVXQ1h2VFRKd0RXS3pKa2Vo?=
 =?utf-8?B?Y0dNbitPM1NvSWF3a3dERXRQR3VDK01Jb3NwdzFSVWpsaGJjdkhDUGpXd05C?=
 =?utf-8?B?TXMweDZHYkxGZ0tFaXBsM0JXNDVJZk9NYk9oejRJTUtER3kzLzA0Z0ZaZm1w?=
 =?utf-8?B?cmZ1MDdOcVNSOG1YVHF3Si9MS2NOMzA3ZFcxUnZyUFRoNEFadDNrV2FCTjR5?=
 =?utf-8?B?RjhTMHFTbWJCbUR1RTRkQ2t6aWxrc2RvSlczSHQ5cmkybUpOMEkrUVRQYmZJ?=
 =?utf-8?B?UmlDWDhseWk0Rk83Q0JZSUdiSnI1YUNsWmF3bTJNU2hJSVpHOU8wY1BGVzV3?=
 =?utf-8?B?eTBzdGZrS2F1RkFYK2RpK3dpK0luYnRBeW1qdmJJVFRpMHBzZlpiU2w4dmdM?=
 =?utf-8?B?eXRQSWtUVU5Dc1lzNTJMMEJpQjd3Ukk0WVpoSmJhTjM5dldUdXhVVUdvVisz?=
 =?utf-8?B?cUJ2R0lyb005dzBNTnk2cFVVd0gyeHpDS1BxTFZXV05pckpPS0NtUVFMZndP?=
 =?utf-8?B?YWRvQVI3QWN2QU1JY1Z0dG1YckcyZzkzQnhGVWRPd3V3M2VORktvd0lZZlkz?=
 =?utf-8?B?bnpkMC9NVWR3UzNtSC9OY2hXWUdZS2dTUnF4U2IyZUZsdHRxand1SzVERklt?=
 =?utf-8?B?SzZucXcxM1JJaHlsdkh3bU5OMmdoZFh3UGNRckxkaTN3cll3NXRZRGlkU0Nt?=
 =?utf-8?B?NTg4WCsyc0xEeCt2bTNwWmVoK0NhaVNkRjdDU1o5ZzRwbmlCU2QzeEY2MHZ4?=
 =?utf-8?B?SXp6NTk0RTBHaG05R1dNYTh0MjVNa0I3MXJ6VUN6OUNHR1dhdjE1aHEzQkpv?=
 =?utf-8?B?blF3M1p2U21mRWFKSkw4QzRibGZpMVJnSEU0b2txd2pudkpmWXNYWXp2R2hZ?=
 =?utf-8?B?MHI4ekVrNFQyUmlIT1QrclpyNEJpR2VuQmRvOVg0emhwWE5JZ2U1c3gzcVlv?=
 =?utf-8?B?NGZnMjJiUVEra0Y0UmtXSE9Zc2J3YTZvWExac3RNakJYRkdZMFA2WHpWVTIz?=
 =?utf-8?B?Nm1ybVhCSHpjUUNlRjkwZ1d4bjRKTnp0NDFIMFRYQ2xaRW1vWHJFSmI3b2sw?=
 =?utf-8?B?MzBvaXNia2duaU5CY1BLYi9UTEZyL2tOV1pVVE5OcTNSNnlLTmNrMy8vZnFi?=
 =?utf-8?B?bzVDQm5yN0VLeGVML2JEZkxrQW9KNFRseVlyRm9QK3VTZHl2alJaem9mWUFR?=
 =?utf-8?B?R3M1d3FkMFhRazA5Y1FGWDNZRUJmcGlPRnk3c0Y4R2JLaE5EamdtS201WEpy?=
 =?utf-8?B?T1NKa0tYN1RucWRUd3BBWnB3NUNFTWZiMzZiNGVWTlZSMjBFZEhOdlg2MXdS?=
 =?utf-8?B?am4va1RCeCt1aDZvMDJOUnJVUERFVTRmN2F1MlZXWSswNE40TU9BSzhubjVV?=
 =?utf-8?B?My9oNWZjZHgzeEhGSlp3aGhkblIxK05qL01aMCtWWUFXSDJBbk5XUnFoa0JF?=
 =?utf-8?B?RXNhblBnYTJCVmxUNlFHemNtbVA0TlpjL2p2MlRLVDdrMXc2dlNUd1dkcitQ?=
 =?utf-8?B?Rnpkb1VuM21XZXFZNVltd2RScWFkQ3BweStFQ2NHWnZlNFVYTDFYZjJtSldo?=
 =?utf-8?B?Ry9DWmhCcFJQbXU3VmpzUTAzdE1lUDFYOGtjditTMTVXa241cXUxMHZWU3ZN?=
 =?utf-8?B?U3JVMnIxNzI4SVFTU0tOVVdnS3NaZW1oZkpDeXhrRkFzMGVyMWVUTkJlVVBn?=
 =?utf-8?B?ejBHNnFWV2Z4SjFqaE9vdXZRMElBYVF0UzhhUHhISDZ6Z3o3RUt0ZHJVemtJ?=
 =?utf-8?Q?PzUCntUXV4rxRJ5zAMDw8BxYzBMYrw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bkRaU3dYTDBwTEE0ZkNFRDl0ZSsrcUhUbHYyd1M3NlFQZWVDYnRWMzRObnZu?=
 =?utf-8?B?U0lJdFN3b21hTG1CNmtFYmpnZDNYdWRKQkdtcnJzZXJZYzhKaCtLUjNJNVlZ?=
 =?utf-8?B?cWZxbTB4UlZrLzRvbFNaNVBSWUtGTWlTZXFoQWRZOE9icHMwZmtYb3pCQ0h0?=
 =?utf-8?B?SGMyWGgzQjhOKzNHVzN4U1Y5ME5hdzRTTHlDZUFNMmxncmh1OERzejVUWWEy?=
 =?utf-8?B?cXpEQ0lEb20zYmtIekMzMXN0VG9XRk9ubGdUNTNUVmN6bVJNeUZXRnVhOFBT?=
 =?utf-8?B?RitxVTMrc1A4UFNuRDhEMGxiaks2T040NnpIdm52bWtheExNZzlNdUJFZlQ0?=
 =?utf-8?B?MnBQb2hxN1B1U1V2N0wxbUp3UjcvRENOdU53Vmpkd1lsVElXVktRbHlacHls?=
 =?utf-8?B?dmsxcFFiUUdJQmQwRlBzRXcwMkpCb1BrNWZ3dUFVZGY1ZnRnNVZ0QklaNzla?=
 =?utf-8?B?M0k4ZkY2dWROM1VFblplVmxPWU5iZndndm81UFYza2tMRW8zb2Y0QTRMd3pv?=
 =?utf-8?B?N3ZuOEMrZTBTVjNkLzcxL1BoMjdYQ2JHWXA0S2EyRW9oZ0Jrc0cwVHVOZ05v?=
 =?utf-8?B?dUZ6S09sNzl3aW51clZNU2ZzMjBaQjZxTHR0YzJNL0F6RmxxRXZoMGFTME1a?=
 =?utf-8?B?NTN2Tnc1NFFIcVp0Y2QxSUt1RVR3djBJMG94WHFSSU1oWjZ4VEtaQTB6WXBO?=
 =?utf-8?B?QzRRVmJ0OU4vUjN5VFVzV2hFZkhIRGF4Y2FuUUVLQnl3Q1ZobjlEbDBkL1Za?=
 =?utf-8?B?VUdnTTJXZnlYMHhUL0lYTjhtM3BmTnozN3p6NzRIaHlFZkMvQ1VnSUUzU0Fq?=
 =?utf-8?B?ZE9jL05reFJzeS9GZjhCT0hEbFVxUTRFSWs1cUJUc3dvWmJRTlBUeCtaZ0VM?=
 =?utf-8?B?bnBwZmJWOU96a0dEVGxPWUZhRmtzVzg5WnY3aFY2eUJCTXJqdDJOM25iMnpG?=
 =?utf-8?B?S3g0TitJWWN2dkFsZ3hBNHFBQXAzUXRGaGI1NzJwL3lkYmFMUUZSV2pJYUg5?=
 =?utf-8?B?THgzd3lUeUdTNG9GMVlUcHhxMTl3LzdXU05PZW5yOEF3M2JPSTVhblpnQzJV?=
 =?utf-8?B?OGhnc3JYemdBYTE3TzU2Y2ZLZ3pYRXNzK1RocnNxQ0dnTGhXMnVCekdoODl0?=
 =?utf-8?B?SG4yOTlwclhEQ1NqWEYvRndLVzhNdllBWG15UWp4dkdhK1dsL3RyZzd5WXlX?=
 =?utf-8?B?TWtIKzh1aGpoNnJKaHZWTlF3SlRWT2ZocjBVNSszMXhvZlhMVjVsQjk5dVdQ?=
 =?utf-8?B?TnFwSW1JZU1VbFZxNiszbUJBcTlNQVF2TXAyeXN3dWJ4aUlpeW01Uk1qUnZY?=
 =?utf-8?B?K096RHRPMFh0SXpQRWJuRXhGZW1KZEpnaHNOaWR6eVFBbEVpekRrRXRmck10?=
 =?utf-8?B?T25QUE5RQjZmQnRyVU84SitlQjByaWVrSi9QL2gzNDV5eW04RWpkbkRReW8x?=
 =?utf-8?B?R20xSHBFYUJTaWNod1dad1VSb2doN1l4SGVZV29KZGZobGRHY2pubW5oSkRk?=
 =?utf-8?B?MzhnOXFEOHJnYmtGSy8xbFNqNDh0Z29zSXptVlBvUGZwdEE4Ny9pSVJVTW1P?=
 =?utf-8?B?S0duRzkzbnNLTGhLQXJSZUZ6WkdhZ3VvZmJGRWlEKzFHOGh6RW00T1lZbHA1?=
 =?utf-8?B?Zml2Rkw3ZTJIS21hZVdZSy9kdXEzdURFcnY0V3lBRDBPdEc5RWJWYVN4VWIw?=
 =?utf-8?B?SWl0RjVaNHFaemhGeSt3WHBzdkxHb3dsckdWWVJVS0NVRU9iYnlRMG1Vb2V0?=
 =?utf-8?B?RWJBSy9jWFR3NkhMQUNCTXpUcFhUS3pNRXJzdDVOVUU5aXBIYnN5Y3hxeUpw?=
 =?utf-8?B?MFVOdlNXMXFVQW9aYVpqUXl3MS9BVWk3V0hzV3JwT3pwZ1RDdjZOZ1A4bGNS?=
 =?utf-8?B?ZHpwdkJBcFpXcC9Ta1QxUmhUNjl3eGoyTlRyWHdRN3ludSsrT2FDQnVGaFZH?=
 =?utf-8?B?RFlOd290VHFydVpmRENPUnFWT0w3YmNrMWNoOUxraTRrdlNrOU43OEx6alFr?=
 =?utf-8?B?MXdsclcxamZyMkdZSWNpdGkwdXloQ0tCZkJVU0ZmUXJydlZocGtnZ3B4RVBR?=
 =?utf-8?B?MXZQanhqUGR6eEhNMUFsaGlEMUE3Tk9SKzBGMFlXL2VqRVJMd3ZucjZVL1Q0?=
 =?utf-8?B?MWV5TkJIdkxsN2RDcERVbmNRREd6MHpsRXpJZ0dxNGRRd3lmcXdyemNqd3Q1?=
 =?utf-8?B?OVRnTWtQOW5iWGNGTHJDTHgxSFgySkV2aUs2SlgwVk1qU25udHBpM1MvUWgy?=
 =?utf-8?B?ckpKQ251Skd3NnpCenNJWUpOM0JBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9F8C5E1751FC3146BFB646E07B01D3C2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 179afc91-adf5-4458-281b-08dd7bddd15d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2025 05:24:38.6538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LR3MYuQQfhvN78lpoSHpi4Iz6TbNL36sSWJb1+iRH6DmiJaRNoKDhmvWCkOleYlWQVKLLRF26mp8Tg1BnyiSaExbhMxiqR/UU7WX+dSmShg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7933
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

SGVsbG8gQW5pbWVzaCwNCg0KT25lIGdlbmVyaWMgY29tbWVudCBvbiB0aGlzIHBhdGNoIHNldC4g
SSByZWFsaXplZCB0aGF0IHdlIGFyZSBtaXNzaW5nDQpzaW5rIEFMUE0gY29uZmlndXJhdGlvbiBj
b21wbGV0ZWx5IGlmIFBTUi9QUiBpcyBub3QgZW5hYmxlZC4gSXQgaXMNCmN1cnJlbnR5IGluIGlu
dGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZS0+aW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQtDQo+aW50
ZWxfcHNyX2VuYWJsZV9zaW5rLT5pbnRlbF9wc3JfZW5hYmxlX3NpbmtfYWxwbS4gSSB0aGluayBp
dCBzaG91bGQNCmJlIG1vdmVkIG91dCBmcm9tIFBTUiBjb2RlIGFuZCBiZSBjb21tb24gZm9yIGFs
bCAoUFNSL1BSL0xPQkYpLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCk9uIFdlZCwgMjAy
NS0wNC0wOSBhdCAxOTozMiArMDUzMCwgQW5pbWVzaCBNYW5uYSB3cm90ZToNCj4gdjE6IEluaXRp
YWwgdmVyc2lvbi4NCj4gdjI6IEFkZHJlc3NlZCByZXZpZXcgY29tbWVudHMgZnJvbSBKYW5pLg0K
PiB2MzogQWRkcmVzc2VkIHJldmlldyBjb21tZW50cyBmcm9tIEpvdW5pLg0KPiB2NDogQWRkcmVz
c2VkIHJldmlldyBjb21tZW50cyByZWNlaXZlZCBvbiB2My4NCj4gdjU6IEFkZHJlc3NlZCByZXZp
ZXcgY29tbWVudHMgcmVjZWl2ZWQgb24gdjQuDQo+IHY2OiBBZGRyZXNzZWQgcmV2aWV3IGNvbW1l
bnRzIHJlY2VpdmVkIG9uIHY1Lg0KPiB2NzogQWRkcmVzc2VkIHJldmlldyBjb21tZW50cyByZWNl
aXZlZCBvbiB2Ni4NCj4gdjg6IEFkZHJlc3NlZCByZXZpZXcgY29tbWVudHMgcmVjZWl2ZWQgb24g
djcuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGlu
dGVsLmNvbT4NCj4gDQo+IEFuaW1lc2ggTWFubmEgKDgpOg0KPiDCoCBkcm0vaTkxNS9sb2JmOiBB
ZGQgbG9iZiBlbmFibGVtZW50IGluIHBvc3QgcGxhbmUgdXBkYXRlDQo+IMKgIGRybS9pOTE1L2xv
YmY6IEFkZCBkZWJ1ZyBwcmludCBmb3IgTE9CRg0KPiDCoCBkcm0vaTkxNS9sb2JmOiBEaXNpbnRl
Z3JhdGUgYWxwbV9kaXNhYmxlIGZyb20gcHNyX2Rpc2FibGUNCj4gwqAgZHJtL2k5MTUvbG9iZjog
QWRkIGZpeGVkIHJlZnJlc2ggcmF0ZSBjaGVjayBpbiBjb21wdXRlX2NvbmZpZygpDQo+IMKgIGRy
bS9pOTE1L2xvYmY6IFVwZGF0ZSBsb2JmIGlmIGFueSBjaGFuZ2UgaW4gZGVwZW5kZW50IHBhcmFt
ZXRlcnMNCj4gwqAgZHJtL2k5MTUvbG9iZjogQWRkIGRlYnVnIGludGVyZmFjZSBmb3IgbG9iZg0K
PiDCoCBkcm0vaTkxNS9sb2JmOiBBZGQgbXV0ZXggZm9yIGFscG0gdXBkYXRlDQo+IMKgIGRybS9p
OTE1L2xvYmY6IENoZWNrIGZvciBzaW5rIGVycm9yIGFuZCBkaXNhYmxlIExPQkYNCj4gDQo+IEpv
dW5pIEjDtmdhbmRlciAoMSk6DQo+IMKgIGRybS9pOTE1L2FscG06IHVzZSB2YXJpYWJsZSBmcm9t
IGludGVsX2NydGNfc3RhdGUgaW5zdGVhZCBvZg0KPiBpbnRlbF9wc3INCj4gDQo+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPCoMKgwqDCoCB8IDEzMw0KPiArKysr
KysrKysrKysrKysrKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uaMKgwqDCoMKgIHzCoMKgIDggKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jwqDCoMKgwqDCoCB8wqDCoCAyICsNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuY8KgIHzCoMKgIDMgKw0KPiDCoC4uLi9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaMKgwqDCoCB8wqDCoCA0ICsNCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmPCoMKgwqDCoMKgwqAgfMKgwqAgNyArLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgIHzC
oCAzMiArLS0tLQ0KPiDCoDcgZmlsZXMgY2hhbmdlZCwgMTUzIGluc2VydGlvbnMoKyksIDM2IGRl
bGV0aW9ucygtKQ0KPiANCg0K

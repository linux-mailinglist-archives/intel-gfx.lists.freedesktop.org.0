Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F1A9D953D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 11:13:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E0C210E812;
	Tue, 26 Nov 2024 10:13:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kd4qE5nj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04AB610E812
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2024 10:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732615980; x=1764151980;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h0hFMNBaVcrBjfMr/MfbPXpx8yibkiVmsaupNWlPNxg=;
 b=kd4qE5njhc5E2FnOzo0sGTGRBkEKvKusO7/RC1RU9t9Vg9F7v3VCjAaN
 WshjRT/vqdY1JV4y6THX3hxUiAT3hg6qLRNuRgwb1VHfytR8EeJAWddpy
 hXlYI+v8bnvKyR7loNBFPXzpQQW1qeIVLrsqe6N1t8ZROwk7uF7fhG/Wu
 iMMsjEX6G0Qx0F8/arHpX7P6i6CEH8LugKrt+kmgMkB6E2rWGRWdxjM65
 CoYPpsgPBcKAssqa3ksdzdGKUBnWmRc+BhbX7I2knsIrtF5cdKv6BiHca
 1kIxhMwsmq0e6+HwOVONCsGbjBmUiWPpUrzV3MpHNci4/4AUnsjYOBVXm g==;
X-CSE-ConnectionGUID: WXUfpQa3S+aAezTjQxFD3Q==
X-CSE-MsgGUID: Vy5I7/eeSyWslv1Cmz+CfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="32897778"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="32897778"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 02:13:00 -0800
X-CSE-ConnectionGUID: CYgJXH8PT7qAAPCTNbyA9g==
X-CSE-MsgGUID: MyMCWfMuS2qk+Kc2zjIUuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="91894220"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2024 02:12:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 26 Nov 2024 02:12:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 26 Nov 2024 02:12:58 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 26 Nov 2024 02:12:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bWfvWj/Q/PCPNUHCXtng7doSjWIH8cZuaVXVdjXjkX9dBgL+zqkz8oiljzuWTC6kXE1rP0cV4sBgPU1f8eZCKcnv6OG1Sflv/kL9UuqWLEdJsPO2qrZDoBek1mUgacME4Vwy/Ef3xGeW6XEGKqQRZzYLQx2uDLmOa0PxRZAddmYjdDET+F/SqjvssHxneC/6wsnPjyOriJh8nPwd5a7BVopMWTqD8PPfOAQ7W8hxtqNIexg9I6+BRcYM6wkNmw5m0t3qex1g2u+tOBguTkBjE//ONcL9no/8InNIn28JK3t8RDiKVXQ2g9e08e41nvI0ApwIsvpPimei7FBce1WhRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h0hFMNBaVcrBjfMr/MfbPXpx8yibkiVmsaupNWlPNxg=;
 b=WAfFHX6cYZZ9/wxcRldMuLzVEiZVm92rNcA44DCWdJ68L9mc8e1k0XMPObE3+ZbMsDFo94Tz5XklPq1DTnua8PawuQHgo4rO9VDjNrnHTs6YPmUwnFrePH7THJrW1eFdeavZ4Igk1c8PltwPb9Avo3xiNNaqAb0FugQzBS8HDHLFxn6xx58rVh7zuPUn0EJO9fRk/fOhmDkl6y9VsKi8dLeJ3iUfwBYqB8lpieOQc4JxRrfGILNY+Q9TrMpoFzRnHIb4gnUJu3Zd4ADSPE22iSYJNN/6V2DqZ0GD9n/FYatHqv85Pj8VbG/lbTytfAIus/SvOV59dQIqV3dTAJn5bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by MW5PR11MB5905.namprd11.prod.outlook.com (2603:10b6:303:19f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.19; Tue, 26 Nov
 2024 10:12:55 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8207.010; Tue, 26 Nov 2024
 10:12:55 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Syrjala, 
 Ville" <ville.syrjala@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lee, 
 Shawn C" <shawn.c.lee@intel.com>, Brian Geffon <bgeffon@google.com>
Subject: RE: [PATCH 2/2] [RFC] drm/i915: Unbind the vma in suspend if it was
 bound
Thread-Topic: [PATCH 2/2] [RFC] drm/i915: Unbind the vma in suspend if it was
 bound
Thread-Index: AQHbPwaG/8MUi6zjtUa9ADSCDT79ibLH2uaAgAABw9CAAXw7AA==
Date: Tue, 26 Nov 2024 10:12:55 +0000
Message-ID: <PH7PR11MB825216666697DD2D3ABC49A2892F2@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20241125062804.412536-1-vidya.srinivas@intel.com>
 <20241125062804.412536-2-vidya.srinivas@intel.com>
 <CADyq12yoA2=eHNxnNibKvNw6+A81XyAXvq_8KRh+AHeoNfOZFw@mail.gmail.com>
 <PH7PR11MB82522BF88DA5886DD3ACF0E9892E2@PH7PR11MB8252.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB82522BF88DA5886DD3ACF0E9892E2@PH7PR11MB8252.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|MW5PR11MB5905:EE_
x-ms-office365-filtering-correlation-id: 15b222c0-082b-49ba-dd29-08dd0e02e52a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?RXlFODFsQlcwN0tYa0JWVzZIRE9WV2lHV2YreUVlNTBQOXBIZ2hCMnh5NThL?=
 =?utf-8?B?NXJmcEJzVnRSWVVUY0FNUDhOcW5lMUcrTXZHWHJ6WFN2UU5BNVMybXlRNytY?=
 =?utf-8?B?ZTBBUVZXTnRxMzBPbmphR0FiWS9UY2tjeThxYXlPV3h1aFh3UnI4a2QxQnNs?=
 =?utf-8?B?QVdvbGo1ZWhlbWtvSlhONWpvc0JiYWdVUWNKd3BEcUt0VmpydU52ZytpUUtx?=
 =?utf-8?B?RFUzc2JyRFZIMVU0N242MVNxZGlRT3dpZWRmSzRySDN6MmFQeDFKSVIrdWJM?=
 =?utf-8?B?L2F3NUFDTkxrRnRQMWtSSjdyYXNlSC9PSUovazc2SDhyUHFuTTkwa2ZteHB5?=
 =?utf-8?B?Zi9zd2laQUhRNERTWVlZbUZGU3haSnozb1g1ZXhsUzYwMDE4eVVWVzVyRE5m?=
 =?utf-8?B?SlRJQnlxaWJEeDkwOFVQenFsZ2JHSmY3MWJ4MnY0allEa2YvSThGNjNhWW5R?=
 =?utf-8?B?a2M1RG83bHd0TzllT1owS0dxVFJyTHo1WmJQQTdlWEtZVVFhMmNxM05iRjNK?=
 =?utf-8?B?UEdKRkdSdTRhaE5ZNXR2U3B0SnFmYkpRUkxpRXFncU9lc3FKQWpteEVMR25L?=
 =?utf-8?B?cTBVTUtrd0dqTmx1T1Z3ZUhZM3B4MG56OHNRREhUQ1VIUXRkb2ljTkFMMDAv?=
 =?utf-8?B?OXhaRkdkOEtpbXdRVUtiMEJORjBMSjFjSGw4SzBUZ0FZaHdDZ2xLcWE5WjJ0?=
 =?utf-8?B?eTk4eDU3WU9OTWZwUzA0TllsZ3Q2S3FkRk9CZnJiaVVycG5MdmREbFZhbklj?=
 =?utf-8?B?eDJEeThya0FZM09nVFVhSlpYSExOZUpXYmZVREs0MUMxNFR1K0pTR2hZekhi?=
 =?utf-8?B?VDBubEdCN1hnS2NlNGI2VFIzeC91MFJnMnBFSjg0ZnJwR1N5a1JHUjVGZmRN?=
 =?utf-8?B?aUhldHFyWHFjL3NtUENYWGEwMTVVZWNFRWNlMXZWVGhsQ2RXZGtjZkduQzZM?=
 =?utf-8?B?anJGZTE2ZFgza3pkWlBFcExEei9jdTdRR0pXL3c3aU1YeFI2MnByNllLL2ky?=
 =?utf-8?B?WU5KK2JYUWNWRVh0UEQwWUNaRmlLdVliMDA3M1pyczErdUN2YWJ5VFROL2Vs?=
 =?utf-8?B?M0o4aUhrbHZERVZ3L3VQWmdDL3gyMWgwdDhzQlRzSkhVeHpkeW05OUI4UGow?=
 =?utf-8?B?bkRqSDZEY0pvNE9WandvR28ycVdrU3BBZVJYcEJxb1IyV2Z2T1M5bG1SZWZm?=
 =?utf-8?B?MjRLYnJtcnNyTEpuOEtrTXN2MHgrcEdyakVQOVJEdGg4RUhJWUlIWXJ1QlB5?=
 =?utf-8?B?VGxPUzNZSlFmY1ZKSXF0YXl0M1FQUG4zN01Pd1NyZ0EvTnZ0eXhRS3h5OXA3?=
 =?utf-8?B?b2VxWXJxS0UxVDR4OUVUZ2ZOTnIxQUFLRGdnVFQ3clpHazhtcEx3aTRpd1Bj?=
 =?utf-8?B?UjYvemVrblFTWnhTQTVncEpHandYbVhwTnhBOXgwTUttRFFOV0NXV2lGekhq?=
 =?utf-8?B?d3BuTEVnQ1lGdVNRNE45anpiOHl4R2t6K1I2aHp1dXd0K3habXBVek9pdmY3?=
 =?utf-8?B?RXRJck9NWGxsaHNUMWNoN1QrQ1pGc0l2Q3BPRm9mY2lVekdSVGlXLzdUZVlm?=
 =?utf-8?B?QW9XblNMS0MzdkZIeHBTSGwwbmpEeFlsSUl1M3p5S21DanJuTzNVczNwZVNN?=
 =?utf-8?B?TkZqZXloR0ZXUHgzS0g4VkpmM2svbnpjUkhOcG1OQ2dFNzFmWEZBS1F1ZWU4?=
 =?utf-8?B?SUhocENGcEczbTBxNGR0QzFxR2xWV1hqK1d2OGR6OCt6aytuZTZPODg3bHJ2?=
 =?utf-8?B?VEtEaUR1bUdlTGRXV1diQmVFN3hYT2NWQWJ6dHExNVBKZU5DMXVOMFREaG5J?=
 =?utf-8?B?VlB3RllyWGlid1ZJNjdoQzBYRktwWktMUVQzdUEreEtpR3VtSWt5ejJRWjQx?=
 =?utf-8?B?QnFBVHdvKzFYTkh2NHhia0VoTDVBTjFKK05IUXJ4K0V3M0E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2ErZmlreEUvSElCNXFaQVRyZGdpR0g4cEtRbkRvQk8vanVlaThldUcxdzdP?=
 =?utf-8?B?NjZENnRmZEVCQmQvNEpLbnBFWlVwc3FLc2JEREhXRXNwU2hCL2E1WGUwOW5w?=
 =?utf-8?B?U2VMY2RsNmdxa2h3U1ROS2NkOVN6clJlVXdRT0JYQ0dXRUkvaml5WjdaU3Yw?=
 =?utf-8?B?WXZzZE9jZldsQjdJSVJhRDdnalVyTlg5c0o1Nm5QUnVnMFBxblhwcDRtVHJv?=
 =?utf-8?B?UElBT1FQZFlRR2VOT2JJWmpxNXFCTkpFM2pCU3dOeWhIbGxSM0syYjFnWlhU?=
 =?utf-8?B?aTZ1WUNJMFhCWXBYSXdOMlhiRFlHWnAwRWhXSFkxdEtwQWpVRXV0NzZIYVEv?=
 =?utf-8?B?aTZJZUdiQUJBc1R1V3RQdFp3YmsvOGxldlZvUHVEOHcxODZmY1JlTHNhdnFy?=
 =?utf-8?B?eUsvVzFLK2ZvOEk0ekdQc20xWVByNWR3bTJPUG5VMkkwRGd0bFRHZXQ5L2Y4?=
 =?utf-8?B?R253UHhwVXZrMndVc0pHUE13T3lobStzK1dxWVI3Q0R2aElMaXZnblVuNWdt?=
 =?utf-8?B?QUZEUEhtcGQrOWp5L01DL2ttekNJTURsOVhsd3NFYmpSQnNtelRKRHFQQlRi?=
 =?utf-8?B?MncrM1B6MUVwYkJmc2RKNGtCWkkvemdNNTJyWGF6Q2ZYV1diYnY4c1ZSY0Js?=
 =?utf-8?B?U3ZodGFESXI3UVlnREdKOFg4NVUzcS9qWEFzRE1kcDNldmZsM0pKamw4U0RG?=
 =?utf-8?B?ZVBYR3Zxb241aXc0TzhiRE51T0ZjbzNNSWdSQzE3eFVGb0hhdGhIcUdLbGFl?=
 =?utf-8?B?alhlNFlBckQ1UmZWa3ZvSXVkVW9rM0t4SVBvUG1GOFBWQTRRNkN3dXkwNmhI?=
 =?utf-8?B?K05LUkx3N0VWaUJLaHJicjhoTlFQK1EwMzdPbFp6QnBDK1pwdkhHMW93NWJG?=
 =?utf-8?B?RjlzeVRkenNUb2hyWXlBd1VjZnRVd2NlS2lTaU4rMjhqRElZNkwyZlRiUVlw?=
 =?utf-8?B?by8yYWFaV1JzYzQzTDJJSXBKdkU0YWxxcmppVVNDdkJoK0VkTW1Ja2czclFP?=
 =?utf-8?B?cGQ4MzVpZUpkR2JxeXZBeEpFcEo2UkhLdUE3bVArVGJZUlZpc3l0ODNaQ0Mr?=
 =?utf-8?B?dDFEWTZ1YnhsR2pvenloVGdLQU9paUQzdDBFd0thcDA0dk53ZEQ1WHU1T1BB?=
 =?utf-8?B?S1FKdGZiRFlWc29rNVozcWdvZEtjMU5uUkZUV3lUZ3BnRzcwOXFCcTZSZk9R?=
 =?utf-8?B?MUVtemhiQStrZVVwV2N4M3dVMVNVVnJGVncvQXh5TStoWUIybU5KeDFCSkdN?=
 =?utf-8?B?WmFJWmFsb2tuOURldW1KMWtITkdydXRXYzRCQkFsbkptaFMxOEQ4b1piTTB5?=
 =?utf-8?B?dmtjYmZnV0dMU0VtU1VPL1NsKzZycS9zY0Z4dW85T3kyblk1OEs3TzZtSWtK?=
 =?utf-8?B?cFh3eGVsTFI0QTBSaHNPU1JEQlVkakJrZmhQZUtGSHdzMWd4UnpiOTdoWS9D?=
 =?utf-8?B?VFpmZDAvK2sxOUQ2aXNkdmlFZWFPL0lQV0NycW5lRkovb0RtUjdDaFREdkRu?=
 =?utf-8?B?VHhURERneWh0ekwrNmQ0WVJkNTNpck1wcXhwS2wwaWF5TWlORUlMbndPNyt2?=
 =?utf-8?B?QUhHa3RCUjFVNythcXFSRUM4cEJodXVOeEdybVEyMG00elJIa2VPa2xUOCtG?=
 =?utf-8?B?UHZwVUErWE5hMk1vc3M3Y1RFMDBvV25MM2RpcVNKQ1R3TGZ0M21IUWJKNWFs?=
 =?utf-8?B?TGd2R055VDExZi80NGJla3JwcVZmMS9kaklIc1N2TFYzVDAzR3dNcDJldmpC?=
 =?utf-8?B?YmFLR0huTXBHVEk0NDVCUXpjMHhSUDR2ZTgxQU8va0FGQ1FqcVBDbEw0ZUFV?=
 =?utf-8?B?MGVGLzRIOFQzOWpHeUl1SGIyQkt6UHA3L0tCM2ZxeGdEMG96dm51L0JJMld5?=
 =?utf-8?B?SkMrNk9udGlweit5aFBqNm9pWDg2MEw0U1U1U2h1NEhIcXFPb0thcEFWVk9K?=
 =?utf-8?B?b3dTbkc2d0ZLWlArd2NkMkh4K3l2Smh3WlExT2U5NkFRVXloaW84Q0V3OVZZ?=
 =?utf-8?B?cG0wYWlXSjltTVF5eUdRaUpzSkZkSnV6akJ5OGJGOWVMZ3hKWVBMU0Q4MXph?=
 =?utf-8?B?bEt1aU01clN4U0czR1IxV3F4UWYxWWpPcXlTWkNRTFdSa21nR2VjSGt0WVFM?=
 =?utf-8?Q?IRjf3y0V9pp6mNN3pssQEXYt5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15b222c0-082b-49ba-dd29-08dd0e02e52a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2024 10:12:55.3654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CKSuO4TSp2WESHGVyjfqrVOeNRrq4SgSWusbnfjQb+y3iKl+l+vkBqaQRT7676fAvOcAsc+3nuKkzkKjpFj5C4rcYCwwnT/VbOy8WPxhdnE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5905
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU3Jpbml2YXMsIFZpZHlh
DQo+IFNlbnQ6IDI1IE5vdmVtYmVyIDIwMjQgMTc6MDENCj4gVG86IEJyaWFuIEdlZmZvbiA8Ymdl
ZmZvbkBnb29nbGUuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsg
U3lyamFsYSwgVmlsbGUgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPjsNCj4gdmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb207IExlZSwgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSRTogW1BBVENIIDIvMl0gW1JGQ10gZHJtL2k5MTU6IFVuYmluZCB0aGUgdm1h
IGluIHN1c3BlbmQgaWYgaXQgd2FzDQo+IGJvdW5kDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBCcmlhbiBHZWZmb24gPGJnZWZmb25AZ29vZ2xl
LmNvbT4NCj4gPiBTZW50OiAyNSBOb3ZlbWJlciAyMDI0IDE2OjU0DQo+ID4gVG86IFNyaW5pdmFz
LCBWaWR5YSA8dmlkeWEuc3Jpbml2YXNAaW50ZWwuY29tPg0KPiA+IENjOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBTeXJqYWxhLCBWaWxsZQ0KPiA+IDx2aWxsZS5zeXJqYWxhQGlu
dGVsLmNvbT47IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tOyBMZWUsIFNoYXduIEMNCj4g
PiA8c2hhd24uYy5sZWVAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBb
UkZDXSBkcm0vaTkxNTogVW5iaW5kIHRoZSB2bWEgaW4gc3VzcGVuZCBpZg0KPiA+IGl0IHdhcyBi
b3VuZA0KPiA+DQo+ID4gT24gTW9uLCBOb3YgMjUsIDIwMjQgYXQgMzo1MeKAr1BNIFZpZHlhIFNy
aW5pdmFzDQo+ID4gPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NCj4gPiB3cm90ZToNCj4gPiA+
DQo+ID4gPiBJbiBpOTE1X2dndHRfc3VzcGVuZF92bSwgaWYgdGhlIHZtYSB3YXMgYm91bmQsIHRo
ZSBwYXRoIHRvDQo+ID4gPiB1bmJpbmQvZXZpY3QgaXMgbm90IGhpdHRpbmcgZHVyaW5nIHN1c3Bl
bmQuIFRoaXMgaXMgY2F1c2luZyBpc3N1ZXMNCj4gPiA+IHdpdGggRFBUIHdoZXJlIERQVCBnZXRz
IHNocnVuayBidXQgdGhlIGZyYW1lYnVmZmVyIGlzIHN0aWxsIG9uIHRoZQ0KPiA+ID4gRFBUJ3Mg
Ym91bmQgbGlzdC4gVGhpcyBjYXVzZXMgc3lzdGVtIHJlYm9vdCBpbiBzb21lIHNjZW5hcmlvcyBv
Zg0KPiA+ID4gc3VzcGVuZC9yZXN1bWUgd2hlcmUgaXQgdHJpZXMgdG8gcmV3cml0ZSB0aGUgUFRF
cyB2aWEgYSBzdGFsZSBtYXBwaW5nLg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFZpZHlh
IFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMgfCA4ICsrKy0tLS0tDQo+ID4gPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gPiA+DQo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dC5jDQo+
ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYw0KPiA+ID4gaW5kZXgg
ZDYwYTZjYTBjYWU1Li44NDk5YWExMmE3ODcgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2dndHQuYw0KPiA+ID4gQEAgLTE1NywxMyArMTU3LDExIEBAIHZvaWQgaTkx
NV9nZ3R0X3N1c3BlbmRfdm0oc3RydWN0DQo+ID4gaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkNCj4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gcmV0cnk7DQo+ID4gPiAgICAgICAgICAg
ICAgICAgfQ0KPiA+ID4NCj4gPiA+IC0gICAgICAgICAgICAgICBpZiAoIWk5MTVfdm1hX2lzX2Jv
dW5kKHZtYSwgSTkxNV9WTUFfR0xPQkFMX0JJTkQpKSB7DQo+ID4gPiArICAgICAgICAgICAgICAg
aWYgKCFpOTE1X3ZtYV9pc19ib3VuZCh2bWEsIEk5MTVfVk1BX0dMT0JBTF9CSU5EKSkNCj4gPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTVfdm1hX3dhaXRfZm9yX2JpbmQodm1hKTsNCj4g
PiA+DQo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICBfX2k5MTVfdm1hX2V2aWN0KHZtYSwg
ZmFsc2UpOw0KPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgZHJtX21tX3JlbW92ZV9ub2Rl
KCZ2bWEtPm5vZGUpOw0KPiA+ID4gLSAgICAgICAgICAgICAgIH0NCj4gPiA+IC0NCj4gPiA+ICsg
ICAgICAgICAgICAgICBfX2k5MTVfdm1hX2V2aWN0KHZtYSwgZmFsc2UpOw0KPiA+ID4gKyAgICAg
ICAgICAgICAgIGRybV9tbV9yZW1vdmVfbm9kZSgmdm1hLT5ub2RlKTsNCj4gPiA+ICAgICAgICAg
ICAgICAgICBpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7DQo+ID4gPiAgICAgICAgIH0NCj4g
Pg0KPiA+IEkgdGhpbmsgYWxsIHlvdSBuZWVkIGlzIGluIHRoZSBlbHNlIHBhdGggb2YgaWYNCj4g
PiAoIWk5MTVfdm1hX2lzX2JvdW5kKHZtYSwNCj4gPiBJOTE1X1ZNQV9HTE9CQUxfQklORCkpIGlz
IGEgY2FsbCB0bw0KPiA+IF9faTkxNV92bWFfdW5iaW5kKHZtYSkNCj4gDQo+IA0KPiBIZWxsbyBC
cmlhbiwgdGhhbmsgeW91IHNvIG11Y2guIFdpbGwgc3VibWl0IHYyIHZlcnNpb24gd2l0aCByZXZp
ZXcgY29tbWVudHMNCj4gYWRkcmVzc2VkLg0KPiANCj4gPg0KPiA+IEJ1dCB3ZSBuZWVkIFZpbGxl
IHRvIGNvbmZpcm0gdGhpcyBtYWtlcyBzZW5zZT8NCj4gWWVzLCBuZWVkIFZpbGxlIHRvIHNlZSBp
ZiB0aGlzIG1pZ2h0IGJlIHRoZSByZWFsIGNhdXNlIG9mIERQVCBpc3N1ZS4NCj4gVGhhbmsgeW91
Lg0KPiANCkhlbGxvIFZpbGxlIC0gc29ycnkgdG8gYm90aGVyIHlvdSBhZ2FpbiwgY2FuIHlvdSBr
aW5kbHkgaGVscCBjaGVjayB0aGlzIHBhdGNoIGFuZCBzZWUgaWYNCnRoaXMgbWlnaHQgYmUgdGhl
IGNhdXNlIG9mIERQVCBmYWlsdXJlcz8gVGhhbmsgeW91IHNvIG11Y2guDQoNCj4gUmVnYXJkcw0K
PiBWaWR5YQ0KPiANCj4gPg0KPiA+ID4NCj4gPiA+IC0tDQo+ID4gPiAyLjM0LjENCj4gPiA+DQo=

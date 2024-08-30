Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00275966171
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 14:21:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3996E10EA97;
	Fri, 30 Aug 2024 12:21:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LckE22/Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5507C10EA96
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2024 12:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725020495; x=1756556495;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=yKiMqOh2KRcNMOewk+qw1ccAv1TyEmGoP4Bga6Y702o=;
 b=LckE22/Zw+c0k+vzKEQ4iyMQiQLJs/zbhR5oDyKbgs7LpM5noNzWmzbt
 oxMq7ZZNikk1qLYWl2B6Yc98Jt+LK/a0U5XT9wKKXjnMvTri4jf9pS866
 rFXYX2hg+jFH8UO68jAIM1Jd2TDTJN8g03FdhW+PCS6C63aISO8/I9U6D
 SSONfuK8bwrhmmvUTyS3yrzG4Kov+PrRaLinR33P9ewkCZJPbnhdDyRFf
 p6nSNld7EOTE9KqTb1i4Ifsaxfq7puz7Qqy/IfOzZuSys9TntdPJC8TQb
 8SdJXLlTOgejjslRJwwsc6x21BFeEpJsAOByn9cEpVJPakv3JomagvFCs A==;
X-CSE-ConnectionGUID: e8Jy/+yPTNydnu59W0c+DQ==
X-CSE-MsgGUID: IO+CsJzYRheiCQOqzIgSoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="27454272"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="27454272"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 05:21:35 -0700
X-CSE-ConnectionGUID: aWGwombXSpiH4IPL1VglOw==
X-CSE-MsgGUID: E97mrlamQMS3JDf7yfqVUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="101389555"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Aug 2024 05:21:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 05:21:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 30 Aug 2024 05:21:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 30 Aug 2024 05:21:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y2P/lbk0bRdJROqDVEkEjAWsZzmUnLf//S/DmDMD9Tr5nlLBxNqMPYlj5itPghFVOvYRUZ1fCuGiuEbpJYXgjkrWJM4489m6lwXwj+zjCuMaHU2tvYsIGrLaAp0iMS2oY70VeuEfjQh8hvZBfnlbQXDmfYoaFLJLprRA0WnxMW5g3GHlCXHvQzFSRATiymjw1vNhMQqsJRNj2XhrLxRhdHzE6l3UJPWcF3XGiA2RqYw3k0JAbAox8I2U55mDM9NC15kiZ5zza4vVSphIRXWm/C3phqOdrNuclnJUTSRM46kWzUgcOBooYtMgKgofbL4nlQPFkKMDtI8IvBisXqavwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yKiMqOh2KRcNMOewk+qw1ccAv1TyEmGoP4Bga6Y702o=;
 b=r3GAUNBQV3CLbexmG254zgP0KIf34AN5A8wLEXY2qBSI847uwSREpi6aUQ2lMh5uH/ot8wUV8P4fnOX4EVHL7qHJhsuGfPIW9j/8nsQS/ztTwpplnMuE+V/KZui/5fmsCoZlcKTqwxGBsYgX/GCvgWXa2FJs29UfMz/H7O97XJ3Bl+oLdX0Up+ZhpFm5fnU7+9/9ZneL+dDuOCOYGkQkHiUEGul3udlqcGAYmsP9Ie8mz/rEw/VTsxk05KcDGzgA7Vy3VeXiApXj/7W5x4yxaLm4AFonOW5Kk8Ts5OMkX874Rn/IWyS41ycQryh8/gUn/eLbLfrXJlTrBmhamy9EQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ2PR11MB8539.namprd11.prod.outlook.com (2603:10b6:a03:56e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Fri, 30 Aug
 2024 12:21:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.7897.021; Fri, 30 Aug 2024
 12:21:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Add mechanism to use sink model
 when applying quirk
Thread-Topic: [PATCH v2 1/2] drm/i915/display: Add mechanism to use sink model
 when applying quirk
Thread-Index: AQHa9Vqs1nEf9guF2ESwrGIc6uS6kLI/wjaAgAABXQA=
Date: Fri, 30 Aug 2024 12:21:31 +0000
Message-ID: <516c4d200431c9d55d8f5e2413d257d56452485e.camel@intel.com>
References: <20240823124725.424291-1-jouni.hogander@intel.com>
 <20240823124725.424291-2-jouni.hogander@intel.com>
 <87r0a6urx6.fsf@intel.com>
In-Reply-To: <87r0a6urx6.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ2PR11MB8539:EE_
x-ms-office365-filtering-correlation-id: 6c84d4fe-a046-4efa-754b-08dcc8ee481c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aitWL0FtTVZkazhndlMydHJuZVQ0T0t5NTBCek5Vb1J3aXkwcWJkZ3NubHN5?=
 =?utf-8?B?czlncW1WSk1rZkRqUDByTWJzS1IzdDRaa3Bnbzg0RXZhWTJaTjgrcjhiNUFi?=
 =?utf-8?B?ZDREZEpvTzFXUExScXd6MkhIU09YNmFjNFJJcCtjVHRhRnk2SnBhTitKYzEv?=
 =?utf-8?B?dUtwcWJnWWdmL1BQY0UvN3BSZURpV3d5M0w0UmJTMjNnakh0ZmpPSHQxSzly?=
 =?utf-8?B?dStDRVZvMC9RWjhxVWZyOVk0ak5MUDdZcHNZWEJ4U1V0a1U3cDlVekhkY2ZS?=
 =?utf-8?B?ejJLRVNNTTJPQVZQV0dHZ2J3VDZPaWlqZ2I0MTQ3a2N5ejl6dE9vTk01QmVF?=
 =?utf-8?B?OVVEcjA1bm9tNkpqTVlFRlFBd0ZhVTdxZmVxSXJXTjFhTUExT240VFVBdHNs?=
 =?utf-8?B?dlpmNWlTMjQ0OUdqRWM1VmVoaklTalZWY3BJU2N3SDZJQUVCdTBXOFpMU2JN?=
 =?utf-8?B?K3dENXh4dDFqSkNKUDg4QVVuMTJVeXhaUmVHS1RkbEEyYVdId0FZb0xTUk1Z?=
 =?utf-8?B?SzVhTmNyaW5iL1NBZy83aVAyajhNelJnQklTdEdYdVRlNGVqUzh0TFlFWVVu?=
 =?utf-8?B?SUt2SkViMmVYSDgwVmFhUkFxcThEaDEzQ2VwZEFwWEt4ZndaaHdxTW9TamlZ?=
 =?utf-8?B?SW1qbWd3N1RNK29SejBlbEpCTHJIUTZEVVhWYjk3d3g3RE1haUc5cmVxL0NG?=
 =?utf-8?B?RFJqVDFWcHFudFdHMHNVV1RLZWxvcnhobVY3WjR6K21LNHEzTzFTd0pXaFhE?=
 =?utf-8?B?aU5qSUlNQjRhNDZxWjdsQUUyeUxxdEs5QVNYbVF5aWVpQ3kwYVpQT3hOVHdw?=
 =?utf-8?B?ZmVBN0c2TElkMytkRGYxbytxVUJ4VHNTcTY4c0RhOVZyNmpxTWdldWllWDZX?=
 =?utf-8?B?ZytBRXNYbXA4NmxyekJ0MVNzTEZ1cDFPbDc2QlpTcDdDbUFZRDhrOW95Nyt6?=
 =?utf-8?B?anBERDhPRGNSanF3dEx3V2tGOGp5ejB4eWdqeExCb1QwMHpTOTFZQlVHS2hK?=
 =?utf-8?B?cXNMZHN0eUt6N0ZrN2xFSFlRbWpFMXQrMXFyODQxa00wUWUyOWRDSFhLdHJ4?=
 =?utf-8?B?cmpBRjk1cXYvMm1LZnJEaUpJd01HZmdScUF2RW5kWnJGeUlxRHByK3hwUW9D?=
 =?utf-8?B?MjNTb29VWW5vZ1grNzNLVGh2U2lNN253aFNjNVRaUXhmYTd3Mm5QUjNwdGIw?=
 =?utf-8?B?SWd6aHZCMG84NHRIWTVBRFREL1kwNlV2VzREQW1mYkhtcUpWdURibHJQcXJo?=
 =?utf-8?B?TW5BVjR2a2hmYUNWOXpaNmtwSnZKeXZkRVhUdFFwYlJzNVg0QW80Wm9TY1h4?=
 =?utf-8?B?ZlkyZUF0NDNKbFY3Ty9OdFJJSzBHNENBTzRmV0ZrQTF4ZlZwRkhCa1A0K254?=
 =?utf-8?B?S1F3T2VvZmJFTWMyQVFPLzE4U0FlMXhzRFZqUWQyMmRJTlNIZFUwLzF3dkFP?=
 =?utf-8?B?bG1wR1ZXVUxGL1R0OWx6eGRMamdaeExaU3NRanNKN3FzVlBib1kyanhIWmNI?=
 =?utf-8?B?ZlNYR0NvU09GejF0OEJMd0JlUXEyeXpURGJnV0oxanBHNGR0WlZRY3M4RDFT?=
 =?utf-8?B?MVN5UGZGdlZoaGxFd1l6bmh6MXJXTjFwL2dMdC9yNkxWaVFRZFRzQmp4dU5X?=
 =?utf-8?B?VkYya1hwQWM4enFYQ283K01Kdm1DZkJFdjd5MGg5V2NCNktkNGhyUkVPRUhi?=
 =?utf-8?B?REtMNDhCN3pPNGxIeE1aNzE3Z3NzeUlHNytpdHh2Z2xwWlpoam95SUVBZktu?=
 =?utf-8?B?OVFzay9oZmtIeXF2V0JhWjBrUXdOd3htNkdCbUVKdHBhemhwTG9tYTdOZzgx?=
 =?utf-8?B?WG9lWWprUzZCdm9nUEVwbE9LZFBEN1hLZ24vY2kyTUJ3d3F4a3p1QktuUzdI?=
 =?utf-8?B?QTZzN1VCL0Q1OG1zYWlyYnJxc2pPWmx3Q3RLaE43MFY3WEE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MkpjalFRd09oSXdhbkRFdTFVL1loeWJ5ZVRpcmpwSElyQkVMR3ZhbVNzaDB0?=
 =?utf-8?B?Mk9JM0RxRUhiZE04Um5kZ0tLSDhROUI5RENSVjk3RkZ2ZkN5TnhqSjR6Mk42?=
 =?utf-8?B?dmk0dTNxejYvZDJSWkJxMTF4WDNISnRIT05ZZ24veWdpOGRsZ1oyUThNRWww?=
 =?utf-8?B?SmloanhVbTVmUU45U1dGNzhINmN4RGhaWm9WTFFRNlhweHRyVDU4eUkxUVNy?=
 =?utf-8?B?d2NwdlBQK05BVSt0ODR4OWEvUWtvQ2padi9BblBPUGJvOHFUNVhQbUF5NjBz?=
 =?utf-8?B?bnJTQWNxWmFMQXJGSHZpTFYzcTNpdHdBQU1QNWFBbUk0ZkF5Tmd1SGFpV3JF?=
 =?utf-8?B?OVF6L2svWmlDbVVqaXplNjhSU1hQNmJ1dSs3UFRrMXk3aUt3U2YrOElWeUlZ?=
 =?utf-8?B?THBnYk5ycWNrQWJvUHlRZVNTeWEvMFlDaldKQ0J1VU9XWmpkM3pHOG5jbkJz?=
 =?utf-8?B?RUNLa2xGNGJIZkxTY3kvQ1FydWNBY0V1ZUI3bHorK1dEWHdNMWo0dnNySXhL?=
 =?utf-8?B?cWdickF6cE8rbmdYT1plNVhBUFpDb2hWQjBYdjJMUlhLeisySVlHbDF5ZHlw?=
 =?utf-8?B?QXlnaHI0QUlSaFFUSG9YVUtucU8wNWcwYlhxVXhmMXMvMERvb2MzQkJJa1BU?=
 =?utf-8?B?SnJZQlQ0bDFlVlZsSE9XdmFJM2pPTzRuRExqdFc2eEhxZTRZZEdoQlpEVUph?=
 =?utf-8?B?RGduZERIbE5LY3FhR3BWTDBnSjR4dk01aWZwR2IvTnhVZ0E1M1RGQVpvSzNy?=
 =?utf-8?B?Nml0NDQzbTZQNHI5YzJQb0VBUmRVcnVzY0h3ZEd4LzhBV2lzblJOcmJoNEFQ?=
 =?utf-8?B?VFdJdXBOZEFkM3lxRnduQy9PWWk3Um5URkNNK2tmaVl6Mmw3L2dNblhWNzcv?=
 =?utf-8?B?MjFlTjVwcXZPL2hTMVUxcnQyV2llVXB0cjBUY1FBY2Nvb1VaU3F5L2dKSE9K?=
 =?utf-8?B?cnY0Z1lVSGkzRW5lOE1FMHZLUGdESEZuRnJ6TmRYZEc3YWZZem9sNmQzbzRT?=
 =?utf-8?B?YUR0WnpRWVkzb1I1ZXF2SDRROXY4MUVReTJ6L1BBMXltMmlKMDg1Z0V4d01P?=
 =?utf-8?B?dXI0eW9PYW5JVG9QcXk1TTdNS0lIQ0p2RnRsSlBEYVdQVEN5RVl4OTdDMUQ3?=
 =?utf-8?B?ZTc3YWVFYmdnczJSdjJnZ1NOcms3Tms0RjVvcm5zdVhOZ0l3dHRWWlh5UEtx?=
 =?utf-8?B?Y3NVcHpSdnc5VTZTdFNlMS9iaWcrbnlOQjZmYktmZ0J5L21JdnZGRXdySmZv?=
 =?utf-8?B?LzFNbkp1SngvRFZyTWhKU1B5Qi90VzRsSHNzQVdFNmVNRGFkZGFlZzMzdW4y?=
 =?utf-8?B?RHBjZVhNVEtMcTZhRDFJTlNVenMrWXJVVjhNRTdwek1YR3RkN3RIZnRzUHUx?=
 =?utf-8?B?TVloYzBlQUxHNSs4SW9PMDdYOGgvTGFtNHJrYktEeFZHMFhDV2tCcmJUdU1D?=
 =?utf-8?B?WkVlWldRbXNkTWp0VnMvOFp5bVp2endRKzErdW5BWGZBQWt2MXIyWm04UUll?=
 =?utf-8?B?c3pCb0JGMmp5YXB2Y3NtdGMwa3BSbTRCUkZUOW1KeElEMlhhSUZRMlBGUWph?=
 =?utf-8?B?NE93YzE3d0FjWnRNc2FMR2RPS2p1Z3NvZ0hkTW9rRmNMamlLdkMwN0hsYzFs?=
 =?utf-8?B?RVVKRjZHNURlQXFDZHBxTWZRMldrbVBFSU5jUXQyVzRnOXRadmVVR21hT3pG?=
 =?utf-8?B?SmwrNzh6b09SNCtTZkZnL1NnMTE0amYyUDl6Nk0vSm5RYzU1WnhXRDB0cFZ2?=
 =?utf-8?B?QVM0MlFFbFcwL3lNRzlTN1JaY0ZEaDc3ZzVwdUZNU0I3T0xXMEZsQjlhUEN6?=
 =?utf-8?B?ckZMaEtUUzhRZzEvc3JWdDlpcVkxMHZxKy8rNHBvZFNiSkhrQnRpdGpsMEVF?=
 =?utf-8?B?OFJmN3o0cEhkVUttSk03a1ZFMk5FZXlVMFVKeHQ0YVArSW02L25Zd1krUXJX?=
 =?utf-8?B?UDZrMDZaZDlwemZVMVBkTGIvU2JWMFVNY0xkd215WHNVYWhsL04zeS9iTzZN?=
 =?utf-8?B?cmExYktvVytQNzhrOE1TK0RrNm5leEd1eDdhUDFqOWZFNXpTTUVOOHFPZUNj?=
 =?utf-8?B?RmtJcjNhY20vM2VJMm9iTmduMEhCakM4bTNBcE8wb0V1dkd2c2M3c3VtaXlJ?=
 =?utf-8?B?NmNSNE9Xb2ZwQVdDMGpVUjR0T0FSM0t5Wm54My9GeGtyQlJkMUdnRE5uM2cz?=
 =?utf-8?B?MWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E9782790850A4A47A92DFAAED693E81F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c84d4fe-a046-4efa-754b-08dcc8ee481c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2024 12:21:31.6959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x0sA2ndEGO9h3T3LLC7bh7cxMQWNqZleiybXhwAwE0gTBntvVpRMxRSTsilZb2c287cHOgBJSYBdEMd6NPqpnP3ccFRKXa7zGu71oVYpwfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8539
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

T24gRnJpLCAyMDI0LTA4LTMwIGF0IDE1OjE2ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAyMyBBdWcgMjAyNCwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEN1cnJlbnRseSB0aGVyZSBpcyBubyB3YXkgdG8gYXBwbHkgcXVp
cmsgb24gZGV2aWNlIG9ubHkgaWYgY2VydGFpbg0KPiA+IHBhbmVsDQo+ID4gbW9kZWwgaXMgaW5z
dGFsbGVkLiBUaGlzIHBhdGNoIGltcGxlbWVudHMgc3VjaCBtZWNoYW5pc20gYnkgYWRkaW5nDQo+
ID4gbmV3DQo+ID4gcXVpcmsgdHlwZSBpbnRlbF9kcGNkX3F1aXJrIHdoaWNoIGNvbnRhaW5zIGFs
c28gc2lua19vdWkgYW5kDQo+ID4gc2lua19kZXZpY2VfaWQNCj4gPiBmaWVsZHMgYW5kIHVzaW5n
IGFsc28gdGhlbSB0byBmaWd1cmUgb3V0IGlmIGFwcGx5aW5nIHF1aXJrIGlzDQo+ID4gbmVlZGVk
Lg0KPiA+IA0KPiA+IE5ldyBpbnRlbF9pbml0X2RwY2RfcXVpcmtzIGlzIGFkZGVkIGFuZCBjYWxs
ZWQgYWZ0ZXINCj4gPiBkcm1fZHBfcmVhZF9kZXNjIHdpdGgNCj4gPiBwcm9wZXIgc2luayBkZXZp
Y2UgaWRlbnRpdHkgcmVhZCBmcm9tIGRwY2RjLg0KPiA+IA0KPiA+IHYyOg0KPiA+IMKgIC0gaW5z
dGVhZCBvZiB1c2luZyBzdHJ1Y3QgaW50ZWxfcXVpcmsgYWRkIG5ldyBzdHJ1Y3QNCj4gPiBpbnRl
bF9kcGNkX3F1aXJrDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAuLi4vZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKgIDQgKysNCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoCB8wqAgNCArKw0KPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuY8KgwqAgfCA1MQ0K
PiA+ICsrKysrKysrKysrKysrKysrKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcXVpcmtzLmjCoMKgIHzCoCA1ICsrDQo+ID4gwqA0IGZpbGVzIGNoYW5nZWQsIDY0
IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gaW5kZXggYmQyOTA1MzZhMWI3
Yi4uNzY3ZWU2ZGE4YjFhNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAgLTE5MDcsNiArMTkwNywx
MCBAQCBzdHJ1Y3QgaW50ZWxfZHAgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9IGFscG1fcGFyYW1l
dGVyczsNCj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBhbHBtX2RwY2Q7DQo+ID4gKw0K
PiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHVuc2lnbmVkIGxvbmcgbWFzazsNCj4gPiArwqDCoMKgwqDCoMKgwqB9IHF1aXJrczsN
Cj4gPiDCoH07DQo+ID4gwqANCj4gPiDCoGVudW0gbHNwY29uX3ZlbmRvciB7DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggNmEwYzdhZTY1
NGY0MC4uYTg3OGZmNmYzNTgxZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gPiBAQCAtODQsNiArODQsNyBAQA0KPiA+IMKgI2luY2x1ZGUgImlu
dGVsX3BjaF9kaXNwbGF5LmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfcHBzLmgiDQo+ID4gwqAj
aW5jbHVkZSAiaW50ZWxfcHNyLmgiDQo+ID4gKyNpbmNsdWRlICJpbnRlbF9xdWlya3MuaCINCj4g
PiDCoCNpbmNsdWRlICJpbnRlbF90Yy5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX3Zkc2MuaCIN
Cj4gPiDCoCNpbmNsdWRlICJpbnRlbF92cnIuaCINCj4gPiBAQCAtNDA1Myw2ICs0MDU0LDcgQEAg
aW50ZWxfZWRwX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsIHN0cnVj
dCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcg0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oGRybV9kcF9yZWFkX2Rlc2MoJmludGVsX2RwLT5hdXgsICZpbnRlbF9kcC0+ZGVzYywNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX2RwX2lz
X2JyYW5jaChpbnRlbF9kcC0+ZHBjZCkpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGludGVsX2luaXRf
ZHBjZF9xdWlya3MoaW50ZWxfZHAsICZpbnRlbF9kcC0+ZGVzYy5pZGVudCk7DQo+ID4gwqANCj4g
PiDCoMKgwqDCoMKgwqDCoMKgLyoNCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogUmVhZCB0aGUgZURQ
IGRpc3BsYXkgY29udHJvbCByZWdpc3RlcnMuDQo+ID4gQEAgLTQxNjUsNiArNDE2Nyw4IEBAIGlu
dGVsX2RwX2dldF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZHBfcmVhZF9kZXNjKCZpbnRlbF9kcC0+YXV4LCAm
aW50ZWxfZHAtPmRlc2MsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fZHBfaXNfYnJhbmNoKGludGVsX2RwLT5k
cGNkKSk7DQo+ID4gwqANCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxf
aW5pdF9kcGNkX3F1aXJrcyhpbnRlbF9kcCwgJmludGVsX2RwLQ0KPiA+ID5kZXNjLmlkZW50KTsN
Cj4gPiArDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcF91cGRh
dGVfc2lua19jYXBzKGludGVsX2RwKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+IMKgDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtz
LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMNCj4g
PiBpbmRleCAxNGQ1ZmVmYzljNWIyLi45NzNkYTc4N2VhMmQ5IDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ID4gQEAgLTE0LDYgKzE0
LDExIEBAIHN0YXRpYyB2b2lkIGludGVsX3NldF9xdWlyayhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0K
PiA+ICpkaXNwbGF5LCBlbnVtIGludGVsX3F1aXJrX2lkIHENCj4gPiDCoMKgwqDCoMKgwqDCoMKg
ZGlzcGxheS0+cXVpcmtzLm1hc2sgfD0gQklUKHF1aXJrKTsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+
ICtzdGF0aWMgdm9pZCBpbnRlbF9zZXRfZHBjZF9xdWlyayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLCBlbnVtDQo+ID4gaW50ZWxfcXVpcmtfaWQgcXVpcmspDQo+ID4gK3sNCj4gPiArwqDCoMKg
wqDCoMKgwqBpbnRlbF9kcC0+cXVpcmtzLm1hc2sgfD0gQklUKHF1aXJrKTsNCj4gPiArfQ0KPiA+
ICsNCj4gPiDCoC8qDQo+ID4gwqAgKiBTb21lIG1hY2hpbmVzIChMZW5vdm8gVTE2MCkgZG8gbm90
IHdvcmsgd2l0aCBTU0Mgb24gTFZEUyBmb3INCj4gPiBzb21lIHJlYXNvbg0KPiA+IMKgICovDQo+
ID4gQEAgLTcyLDYgKzc3LDIxIEBAIHN0cnVjdCBpbnRlbF9xdWlyayB7DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoHZvaWQgKCpob29rKShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+ID4g
wqB9Ow0KPiA+IMKgDQo+ID4gK3N0cnVjdCBpbnRlbF9kcGNkX3F1aXJrIHsNCj4gPiArwqDCoMKg
wqDCoMKgwqBpbnQgZGV2aWNlOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGludCBzdWJzeXN0ZW1fdmVu
ZG9yOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGludCBzdWJzeXN0ZW1fZGV2aWNlOw0KPiA+ICvCoMKg
wqDCoMKgwqDCoHU4IHNpbmtfb3VpWzNdOw0KPiA+ICvCoMKgwqDCoMKgwqDCoHU4IHNpbmtfZGV2
aWNlX2lkWzZdOw0KPiA+ICvCoMKgwqDCoMKgwqDCoHZvaWQgKCpob29rKShzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKTsNCj4gPiArfTsNCj4gPiArDQo+ID4gKyNkZWZpbmUgU0lOS19PVUkoZmly
c3QsIHNlY29uZCwgdGhpcmQpIHsgKGZpcnN0KSwgKHNlY29uZCksDQo+ID4gKHRoaXJkKSB9DQo+
ID4gKyNkZWZpbmUgU0lOS19ERVZJQ0VfSUQoZmlyc3QsIHNlY29uZCwgdGhpcmQsIGZvdXJ0aCwg
ZmlmdGgsIHNpeHRoKQ0KPiA+IFwNCj4gPiArwqDCoMKgwqDCoMKgwqB7IChmaXJzdCksIChzZWNv
bmQpLCAodGhpcmQpLCAoZm91cnRoKSwgKGZpZnRoKSwgKHNpeHRoKSB9DQo+ID4gKw0KPiA+ICsj
ZGVmaW5lIFNJTktfREVWSUNFX0lEX0FOWcKgwqDCoMKgwqBTSU5LX0RFVklDRV9JRCgwLCAwLCAw
LCAwLCAwLCAwKQ0KPiA+ICsNCj4gPiDCoC8qIEZvciBzeXN0ZW1zIHRoYXQgZG9uJ3QgaGF2ZSBh
IG1lYW5pbmdmdWwgUENJDQo+ID4gc3ViZGV2aWNlL3N1YnZlbmRvciBJRCAqLw0KPiA+IMKgc3Ry
dWN0IGludGVsX2RtaV9xdWlyayB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHZvaWQgKCpob29rKShz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+ID4gQEAgLTIwMyw2ICsyMjMsOSBAQCBz
dGF0aWMgc3RydWN0IGludGVsX3F1aXJrIGludGVsX3F1aXJrc1tdID0gew0KPiA+IMKgwqDCoMKg
wqDCoMKgwqB7IDB4MGYzMSwgMHgxMDNjLCAweDIyMGYsIHF1aXJrX2ludmVydF9icmlnaHRuZXNz
IH0sDQo+ID4gwqB9Ow0KPiA+IMKgDQo+ID4gK3N0YXRpYyBzdHJ1Y3QgaW50ZWxfZHBjZF9xdWly
ayBpbnRlbF9kcGNkX3F1aXJrc1tdID0gew0KPiA+ICt9Ow0KPiA+ICsNCj4gPiDCoHZvaWQgaW50
ZWxfaW5pdF9xdWlya3Moc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ID4gwqB7DQo+
ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBwY2lfZGV2ICpkID0gdG9fcGNpX2RldihkaXNwbGF5
LT5kcm0tPmRldik7DQo+ID4gQEAgLTIyNCw3ICsyNDcsMzUgQEAgdm9pZCBpbnRlbF9pbml0X3F1
aXJrcyhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiA+ICpkaXNwbGF5KQ0KPiA+IMKgwqDCoMKgwqDC
oMKgwqB9DQo+ID4gwqB9DQo+ID4gwqANCj4gPiArdm9pZCBpbnRlbF9pbml0X2RwY2RfcXVpcmtz
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGRybV9kcF9kcGNkX2lk
ZW50ICppZGVudCkNCj4gPiArew0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ID4gK8KgwqDCoMKg
wqDCoMKgc3RydWN0IHBjaV9kZXYgKmQgPSB0b19wY2lfZGV2KGRpc3BsYXktPmRybS0+ZGV2KTsN
Cj4gPiArwqDCoMKgwqDCoMKgwqBpbnQgaTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgZm9y
IChpID0gMDsgaSA8IEFSUkFZX1NJWkUoaW50ZWxfZHBjZF9xdWlya3MpOyBpKyspIHsNCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RwY2RfcXVpcmsgKnEg
PSAmaW50ZWxfZHBjZF9xdWlya3NbaV07DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpZiAoZC0+ZGV2aWNlID09IHEtPmRldmljZSAmJg0KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGQtPnN1YnN5c3RlbV92ZW5kb3IgPT0gcS0+c3Vi
c3lzdGVtX3ZlbmRvciB8fA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBxLT5zdWJzeXN0ZW1fdmVuZG9yID09IFBDSV9BTllfSUQpICYmDQo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoZC0+c3Vic3lzdGVtX2RldmljZSA9PSBxLT5z
dWJzeXN0ZW1fZGV2aWNlIHx8DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHEtPnN1YnN5c3RlbV9kZXZpY2UgPT0gUENJX0FOWV9JRCkgJiYNCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICFtZW1jbXAocS0+c2lua19vdWksIGlkZW50
LT5vdWksIHNpemVvZihpZGVudC0NCj4gPiA+b3VpKSkgJiYNCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICghbWVtY21wKHEtPnNpbmtfZGV2aWNlX2lkLCBpZGVudC0+
ZGV2aWNlX2lkLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHNpemVvZihpZGVudC0+ZGV2aWNlX2lkKSkgfHwNCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIW1lbV9pc196ZXJvKHEtPnNpbmtfZGV2aWNl
X2lkLCBzaXplb2YocS0NCj4gPiA+c2lua19kZXZpY2VfaWQpKSkpDQo+IA0KPiBTaG91bGQgdGhh
dCBiZSBtZW1faXNfemVybygpIGluc3RlYWQgb2YgIW1lbV9pc196ZXJvKCk/DQoNClllcyB0aGF0
IHNob3VsZCBiZSBtZW1faXNfemVybygpLiBUaGFuayB5b3UgZm9yIHRoaXMgY2F0Y2guDQoNCkJS
LA0KDQpKb3VuaSBIw7ZnYW5kZXINCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHEtPmhvb2soaW50ZWxfZHAp
Ow0KPiA+ICvCoMKgwqDCoMKgwqDCoH0NCj4gPiArfQ0KPiA+ICsNCj4gPiDCoGJvb2wgaW50ZWxf
aGFzX3F1aXJrKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBlbnVtDQo+ID4gaW50ZWxf
cXVpcmtfaWQgcXVpcmspDQo+ID4gwqB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBkaXNw
bGF5LT5xdWlya3MubWFzayAmIEJJVChxdWlyayk7DQo+ID4gwqB9DQo+ID4gKw0KPiA+ICtib29s
IGludGVsX2hhc19kcGNkX3F1aXJrKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGVudW0NCj4g
PiBpbnRlbF9xdWlya19pZCBxdWlyaykNCj4gPiArew0KPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVy
biBpbnRlbF9kcC0+cXVpcmtzLm1hc2sgJiBCSVQocXVpcmspOw0KPiA+ICt9DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmgNCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmgNCj4gPiBpbmRleCAx
NTFjOGY0YWU1NzYwLi5jOGRiNTBiOWFiNzRkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5oDQo+ID4gQEAgLTksNiArOSw4IEBADQo+ID4g
wqAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4NCj4gPiDCoA0KPiA+IMKgc3RydWN0IGludGVsX2Rp
c3BsYXk7DQo+ID4gK3N0cnVjdCBpbnRlbF9kcDsNCj4gPiArc3RydWN0IGRybV9kcF9kcGNkX2lk
ZW50Ow0KPiA+IMKgDQo+ID4gwqBlbnVtIGludGVsX3F1aXJrX2lkIHsNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgUVVJUktfQkFDS0xJR0hUX1BSRVNFTlQsDQo+ID4gQEAgLTIwLDYgKzIyLDkgQEAgZW51
bSBpbnRlbF9xdWlya19pZCB7DQo+ID4gwqB9Ow0KPiA+IMKgDQo+ID4gwqB2b2lkIGludGVsX2lu
aXRfcXVpcmtzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gPiArdm9pZCBpbnRl
bF9pbml0X2RwY2RfcXVpcmtzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3Ry
dWN0IGRybV9kcF9kcGNkX2lkZW50ICppZGVudCk7DQo+ID4gwqBib29sIGludGVsX2hhc19xdWly
ayhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bQ0KPiA+IGludGVsX3F1aXJrX2lk
IHF1aXJrKTsNCj4gPiArYm9vbCBpbnRlbF9oYXNfZHBjZF9xdWlyayhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLCBlbnVtDQo+ID4gaW50ZWxfcXVpcmtfaWQgcXVpcmspOw0KPiA+IMKgDQo+ID4g
wqAjZW5kaWYgLyogX19JTlRFTF9RVUlSS1NfSF9fICovDQo+IA0KDQo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEG6LKP5C2qCSwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:48:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F685778DA
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC1810E375;
	Tue, 19 May 2026 05:48:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CeQM/bO0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060CD10E0B8;
 Tue, 19 May 2026 05:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779169695; x=1810705695;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1uWCBniEgx+XLruq5/5RCs9SclJw7SIcuf5QOcsXnnw=;
 b=CeQM/bO0uPrfwcC+mkNOGWyGPlh+42N7i9HEqettgaJxuX82cs52N4+Q
 +vXDr8hvIBUCCPkQAveSisl1NMV/wY4W2Lwl9lOe9Ja+CzhJcD3kePJWA
 NZmfTA2c+PZTtk5WYinXE24XCaloS2pZCmODoRA7F2oZPFNF9hzxOcxma
 +NasR+W5S2aOF6CUhf/XWJ4JRlVO+6mHLrNEJMVGXQQKhfb9YfU070qZ6
 3kyd+CxFSsaemfBVELjM0NrQgHP4+hPF1WwQ61d/axXXApeFE6E7NkiRK
 U0Shllu6t5YYGIBz1bQ2P0GNeAmvx9ivttxPEerG4zY0VRusJKkS37N6E A==;
X-CSE-ConnectionGUID: 6MOJD0szRMil199lyrPjmw==
X-CSE-MsgGUID: 7YQ9CJ0RTDaRUqPqtjTTtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="79937003"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="79937003"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:48:14 -0700
X-CSE-ConnectionGUID: f2i6tinAT+qXDBW40uIezw==
X-CSE-MsgGUID: G2jVnwuHSl+zttB3Vwh0FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="243643750"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:48:15 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:48:14 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 22:48:14 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.47) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:48:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MXajgswXdrb2pYaea+5Qq6PymCseAdYCoL/zgBsKWRFyo5ozd3jYKKDoF4B+XkS3MwRqFOGUw20fOhfnkPfnP+EXXU/Ei30fS1KX+4yejQrRyNYruO84yxz56nKkLH9ZC4GZSDZ9Ra4rmTTZkSsvHIazy3kIReEBWircN8bWnNDNPHhycdfZsQVRhh2L+nFLKXOyY+w/qRlujb1T6YdkkoFK88hKwh4m67yIWhbbOF758zV3IkX41Io4DMW1XsloYMVoQJLM0BVzHr6wNezKOMZ2tpEVrfrjG07DSp6+1S6FBp0Bpc6e8gzmRb/UH2XuencnWYUOXGeQpNb+Vm+3Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1uWCBniEgx+XLruq5/5RCs9SclJw7SIcuf5QOcsXnnw=;
 b=EWSF/AgGKEnhBCBhlOgzMSGzPu+gie8bgNXiRdazI7lsxmAlH/3aH78pdK3Jy8UgcABOnlKK+doMEDujZYyNRhTJ1U58jsRcqKz/cgDsSN6XJEXoyYaYez77ErimR6KMZx49fKkuFQ2JtDEUK/TkYj6B8+lED03RI8A90oiWvQ1zztsBY6Yd1UaYoOkImFJKeJySJDtqEycnq+wgv7mNImyeZyuL3ViNFy+nnZFbeBcfbLKme7NP8QsbeDlBeQAbn2ZFwe/SNOZEevgNznpdPW0qqSmJKv/elpRvH4Zo5xUuRSP5roKdbvfb63qPg+nI6CoExo0ZGEY2r0tI9xSLhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA2PR11MB4796.namprd11.prod.outlook.com
 (2603:10b6:806:117::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Tue, 19 May
 2026 05:48:06 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 05:48:06 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 12/31] drm/i915/ddi: expose VS/PE-O buffers to
 intel_encoder
Thread-Topic: [PATCH v3 12/31] drm/i915/ddi: expose VS/PE-O buffers to
 intel_encoder
Thread-Index: AQHc3cFVYeV7FZp+CkuVTtoBTdqdwrYU6ahQ
Date: Tue, 19 May 2026 05:48:06 +0000
Message-ID: <DM3PPF208195D8DAC7B75B4A5EC5683E025E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-13-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-13-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA2PR11MB4796:EE_
x-ms-office365-filtering-correlation-id: 1e4f85e8-dacc-47f9-1031-08deb56a3333
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|38070700021|3023799003|11063799003|22082099003|56012099003|4143699003;
x-microsoft-antispam-message-info: cnR+ha4EpwoKmpgDX1fJ8c+ba+Aj0ddXmzfZcddMFSx8O0eVMHkajc6eEMBYunqDgVAuH9kiflSkEUkW5Q3wTDEaNBGHcPOJmf3rNc7ynBs13rzZkdZrtTWOzYYUhahayWpDaWmmGiVeSRde4e/PvutCu7tspXwzagg7OMtuFDMqujqfyf4XUeM4GseroARx4zaA4ZumZHKDryG79UUH1oY1UzAj8TysgfcTSF1YGQihOzKVs77gJNfySt1MA2jTem17gOW3l8cY7waDzdhNxZl8d6MVOB+2o2257rO+OfxOWyH08lKfFituraUIZRZHJNqe0VbyKjl2hX2xmKFY1NQ39apHraHfm4Ep5ZwNEumjyjd/EOfZK+KrI0FXB0aDzykL9PpgmTxhLcrFkeCI+CwLxRH5w4OndfHGzW7nJeKFnxmOwu9dzm2/wk+UPCPARVqZyZYsLGXVwRfYK8HWPCPAdCw0d0L93f6IZEVzOdYDXP2mmsdyBfH91LWjUuItCzLLmt0B5G8uE8CQFBmNrYpIq52NXBcJHIByI9pPaTx7kKOUHmH6+fKDlpyLppjlNfx/se/wA8WLHIHg4cAdSM4PR+GSjNkFpPEKBaIgzZdDx55pozJ1qbEEMnLD5igZHFs1C4zgNARc76rumFUck2a0/xe8bGz5TQhsCf6DDsWAoDzvVajzfW4br80mXguzejqctV4knp9+NrkYUJIHPFtAkApAqVM0kvDhTq0xJWXCa5kHwygrE2YK5L0iq8Ut
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(38070700021)(3023799003)(11063799003)(22082099003)(56012099003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmxYdXdjU2lxOEhSTDBCcGZ2bVp1dVNCYkhBRWJwb1VzODBYT3MvTGFuVTdu?=
 =?utf-8?B?QTNUYWxzOHc5aVdBeE5qSFd2akRja0QyakRrd0pNWEV4WmF3bEJKSVo2Kzkr?=
 =?utf-8?B?YjhZbVB2UWltbnlqeHpRTE9nVnhWQkpROStkSVNXVDQ2bE9uZ3BzRmdYems0?=
 =?utf-8?B?ekh1S2NSbUw0Q3JVblh5QlpyOHkvR2NsU2taKzFaSEV1ZU1teTFCMVcxOHBQ?=
 =?utf-8?B?UUtUYzlHdXJtRW0vMDNMQ2I0QWpXUEhmcW5zeThyS1Y5ZWdyMHNDVlJiUGlO?=
 =?utf-8?B?YWhJdkthb081VW1mRWJrbzR4UmdkMkFVRVViNmowU1lKbDg5QmxLandXOUFT?=
 =?utf-8?B?K2NGUXIxRGZtZCtXZk5TUnB0K3JRWGw2bVBZYlg2d2tFc2NHS2ZnZEYvWmI2?=
 =?utf-8?B?OEQzTVVkSm40aXEwdnhOTnEzekloN01NVW1iZ1NIL0dxWklkKzdCSGltZHBi?=
 =?utf-8?B?eHYrZWhwT1o1MHRNWmhxYVJ5NnQvR2RkODUyUU5TNk93Rm5ZS2pzSUFXRzJo?=
 =?utf-8?B?cXRrbTdoamFxckhZRUZDeUdMejg0RG9yek9uS2xEMjVaWnJ4alJUUXVUWG9t?=
 =?utf-8?B?Q2VMU3hUUFArc0Rab0NXU1RrSlJjSWtBNmhzeWpCZEkyaEFObytUQW1PS0E0?=
 =?utf-8?B?U2NJTFZib0wyTVlvVUdUL3FwdUJqbEQ5SXpmOHhCZEtkOEp4eWhiTWJseWVZ?=
 =?utf-8?B?K0xNT2VjaWU3QmNsYWk5TWlBZkI1RHNRRVEwRjEzOUtYaUJrZHdPZnFLbmFF?=
 =?utf-8?B?Z3ZoNC9PQ3BPSk80SUVrbklCcWU2S0p0bGFOUHFpVnRSRzNlMU1zdnRocGp0?=
 =?utf-8?B?eE4wdmE5REhtSnhRcnp0eEhWSytrL3JDMy94RWR2VVN5cVBsTlpSekVncUhO?=
 =?utf-8?B?OE96WEJBVnVlekcxVVhSOE5vWXZHanVRTTBsMk5QdzAvb2taV0s3Q0t6M1cz?=
 =?utf-8?B?OFRNbU93S0lNL3ExQmhMSkp3SzJPYmVuUXd1MUJmaU5rNko3L09oU1NLNktG?=
 =?utf-8?B?WW4vb0dFT3J2SXBNL2VpU0xMNFVkSDdoZmJrNXFtKzdnTDV1TTMweXk5MjhN?=
 =?utf-8?B?andoYkVMbzEwTGdTdGtmaGdPQjAvdEZKSDJkNFVSMkV1cHU5T0svOVRHT21Z?=
 =?utf-8?B?b1hwNUpSTk9kdVhFSzFuQUNSYWRQMUJoWXUwbXNFTUtkUWVkaU9SdHlmVjE2?=
 =?utf-8?B?RlRyNGUrWVpVdFMxL3RvbTVnS0JTNDlPQ2NSOFVqbS9Ud1QwVGsxOTgxa2lE?=
 =?utf-8?B?OUJrblBBYWtPcTRaR1V6ak5qWkM1Z09DeXBjZ2EzNU1MRnFvMXZLNzUvcXFv?=
 =?utf-8?B?UnVoRU1Gdlo4WWVHL1Rmc2ljNmRndnJobHNKOGdocjZBS2ZBRjJXYjIvZEht?=
 =?utf-8?B?UGdEczJvQ09xeFg5N0ZKbWp5elNOVDZFZDdXSFVNanhuT2h5aVhpWUhSR0dX?=
 =?utf-8?B?bGtOQXU1cWdkN0tkbm1DVWxQUDZQTlE2ZTVaa2lweFF1eXZCYTgyMjF0VGpw?=
 =?utf-8?B?cFl5M2FvNjFsOVpKY1ZHdDFyTk9QbFgyUjVrWkZPZmRMeXVPNUJmL1VVL3Ni?=
 =?utf-8?B?OWhHTE82eG92S3NwbThad3JWZVdCeDZCbVB2Q2JyYU9BeTBMSUgvektFTW5x?=
 =?utf-8?B?OFdXc1BHWnRmZlFiMHVDUmFOOThRNVpwczhSNHprL0t6MFNrTzhVZ3dQSGFW?=
 =?utf-8?B?NVk0M2MzSE1jTERlaUxiYUgrMkdPK2tjdWtvWDNSVkxIdi8wM3dtN2VkVGxp?=
 =?utf-8?B?TVhmdXhueXBkdlBpYlcxbVhhR2dBQzF6Y1gwUzZ3dkpoVGFtTHk0VFoyQmh4?=
 =?utf-8?B?TStaRXBKQ0sybjVQNG9XMmFQSTIwUVJZT3lEU1hFZFVDck9tZjB5aWlTZ0xt?=
 =?utf-8?B?Mzh2dXZVdkVVVGZJTHpYeXlDamJ1TzlKejcxSDE2NWZCc3dOK2o0b2FFQkxZ?=
 =?utf-8?B?Q0NpTG1lSGpEbGprMVFvL2ppclE5ellKTXBHb1lURWdmcWMvMFUxSHh1Rkdk?=
 =?utf-8?B?NGhvd3h4MksxalE0YkR4NFJuMTA4STdhWEZML1BEVXpDdnBpMi9ndW04TUNh?=
 =?utf-8?B?M2hGNmVqd2tTbGR3aVI3akdhb3p1OFc2Q3lJUCtuQzVHUzBqcFdRVkU5K3Ix?=
 =?utf-8?B?NW92c3QwU3F6dmhHdTAybXgvbnROZFFSM0hHS3lFZUJUT1VtU2NUYVFmY1U5?=
 =?utf-8?B?WlMxeE9NcFBRczUzc1FjYmFuaU1uWVhYbGJHcVJVMTFzQWNqSm9xcDFWazVQ?=
 =?utf-8?B?S3ZMWmE0dnF6M0p6ZGRCWkIra2VoSEhsZTlrQ08zU0ZiaW9MRVFhbzhOcDhJ?=
 =?utf-8?B?Nnp0NVpHMjgybGxqMFVhRDhxdDgzYzBZNkFZUXcyVzlmK0NPb01jdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lF9xKBmFiDQJWsta+Fu5SNpKcTdo1ZXz+YYLdrxvVfN72keyaN3weDNhnoOmghjQa/lZIxEoovgJ+NwuR40ABGp8mGt9rO1R1BBd+kOLyPxILqMsN+V++xuTGET0n8idiCzAa02TfeC+nHIH1ALQU0vC9UFI/1Lmw9L60DIrh6yddjqzDJCa00hCbAtAb3/cRC2ogR6PwWGQM7+GnU4qHX8CDTqMOA+5z45iU7TLKBvvasjVpYk2FSCmkdKM1jYtWSdEr5geHpZnbBWBI5ZD8QsVrageIcY0CtxRr0AP8fPAENlyoKtrpVtlCgESopZGX5GapBy9mS+rDgAuFOf9Dw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e4f85e8-dacc-47f9-1031-08deb56a3333
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 05:48:06.3103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N0ohlrQCSdxLZVHqI33BiI9b9SSEr1bsIRMy5oRz3KLH7Tv8Gc6zv8jHvNiW4b1p3AWOkRuqZU+kEI419Zf1aA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4796
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 01F685778DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiANCj4gQWRkIGludG8gaW50ZWxfZW5jb2RlciBjb25zdGFudCBwb2ludGVyIHRvIGludGVsX2Rk
aV9idWZfdHJhbnMuIFRyYWNrIHdpdGggaXQNCj4gVlMvUEUtTyBidWZmZXIgZnJvbSBjb3JyZXNw
b25kaW5nIEJJT1MgZW5jb2Rlci4NCj4gDQo+IEFkZCBoZWxwZXIgZnVuY3Rpb24gaW50byBpbnRl
bF9iaW9zLltjaF0gdG8gZXh0cmFjdCBwb3J0J3MgaW50ZWxfZGRpX2J1Zl90cmFucw0KPiBwb2lu
dGVyLiBDYWNoZSB0aGUgcG9pbnRlciBieSBkZWZhdWx0IGludG8gZWFjaCBpbnRlbF9lbmNvZGVy
IGR1cmluZw0KPiBpbnRlbF9kZGlfaW5pdCgpLg0KPiANCj4gVGhpcyBpcyBuZWVkZWQgYXMgZGV2
ZGF0YS0+YnVmX3RyYW5zIGhhcyBiZWVuIGFsbG9jYXRlZCBwZXIgZWFjaCBwb3J0IGR1cmluZw0K
PiBwYXJzaW5nIERESSBwb3J0cyBpbiBpbnRlbF9iaW9zLmMuIE1lYW53aGlsZSBldmVyeSBlbmNv
ZGVyIHdpbGwgbmVlZCB0byBrbm93DQo+IGlmIFZTL1BFIG92ZXJyaWRpbmcgaXMgcmVxdWVzdGVk
IGR1cmluZyBpbnRlbF9kZGlfYnVmX3RyYW5zX2luaXQoKS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IE1pY2hhxYIgR3J6ZWxhayA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICAgICAgIHwgNiArKysr
KysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oICAgICAgICAg
IHwgMiArKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAg
ICAgICAgfCAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oIHwgMSArDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGluZGV4
IDFiODEzYTNkZmYyNDUuLjY4OTNhYTlmMDFhZWMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IEBAIC0zODUxLDYgKzM4NTEsMTIgQEAgYm9vbCBp
bnRlbF9iaW9zX2VuY29kZXJfc3VwcG9ydHNfdGJ0KGNvbnN0DQo+IHN0cnVjdCBpbnRlbF9iaW9z
X2VuY29kZXJfZGF0YSAqZGV2ZGENCj4gIAlyZXR1cm4gZGV2ZGF0YS0+ZGlzcGxheS0+dmJ0LnZl
cnNpb24gPj0gMjA5ICYmIGRldmRhdGEtPmNoaWxkLnRidDsgIH0NCj4gDQo+ICtjb25zdCBzdHJ1
Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqDQo+ICtpbnRlbF9iaW9zX2VuY29kZXJfZXh0cmFjdF92
c3dpbmcoY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ICsqZGV2ZGF0YSkg
ew0KPiArCXJldHVybiBkZXZkYXRhLT5idWZfdHJhbnM7DQo+ICt9DQo+ICsNCj4gIGJvb2wgaW50
ZWxfYmlvc19lbmNvZGVyX292ZXJyaWRlc192c3dpbmcoY29uc3Qgc3RydWN0DQo+IGludGVsX2Jp
b3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhKSAgew0KPiAgCXJldHVybiBkZXZkYXRhLT5kaXNwbGF5
LT52YnQudmVyc2lvbiA+PSAyMTggJiYgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmgNCj4gaW5kZXggNTBjOGZjOTFmYmU4NS4uY2YwNDBiOWI3OTE1YiAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gQEAgLTcz
LDYgKzczLDggQEAgYm9vbCBpbnRlbF9iaW9zX2dldF9kc2NfcGFyYW1zKHN0cnVjdCBpbnRlbF9l
bmNvZGVyDQo+ICplbmNvZGVyLCAgY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRh
ICoNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGFfbG9va3VwKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5LCBlbnVtIHBvcnQNCj4gcG9ydCk7DQo+IA0KPiArY29uc3Qgc3RydWN0IGludGVs
X2RkaV9idWZfdHJhbnMgKg0KPiAraW50ZWxfYmlvc19lbmNvZGVyX2V4dHJhY3RfdnN3aW5nKGNv
bnN0IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YQ0KPiArKmRldmRhdGEpOw0KPiAgYm9v
bCBpbnRlbF9iaW9zX2VuY29kZXJfb3ZlcnJpZGVzX3Zzd2luZyhjb25zdCBzdHJ1Y3QNCj4gaW50
ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEpOyAgYm9vbA0KPiBpbnRlbF9iaW9zX2VuY29k
ZXJfc3VwcG9ydHNfZHZpKGNvbnN0IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YQ0KPiAq
ZGV2ZGF0YSk7ICBib29sIGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19oZG1pKGNvbnN0IHN0
cnVjdA0KPiBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSk7IGRpZmYgLS1naXQNCj4g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCAyNjgxOTQwYTVjZmUzLi5l
YjE4OGIyN2VjOTZiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMNCj4gQEAgLTUyNDksNiArNTI0OSw3IEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IA0KPiAgCWVuY29kZXIgPSAmZGlnX3BvcnQtPmJh
c2U7DQo+ICAJZW5jb2Rlci0+ZGV2ZGF0YSA9IGRldmRhdGE7DQo+ICsJZW5jb2Rlci0+dnNwZW8g
PSBpbnRlbF9iaW9zX2VuY29kZXJfZXh0cmFjdF92c3dpbmcoZGV2ZGF0YSk7DQo+IA0KPiAgCWRy
bV9lbmNvZGVyX2luaXQoZGlzcGxheS0+ZHJtLCAmZW5jb2Rlci0+YmFzZSwgJmludGVsX2RkaV9m
dW5jcywNCj4gIAkJCSBEUk1fTU9ERV9FTkNPREVSX1RNRFMsICIlcyIsDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGlu
ZGV4IDI2ZTU5MTEwZTc0MzUuLjBmMjdiY2ZiNjkyMjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0yOTcs
NiArMjk3LDcgQEAgc3RydWN0IGludGVsX2VuY29kZXIgew0KPiANCj4gIAkvKiBWQlQgaW5mb3Jt
YXRpb24gZm9yIHRoaXMgZW5jb2RlciAobWF5IGJlIE5VTEwgZm9yIG9sZGVyIHBsYXRmb3JtcykN
Cj4gKi8NCj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGE7
DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKnZzcGVvOw0KDQpJIGRvbuKA
mXQgZ2V0IHdoeSB0aGlzIGlzIHJlYWxseSBuZWVkZWQgeW91IGhhdmUgZGV2ZGF0YSBhdmFpbGFi
bGUgeW91IGNhbiBnZXQgdGhpcyBkYXRhIG9uIGZseSB3aHkgdGhlIGhlbHBlciBhbmQgY2FjaGlu
ZyAuIEV2ZW4gYWZ0ZXIgY2FjaGluZyBpdCBwb2ludHMgdG8gc2FtZSB0YWJsZS4NCg0KUmVnYXJk
cywNClN1cmFqIEthbmRwYWwNCg0KPiAgfTsNCj4gDQo+ICBzdHJ1Y3QgaW50ZWxfcGFuZWxfYmxf
ZnVuY3Mgew0KPiAtLQ0KPiAyLjQ1LjINCg0K

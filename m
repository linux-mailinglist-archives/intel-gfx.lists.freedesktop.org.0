Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6670B431BB
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 07:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B7A510E96E;
	Thu,  4 Sep 2025 05:45:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ny5MyMkt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E38810E96E;
 Thu,  4 Sep 2025 05:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756964734; x=1788500734;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=gtolUyLbNUVBWM+daXw3z6l6L4Ewjt2wiHmcZKQkT+M=;
 b=Ny5MyMktBeqYSgtpeKfMF5EjtRblqcSxatxVk1FBSXYg981B0Db5JHdj
 iCOnuftDT3RGizQlMtpKGc/0LwF5A0W6zVwh+2QQdHS93s+MoaLckY3Ou
 BZ68wMyspe0uNtyhvCH3Ez9Rwlru3vg+iNw8LBiTBcMvJB/ofrEj0bWaR
 bH3NPE9s39P8Xm3S1XgYmtNUox83SFHFe0l+4CbxAgJbhcC1OzdQqWJ6Y
 /cPCiAfM1W/13FNyUn47fHVFgd8GS25/yS2fIcZwM8Y/8RKVEnmNSZLfy
 TfIrjG1x+nkl7sVSNNNQocpP9Y0SQB5vkXNtHMaU7z4PfvqjRELuvM9sO g==;
X-CSE-ConnectionGUID: 8jHKsg35RK+eJq+0Qzv1ww==
X-CSE-MsgGUID: kdNBFBGyTCOSRCSi6xH5rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="70666265"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="70666265"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 22:45:34 -0700
X-CSE-ConnectionGUID: pDACELTKREG/jDMxE3iDoQ==
X-CSE-MsgGUID: 33mEp+plRyetNE5EFZzjVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="208981194"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 22:45:33 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 22:45:32 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 22:45:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.64)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 22:45:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b4x2frY6Ly1KriXne69AFf7UZeqoJXCYTfFRA3BMeMu8Tbhb+lFbdGE8itLnNhyOJdgd4i6+YFNL7gzzIggXA5lHXHWoUicrsWGesOqYOTSV79sHzscJG6xGCN/ri63A3cF8i9OrF6y6eOOMA9x403NXcgoKyGCvBsUZrFtPvJf5oit18egiWvtv2pNYbW83LsgXwfDcbVA0Pkq+xTAIPWODyFiqzUyHkLQVvgUEXGgCqFHYGx4sJGTMqwG6xIHEbo6KNcupokVG4LG4XymgMyDNLtcUXHHmUjZaAahFAKMzsoIeDRWe1+Oi7WeRHa+Hgjhcu4DDgubBRLWJCGoG4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gtolUyLbNUVBWM+daXw3z6l6L4Ewjt2wiHmcZKQkT+M=;
 b=G76KniF/kQzhFDa+UWk0h2JBW4SM40yHMjdnA3NS6e8utCmL7PaZIWoEAmvjVASvB4S88KWHGjlGh0ZYHrvgKCqYaJl3mZuzE7XKrEj8tq/z7pXhnExAF/P5/fx2h639ZBnwyffNCx7ZZRVRcLajPCRidbyg13z1xUefMR+30XzY11xNyiviJ3VMpWbjfM+2nQxqZNjwbK41PdAK28k0Wyri92x6FSgkynURxXCHH0tevlqzrNigQ77kB50uQce6uRk2GXRNqvdQAHrtWEdsr+TVPjnB+2IYeiVDxyTKX/bUEm4NnXjNwm25pJ7gFgCV2yho9gUbhl5S7406k+Q9YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4977.namprd11.prod.outlook.com (2603:10b6:303:6d::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.17; Thu, 4 Sep 2025 05:45:30 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 05:45:30 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 08/20] drm/i915/cdclk: use generic poll_timeout_us()
 instead of wait_for()
Thread-Topic: [PATCH 08/20] drm/i915/cdclk: use generic poll_timeout_us()
 instead of wait_for()
Thread-Index: AQHcGBZgCFOFnBYW7kilsM5ZWT781rSCjg8A
Date: Thu, 4 Sep 2025 05:45:29 +0000
Message-ID: <ebd87cb1cf5da1f3febae1b53682895669feae58.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <6d50031411d5517508867d4b595ce90a2b44073b.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <6d50031411d5517508867d4b595ce90a2b44073b.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4977:EE_
x-ms-office365-filtering-correlation-id: c82310cf-179e-4c22-f459-08ddeb7641d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cEJIUGc5bWRhUTQ3enJQYzdLY1hHeWpFSk1ralFWWm9yZnpQSHlXWkx6anVC?=
 =?utf-8?B?TmN2TXhpYXhNUE5FTHBER0N6SEVyOU05L0JqRFVWSTRydkV0eFJiRXY0OWZR?=
 =?utf-8?B?ZVh3a2V3MitwMGJUcDhRSUorakluK3hJVkxHOEtHZHl5TjJubFVPTWhSMERn?=
 =?utf-8?B?R3I1WjB1bVdDZERSSWVBSmVBeUcxZlMwVWVtYUpjeG5udWs1Y2VSR2h6aGM0?=
 =?utf-8?B?VUNRVHFXYXJBb09uS1RVVWNnT1c0UmRHMU5LQXp4VzB3aTQyb2FsbGQ5aTFs?=
 =?utf-8?B?QUx4UitLKzVaRmVoYWx0b29zUkFiY0hrT2hTZ2ZNRit2RHcvdEZkMzlORGp0?=
 =?utf-8?B?TGdiOU9Sa0lLaTEwcGdZMlhFdFpDaEpVbkNmVXlZOEZicytoV3NxeElXQndX?=
 =?utf-8?B?Rkxldmt3SkZHSWtLcVRIWi9SWWt6dE9odnRDakpXdTFYMElMTnJUK2s1N01E?=
 =?utf-8?B?eEk0YW1aemNwS1U0NE15NzBYdlp4c0g0ZFpQbjg5TUc4WHFTYU40TVJkcFpI?=
 =?utf-8?B?L0graEQyNzJUcTRiUG00SE84TTd5dlFDUWZUOVk0OGtOQWU3Ulo4N1pBZFFl?=
 =?utf-8?B?MzE0YWJZQk5QUCs4V0hBT1hPNTdMdTVFbnhpaTk4S2JJSG0vUS83YkRvQWxX?=
 =?utf-8?B?d25Zd1YwaWxMeXhJTWx2UkI2S1NFOTg5ZERPc1ZSazlGRmRUL2hVdVJJU1k5?=
 =?utf-8?B?eGRwT1FFUEkvUTFMak5McU5PWWJuWkI4blNrV2xSaVA0MkZMS3VXTU1RbElk?=
 =?utf-8?B?ZDE4a2IzRE9PelJ4aWVMS0grMVNyMGh0VjR3cDY4bkM1NjhQRHFQVkJGdHFr?=
 =?utf-8?B?aHVIM1ZNZXk0dDl6NXR5dHQxOEpkZm5hbzlLNHBMU3RlK2NSK0hBNW9SK29M?=
 =?utf-8?B?ZnRzdWNBRkU2ZVZ5VkxCM0poL3FZakF4cklzdUpkSERxQVFGSG9nR3FuRlhE?=
 =?utf-8?B?TXczN3JQRmw3cStDN25QdDVJVmxYMlp0dTg5L0Q0b2FxOGpzOEVpNGZNUEls?=
 =?utf-8?B?OEcxejdWK3RRaXIxNys3YTNCYXpzUEc1N01UUVFvOU1qc1JjZ0ZERGc3WlBt?=
 =?utf-8?B?WDFiRUdUbG1XTXVEejZBMTBzOVdYbmMzcFAzT0xGWlZJTml6V0NvWTBrWVhp?=
 =?utf-8?B?RW9wM25NeUFSTW8wU2hYckRpUUV6V2I1ay90Z3hCRTJ4dHQveTBCRkl4Y2Qw?=
 =?utf-8?B?N25oWmNwcm5pSzh6b2EzWjRXMEVieHdaKzhvZFlHNlpZNUJpa2VtaXRYdHhl?=
 =?utf-8?B?NTQ0WXBKVjlpVzkxSjFHSGQ2eTlCMWthR05YZUJ5YlExTGJlNHRaZk1SNGZx?=
 =?utf-8?B?bHR6Ri9xbjMzNDNPQmZGTHRGbnowN0hGYndDZWVDc1FmV1RoQzZRRFRhWmNT?=
 =?utf-8?B?dFRIaTF5T2U4ZFo0TnlqS25rTWxEeldicGk0a2pTWXUyQWR5M0NqREo1N3Jq?=
 =?utf-8?B?M2V2MVhHMDducWcxckJSUjZ5c2c4NmhEMUlLQjB2V2RPZ1Y1ZDJsMklrOGJH?=
 =?utf-8?B?c1RFVy9KVHVaVWNaMFZ5Y1pSSFhtMWhVMTc3eUpUeUhuN2xVWXlOQk1hdEcz?=
 =?utf-8?B?QUlWZVZJYXJ3TWlUWlJZcDdjbTZZSm1jbGxDN3gyRmxhQ1hHcG9JcDhpcGFt?=
 =?utf-8?B?RUQxanBnYWhKYmtMYW43bE5VL3ZBeGtoY1kzSHdvUWUrQm81OGNpSWQ3T3p0?=
 =?utf-8?B?RHkwbThNaUFIYlpFdTl3K0ZIbXRYR0krbHhhUWJxQ1g1VTFhYjlDRG1XRVpz?=
 =?utf-8?B?ZWg0a085NWRIUGZWWmE2MlZIQStqb1NwdXF2ZmdGMUd1S25HeklsbnB4cjhn?=
 =?utf-8?B?Y0owdFE2UGxraUw0a3N6QVVpMXF4ak1taXJtWFZkbklWK1lRcmpvanJSWURQ?=
 =?utf-8?B?dGEwd0FVaHdyUTVPb2JVVmtGWGZGZnFkM2puMVhKRzlRTnJ1MWtXL0cxOVli?=
 =?utf-8?B?dW9YYno3VXRuWGNTeTBTcjhYbkJ6QmVuZ0ZHOUJ5MVBBSUpjTHRhMjVIY3ZQ?=
 =?utf-8?B?VzduK3BURTNnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RVNHSDRHTmY2SjZBaGhNeVFqcElQNE1za3RnWDdOVUE4Q0FpaWoxVzFBaGRL?=
 =?utf-8?B?ZkNjQkRwODZZOFE5c0JrT0cvWVFvdXlNU0pndml2c2tXVlNaa1Zrb2pGRnJI?=
 =?utf-8?B?YVdqZGlLaGIvbnh4YUcwV09iMkxOb0paV0Fzb2RibWhPU0VTdDlOanpwcy9v?=
 =?utf-8?B?cGIzN0UvdjUvT0xnTTZBTTRvNXloVVUxVm42TUVLNHJaNzcwSzZabk1jNEhI?=
 =?utf-8?B?b2lQWG0xSkFBamJtT1M4T0c2Z3Z4M2pQQ1kwYWRhMnJ2ZDRNMWd6M2ltSnJy?=
 =?utf-8?B?NC9HK05yWjdCT1JBaDhBRjRtOGtkMUJVaVBTTFYybThKMHhhWTQzdTRTQ2lD?=
 =?utf-8?B?UHJmSTljNkZwRVgrK004cUZZWGx1WWllaEJTMmM3d0dvbWZmMmJqNjZPN2Nv?=
 =?utf-8?B?V3VnWEUrOFg4cmk2N1dnb1F6aFgyZXN4N2QrQ1RBM1pUcnYzLyt3RzZCWWZL?=
 =?utf-8?B?T0gyN3hER1BiTFJqZi9hbEJPVWpOWThmbTlJZGJkK2pOU251ZjJib1g4VWtj?=
 =?utf-8?B?N01UQzV4dVVLWUV2bXhpSE9vZlNLMWptRGJ4eStFVVFmcGNSV2xwbGpMQTU3?=
 =?utf-8?B?YUM1RHFzVmJrNEh4ZEEvSmlreXVpcFBuczN6SXZISFRVdXQwbitXVXFZUDh2?=
 =?utf-8?B?Uk45c2pULytWdUM3ODB0TDczMGN3SEN0YUp0eW9DWHZYSGgralErMEtNUm5x?=
 =?utf-8?B?RGxyQ04wZ2xKdFdBZ0szalA1cVdNUys4ZkNoWU1NcWF5RXFiODd3V3pmMk1G?=
 =?utf-8?B?ak94dDg4WXpyVGNFaEdIMUszblRSUWRmM0lRSFo4Mm9nS2kwUUpBQzZmWmpq?=
 =?utf-8?B?SGErZ1AycTdPTnhwSVBpUU9DNFpDMm9LQVVFVlg2aW9CV28zbTBOSS9haW9P?=
 =?utf-8?B?dHVGa3J1UWRSb1lTU0Uxc2VQTDg0WEgzVTlZYXZkTjBrQ1pCRzZFWUF0M3Ba?=
 =?utf-8?B?OW1wR1ZmcStjc2VEQTZWZEc2c1N3ZHgyV1cvMUQ5cjhzWms4MGg5dUo5aVBy?=
 =?utf-8?B?REtxV0M0UkY5V0E2N2ZuajhKanZFcWlqM2JVQXZDa0NBcEZFL2tBY1RNZVho?=
 =?utf-8?B?bUo2QnVZOThlZW40eUZHWXlVckM5YXdWNkJSaGJmNXhMMGJBSUs3NWtubFpK?=
 =?utf-8?B?S1NEVWg2cGN2MDUvdnVEYkdONjVlQThoaHlLYzN1VTdJd1VEeENEckMwbkZt?=
 =?utf-8?B?enVXV2EzSXhiZDRQUGc4M0djOHIyZWlqM3Fxd1pjUDROaXlPOWlEbFhSWVY4?=
 =?utf-8?B?bzN0dHlwcS9mMGlIQkgzTFNTRGhwQmttMUpqeUVxUm16REJpb3Q1MTBzTzcx?=
 =?utf-8?B?NlQ2UDlueUdsWVZ5QXNQRmFjUitXWlJaNjBmQ0ZWZHh4cEI2ZU1jLzgwcFBZ?=
 =?utf-8?B?bERsRlE1MHZMWmQ1TytGbWgzNjhsemV5MGhDVmliV0dNTlliU1lUaEtvam41?=
 =?utf-8?B?VlFXdmpsVy9YOGlyak8zZVpYRTJlSm9CQWQ5bzQ4MkgwQVh2TzFQOCtSZUlR?=
 =?utf-8?B?SVJYcE5YUHNUeC8rMGlhcWVkdlVBckRxT3ZmemU5NUtXRkhvWWZHLytRNEwx?=
 =?utf-8?B?VUI1bmVZa1FpeFJ6VVBseHZoMWVwVmMyYllJOGIvdG1MeU9IUFdoSmwreTc2?=
 =?utf-8?B?OHVWekVpTGQxbXZkdWliTDREcEtwTmpnTlVzZ3dvVnZKOHR4MEd1ckJFeUFI?=
 =?utf-8?B?dEFUc0IvajFyaDhteG13NEcyTVRGOGJ6cjNlVmowdjhkc1pNQmMxMEVId2tY?=
 =?utf-8?B?bzZDNExFZGxjOUVaYkRCKytqYXVxdi9EZldaOGxGdkJraXYvRW9ZWHhyRk1G?=
 =?utf-8?B?MzBtUEJsa0FlcW1wN3ZReFU5TkpsMUx3b2xvTHozY2tUc25KeGpCSTJQUFc5?=
 =?utf-8?B?dXJnRmd3MUpGejM3L2hwM0piY3Q1VXB4ZkxJdGNqTUFpbUNidCtiR0RsQWVw?=
 =?utf-8?B?am9KMmF3SU55YzdtN1M4U0lVblJJZEFWclFvVDVFTXZqMkxQOUt1YzhqRTRG?=
 =?utf-8?B?WUx3bWZ4YWNzYWNLcTJlbmMrUnMvb2NXak1xakdEdVU0c3R6d1FReTB5SzJr?=
 =?utf-8?B?ZFNRTWlzSTM5aXR2QXptQmVYd3BRMVVCOTU3NTJ2SmNuRkFkanZsZktVbUpo?=
 =?utf-8?B?K3lwaUM3SFErb2FZQno0amQwcitVaUR1djJlbXZQclFzcnBWWFlJKzhqY2FM?=
 =?utf-8?B?dzBHc1QvVXVzYnJvc0w0elVpUU44NlZJc2tJQ0dvM1ROWDByNTlEZUFXNUlL?=
 =?utf-8?B?Um1jVE45WFFReGhJYUgvU2lCMVhRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <05BAA5D5F1FB354584F2F074383F6AEC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c82310cf-179e-4c22-f459-08ddeb7641d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 05:45:29.9788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q2Z4t6WjuhvAjj9GtTGU99vHrwpMcBW/AdV7kaYtTGFLDLWjCS6SvSWOQnLbGjswZv/cZYEH1u7jL9z1aIDv7tdAc7Zu3Bo5C6LcZi6kBkQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4977
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
NTAwIHVzIHNsZWVwIGluc3RlYWQuIFRoZSB0aW1lb3V0IHJlbWFpbnMNCj4gYXQNCj4gNTAgbXMu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
Pg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5jIHwgMzcgKysrKysrKysrKysrLS0tLS0tLS0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwg
MjAgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGluZGV4IGQ3YmEzOTcwZTFlOS4uOTcy
NWVlYmU1NzA2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NkY2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jDQo+IEBAIC0yMiw2ICsyMiw3IEBADQo+IMKgICovDQo+IMKgDQo+IMKgI2luY2x1ZGUg
PGxpbnV4L2RlYnVnZnMuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9pb3BvbGwuaD4NCj4gwqAjaW5j
bHVkZSA8bGludXgvdGltZS5oPg0KPiDCoA0KPiDCoCNpbmNsdWRlIDxkcm0vZHJtX2ZpeGVkLmg+
DQo+IEBAIC02NzMsNiArNjc0LDcgQEAgc3RhdGljIHZvaWQgdmx2X3NldF9jZGNsayhzdHJ1Y3Qg
aW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4gwqAJaW50IGNkY2xrID0gY2RjbGtfY29uZmln
LT5jZGNsazsNCj4gwqAJdTMyIHZhbCwgY21kID0gY2RjbGtfY29uZmlnLT52b2x0YWdlX2xldmVs
Ow0KPiDCoAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gKwlpbnQgcmV0Ow0KPiDCoA0KPiDC
oAlzd2l0Y2ggKGNkY2xrKSB7DQo+IMKgCWNhc2UgNDAwMDAwOg0KPiBAQCAtNzAzLDEyICs3MDUs
MTIgQEAgc3RhdGljIHZvaWQgdmx2X3NldF9jZGNsayhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAq
ZGlzcGxheSwNCj4gwqAJdmFsICY9IH5EU1BGUkVRR1VBUl9NQVNLOw0KPiDCoAl2YWwgfD0gKGNt
ZCA8PCBEU1BGUkVRR1VBUl9TSElGVCk7DQo+IMKgCXZsdl9wdW5pdF93cml0ZShkaXNwbGF5LT5k
cm0sIFBVTklUX1JFR19EU1BTU1BNLCB2YWwpOw0KPiAtCWlmICh3YWl0X2Zvcigodmx2X3B1bml0
X3JlYWQoZGlzcGxheS0+ZHJtLA0KPiBQVU5JVF9SRUdfRFNQU1NQTSkgJg0KPiAtCQnCoMKgwqDC
oMKgIERTUEZSRVFTVEFUX01BU0spID09IChjbWQgPDwNCj4gRFNQRlJFUVNUQVRfU0hJRlQpLA0K
PiAtCQnCoMKgwqDCoCA1MCkpIHsNCj4gLQkJZHJtX2VycihkaXNwbGF5LT5kcm0sDQo+IC0JCQki
dGltZWQgb3V0IHdhaXRpbmcgZm9yIENEY2xrIGNoYW5nZVxuIik7DQo+IC0JfQ0KPiArDQo+ICsJ
cmV0ID0gcG9sbF90aW1lb3V0X3VzKHZhbCA9IHZsdl9wdW5pdF9yZWFkKGRpc3BsYXktPmRybSwN
Cj4gUFVOSVRfUkVHX0RTUFNTUE0pLA0KPiArCQkJwqDCoMKgwqDCoCAodmFsICYgRFNQRlJFUVNU
QVRfTUFTSykgPT0gKGNtZCA8PA0KPiBEU1BGUkVRU1RBVF9TSElGVCksDQo+ICsJCQnCoMKgwqDC
oMKgIDUwMCwgNTAgKiAxMDAwLCBmYWxzZSk7DQo+ICsJaWYgKHJldCkNCj4gKwkJZHJtX2Vycihk
aXNwbGF5LT5kcm0sICJ0aW1lZCBvdXQgd2FpdGluZyBmb3IgQ0RDTEsNCj4gY2hhbmdlXG4iKTsN
Cj4gwqANCj4gwqAJaWYgKGNkY2xrID09IDQwMDAwMCkgew0KPiDCoAkJdTMyIGRpdmlkZXI7DQo+
IEBAIC03MjIsMTEgKzcyNCwxMSBAQCBzdGF0aWMgdm9pZCB2bHZfc2V0X2NkY2xrKHN0cnVjdCBp
bnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5LA0KPiDCoAkJdmFsIHw9IGRpdmlkZXI7DQo+IMKgCQl2
bHZfY2NrX3dyaXRlKGRpc3BsYXktPmRybSwNCj4gQ0NLX0RJU1BMQVlfQ0xPQ0tfQ09OVFJPTCwg
dmFsKTsNCj4gwqANCj4gLQkJaWYgKHdhaXRfZm9yKCh2bHZfY2NrX3JlYWQoZGlzcGxheS0+ZHJt
LA0KPiBDQ0tfRElTUExBWV9DTE9DS19DT05UUk9MKSAmDQo+IC0JCQnCoMKgwqDCoMKgIENDS19G
UkVRVUVOQ1lfU1RBVFVTKSA9PSAoZGl2aWRlciA8PA0KPiBDQ0tfRlJFUVVFTkNZX1NUQVRVU19T
SElGVCksDQo+IC0JCQnCoMKgwqDCoCA1MCkpDQo+IC0JCQlkcm1fZXJyKGRpc3BsYXktPmRybSwN
Cj4gLQkJCQkidGltZWQgb3V0IHdhaXRpbmcgZm9yIENEY2xrDQo+IGNoYW5nZVxuIik7DQo+ICsJ
CXJldCA9IHBvbGxfdGltZW91dF91cyh2YWwgPSB2bHZfY2NrX3JlYWQoZGlzcGxheS0NCj4gPmRy
bSwgQ0NLX0RJU1BMQVlfQ0xPQ0tfQ09OVFJPTCksDQo+ICsJCQkJwqDCoMKgwqDCoCAodmFsICYg
Q0NLX0ZSRVFVRU5DWV9TVEFUVVMpDQo+ID09IChkaXZpZGVyIDw8IENDS19GUkVRVUVOQ1lfU1RB
VFVTX1NISUZUKSwNCj4gKwkJCQnCoMKgwqDCoMKgIDUwMCwgNTAgKiAxMDAwLCBmYWxzZSk7DQo+
ICsJCWlmIChyZXQpDQo+ICsJCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgInRpbWVkIG91dCB3YWl0
aW5nIGZvcg0KPiBDRENMSyBjaGFuZ2VcbiIpOw0KPiDCoAl9DQo+IMKgDQo+IMKgCS8qIGFkanVz
dCBzZWxmLXJlZnJlc2ggZXhpdCBsYXRlbmN5IHZhbHVlICovDQo+IEBAIC03NjIsNiArNzY0LDcg
QEAgc3RhdGljIHZvaWQgY2h2X3NldF9jZGNsayhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlz
cGxheSwNCj4gwqAJaW50IGNkY2xrID0gY2RjbGtfY29uZmlnLT5jZGNsazsNCj4gwqAJdTMyIHZh
bCwgY21kID0gY2RjbGtfY29uZmlnLT52b2x0YWdlX2xldmVsOw0KPiDCoAlpbnRlbF93YWtlcmVm
X3Qgd2FrZXJlZjsNCj4gKwlpbnQgcmV0Ow0KPiDCoA0KPiDCoAlzd2l0Y2ggKGNkY2xrKSB7DQo+
IMKgCWNhc2UgMzMzMzMzOg0KPiBAQCAtNzg3LDEyICs3OTAsMTIgQEAgc3RhdGljIHZvaWQgY2h2
X3NldF9jZGNsayhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4gwqAJdmFsICY9
IH5EU1BGUkVRR1VBUl9NQVNLX0NIVjsNCj4gwqAJdmFsIHw9IChjbWQgPDwgRFNQRlJFUUdVQVJf
U0hJRlRfQ0hWKTsNCj4gwqAJdmx2X3B1bml0X3dyaXRlKGRpc3BsYXktPmRybSwgUFVOSVRfUkVH
X0RTUFNTUE0sIHZhbCk7DQo+IC0JaWYgKHdhaXRfZm9yKCh2bHZfcHVuaXRfcmVhZChkaXNwbGF5
LT5kcm0sDQo+IFBVTklUX1JFR19EU1BTU1BNKSAmDQo+IC0JCcKgwqDCoMKgwqAgRFNQRlJFUVNU
QVRfTUFTS19DSFYpID09IChjbWQgPDwNCj4gRFNQRlJFUVNUQVRfU0hJRlRfQ0hWKSwNCj4gLQkJ
wqDCoMKgwqAgNTApKSB7DQo+IC0JCWRybV9lcnIoZGlzcGxheS0+ZHJtLA0KPiAtCQkJInRpbWVk
IG91dCB3YWl0aW5nIGZvciBDRGNsayBjaGFuZ2VcbiIpOw0KPiAtCX0NCj4gKw0KPiArCXJldCA9
IHBvbGxfdGltZW91dF91cyh2YWwgPSB2bHZfcHVuaXRfcmVhZChkaXNwbGF5LT5kcm0sDQo+IFBV
TklUX1JFR19EU1BTU1BNKSwNCj4gKwkJCcKgwqDCoMKgwqAgKHZhbCAmIERTUEZSRVFTVEFUX01B
U0tfQ0hWKSA9PSAoY21kDQo+IDw8IERTUEZSRVFTVEFUX1NISUZUX0NIViksDQo+ICsJCQnCoMKg
wqDCoMKgIDUwMCwgNTAgKiAxMDAwLCBmYWxzZSk7DQo+ICsJaWYgKHJldCkNCj4gKwkJZHJtX2Vy
cihkaXNwbGF5LT5kcm0sICJ0aW1lZCBvdXQgd2FpdGluZyBmb3IgQ0RDTEsNCj4gY2hhbmdlXG4i
KTsNCj4gwqANCj4gwqAJdmx2X3B1bml0X3B1dChkaXNwbGF5LT5kcm0pOw0KPiDCoA0KDQo=

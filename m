Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A88CC18D66
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:06:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9BE10E050;
	Wed, 29 Oct 2025 08:06:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aYCIA5ZJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2898F10E050;
 Wed, 29 Oct 2025 08:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761725167; x=1793261167;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ddsb4aYgCiCHENLvrpFE7n1PzEMVmeHZW9sqTXJX6VM=;
 b=aYCIA5ZJ4iUGqW169YMXhpFCN0AlJOc+eSdHwlx4a439dFYmG7tkQwy1
 Ap76gheY5r6Goz+LL8VaJPAMggGjwGkZawIpT7fruZS9/k2q31Wy1+SSR
 /Vv75htfLyV+2c1nNam1zFd+ks1gaDR7/gg+urnPxJwMQUz2+TWKpLOnM
 XFhegBfrj6M81bV9MBWHMnqSxsceynOA955P/GNtyKoZ10HaMnyytUsKJ
 T03atlcJBROaEJw6dmb6vTJx2YJcQO09uBcQgU7Xj3aaWL4JvwXuAa3RO
 7UaxAqfYvCWMy4tfJ+WFwnOoHW7GxkQ3nsxx2dWBQ6ocG2aru8Z39mbJA Q==;
X-CSE-ConnectionGUID: dqq98ML5TsihUE8hEb8nhw==
X-CSE-MsgGUID: b4GAdLFCQkySKeSI8IKopg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81467009"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="81467009"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:06:07 -0700
X-CSE-ConnectionGUID: NNkwV/nqQjOcpt4Gk5SmrA==
X-CSE-MsgGUID: RCOyNLYyR7G1eeSsNSiUFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="216451926"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:06:06 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 01:06:06 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 01:06:06 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.19) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 01:06:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CGl2MQk/hvQnTIWmNHy8eiR2S3LSbr9bsGSglF5tp3iSRT3HoztsbvZK88yenv5DaQeSjLCynbexBND/+GR8FmvfIFv0K65Vdh48FaZD9PyqWd518rgxZaOcT+AOo2pFK2gqBekgNEKPSSVdhWXW7Ddn2EzdHcCXTYkr6I/jPADcyZBue+ml+LcCiEx+JNjeJ2BF7nmlYl5kEwIgSMSWE7M8aMdBlJDwaI+/3gg2dgKGxyFApHTfICemK1Xgv7r/EmezRLt7268lsgeJnd0jr5dBIYP67DjsgJFORGfmlCr2Z20rH8ImMFwBauANaWeqboCPkk23s1T9Iwb2te0ssA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oEqsWM48BoJwsbd8cHMI7pTGP72EmaSxkpMBkZd8pn0=;
 b=XVvEtbH1HxrIOURZWzwe4tzYESi3FRFE2aQ3ppB5l8CnZlUJgdMyrtF93ehV4FBy9O7Fbyvs+9UuBX1YZTu+e+33cgzl7IowZlOeRTI0d5Dde7vUt+qR8dygmYNVRdq6L7hBV3JcJ5fS+KhNauLCbmqj1JLyBBShPhryUkHg6dRcqRgItmaAvL3l3+7+eNGXVZJce+eHBVn7vVwB1rzrYtiHAypA/WVGR5u2+//u8RiSOXl1hQ+taWynOpzn7rVBT26sKBB304fWWwFIHCTGXQqsoESlU464PDMN475sWsZ1FL8yN3BLjbPnTGO9MJSdjBA0VQXhhaG0r61r6fME3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2760.namprd11.prod.outlook.com (2603:10b6:a02:c0::26)
 by IA0PR11MB7863.namprd11.prod.outlook.com (2603:10b6:208:40c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.12; Wed, 29 Oct
 2025 08:06:03 +0000
Received: from BYAPR11MB2760.namprd11.prod.outlook.com
 ([fe80::edff:94fd:b8f9:34c7]) by BYAPR11MB2760.namprd11.prod.outlook.com
 ([fe80::edff:94fd:b8f9:34c7%5]) with mapi id 15.20.9253.018; Wed, 29 Oct 2025
 08:06:03 +0000
Message-ID: <a3467ad3-3298-482d-a474-7288c75f7e14@intel.com>
Date: Wed, 29 Oct 2025 13:35:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915: Add fallback for CDCLK selection when
 min_cdclk is too high
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
References: <20251017114821.780466-1-ramanaidu.naladala@intel.com>
 <20251017150526.781715-1-ramanaidu.naladala@intel.com>
 <DS4PPF69154114FCDAF27E638E26ED4D423EFFDA@DS4PPF69154114F.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Naladala, Ramanaidu" <Ramanaidu.naladala@intel.com>
In-Reply-To: <DS4PPF69154114FCDAF27E638E26ED4D423EFFDA@DS4PPF69154114F.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0167.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::8) To BYAPR11MB2760.namprd11.prod.outlook.com
 (2603:10b6:a02:c0::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2760:EE_|IA0PR11MB7863:EE_
X-MS-Office365-Filtering-Correlation-Id: 14ff2d57-6a28-4aa9-eb2a-08de16c2013c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K1N2Wk9uSDNOczdRLytYMm1zb2EvM2syekt5NlZzUi9UbE5TYy9lRGdmdXlY?=
 =?utf-8?B?MnBZekxLeFVuMXAzRFpNZzdpYWNVSmRMdEJIM2N0Rjg4RlBjQzFsVlliQ083?=
 =?utf-8?B?djFYMmNJUURTamRZZVRwamZkR0MvekZyYlpub2x0eW8xaGtNb20rakJCK1pi?=
 =?utf-8?B?U2xPdGYzYTBaNks1ekRoUDVSN3NSOGg1NHUydm1LaHJwODcyYUlSdEE0QnVi?=
 =?utf-8?B?anlBbjlYZ3V0Q1lJY1Zybk5qTEF1QVF4aFNzZXh5emRRMGFadWl1Uk01OE9C?=
 =?utf-8?B?RlZMTFF0U3VFbGlmQnZESHFyNVJDZ0YwMmQxc09YZlh4QWQ0N0Zib2NhMjZ1?=
 =?utf-8?B?YVJTeVFNbEovRlRsSVRtYzlBM0I3ODVHL211dm5leUtXUmVCbHZZQk16b1N6?=
 =?utf-8?B?cGIrdDlLMXhZbnNkUm50S3JoVk9OcTlFbmp2OU5uOGhuditFMFBlZmNCQWhU?=
 =?utf-8?B?czdBWmVVaSs4SEpkemFLejVpKzBRY2psb1R6TGlralcyTUNxdVBLYlBMK2Vs?=
 =?utf-8?B?NCtDZnRqREJqaUpYR2tOQ2prRjdiSWhvcjlMVVhMSGc3WENRYXFONnRNQjM2?=
 =?utf-8?B?MkFGK2g5ZVFtZjRJZlAxd2dzVzJjUm5WTEgrZTJLNFE1d0xGMGJJemxRU3RV?=
 =?utf-8?B?ZWNnVUc3bXphay9CVkR6WWsxMnd1SFdabHJ4ZTVGQmozMUhtMDFiVlByUjB2?=
 =?utf-8?B?V2FqWEIvdXIweU11Qm1hYmpGdG1UeXd0SUtieWNUUlpIN1pBK3RhcXNCWncv?=
 =?utf-8?B?NkxCSkJ3d05WSkRXWGc5QUNMa0c1UnNmQXVVK1hkYmZpaUhtVmpqRmJvZmxr?=
 =?utf-8?B?Um5vNE1DWjJQSUlwT05KbVltdk5MaDVsUW4xSTBZTHNuK0lVVkN6S01PUlds?=
 =?utf-8?B?anhDd1QyWTZ5SE5XU3RaeUwxdUs2OGRGZTd2bmZwb3lyRitzcGI0K1J4QWJS?=
 =?utf-8?B?ZDhCa3YvRWZUTEZ3VUFNOFNOSVh6YkpiakwrM0dKeGxEUnBCcWxlcUNSRXM2?=
 =?utf-8?B?NjNHTk50YW9VcDUzUmZTcUo3TDQrNzg1cDdBNkhDZExUWkh1YUhPK0FCYUhS?=
 =?utf-8?B?SkJYNzlKY1hnR2UyazlTdnlMamgwdGVOWUorZTNBK1V6UDNBYW5NeW9qU1Jw?=
 =?utf-8?B?M3RvZS9jSGNXVTkvN0lLMzZkbWVidWpJYWt0bGw5SlZqekJLV2dqalFYQkQx?=
 =?utf-8?B?UkFWMWpHZWhuM2cvMlFXbGJDQWk3MzJZNTR1MzQ4cHVsSUJCZEhRQm1MbjB4?=
 =?utf-8?B?WXVOY2VZdjBEYWRST3dLYTRkSTgzZ0xLeExNM3lJc2pBSE1WdVJya25TL2tF?=
 =?utf-8?B?azFRR1dET0E4TGJGdERUcjBUUXpDanBENCt4UFJOd2V3MjlrRzRWWEttQmJ2?=
 =?utf-8?B?RVNPUEVjcVZVdmlxbFJYSU9nV1VQK2xncXp2QjlzSmd5TVJKcUZOS3pYVkNl?=
 =?utf-8?B?Q0NNRGFmM3ZqbDZpcTZKY0wwOGtPdmdqV0VlTDhQbTF1TnJoeSs1N215OGp1?=
 =?utf-8?B?SHRreDAxZlRHZVdjblVvblhxejIySE5DY1hjTENEbGRlcU0vby9CNVN0dzJj?=
 =?utf-8?B?ZGY0QmJPOGgwQ1pvd1IwOTRqRXNMeUxpRlpkV3hCaE1iS29vR01ZYkhxRVM2?=
 =?utf-8?B?ODFPNTB2ZTNHSm4zWTlpcFF1c2hQTVVWNHQvMmVic09VNFVkWUhRdkNJdzVG?=
 =?utf-8?B?STQ2OGIyMXhZRVcyYVpKMThOOU15TXkvdmszU05ZcVhhdjhYa0pMZXpMSUU2?=
 =?utf-8?B?b1oyTjRmaWd1azY3M01CcEJ2Q1pEVC9MWGtMT2tIejE5SFNwT1lUNmVxdW9w?=
 =?utf-8?B?WU9qcXZIcklhZXZDRDJydnBSR1NkRStERDdmR0pFM0hxU2R0Qi9SRHpyNHRt?=
 =?utf-8?B?Z2d0M1pKbHhCajVOdjN6ZC9rekpqUzFJT3gwQWRrejdoM3QxMHhYTXlkTFF3?=
 =?utf-8?Q?JQWHV8z6CRF1+mV29FadqeihgKycltm3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2760.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2pmLzdoMkdnVzhYajVNUTRMYjZkeVFmMEZlbDNyZEE1S1B3dTFXTG9qWU9n?=
 =?utf-8?B?SmpxbTc4ZlM5MmM3WlJYNjE0dDZWYkt0UUk2dnk1WHpqc294bUlYaWJDRFVx?=
 =?utf-8?B?RWpTQ1BldGwyNzRRTHIvRXpwNWxvdjZiMncyTWo3cDF1R2R0Z3lmbDBteG1h?=
 =?utf-8?B?aGp1L0g2UThYaXo4UHlJTmNxS2JHRmxhUXNGanNjVGhwdVpXZzB1Qk9hK3Rn?=
 =?utf-8?B?L0ozdnFZbXFzRXM1OVF0aDNJN055MEg2Zm1SWi9Fb3hzaE4zOVFkMHFZc0xp?=
 =?utf-8?B?aENwSXgvMHJZRnJYb0t1MVFwTXdJUjRRU2FURXFsZ0sxS2VvSVJmVVU0Sy9T?=
 =?utf-8?B?dWhQUkdqM01tSmJPYVowZ0cxV1lVSGVXRTJRdGNyZ2ppMFo2RUZCOGRTL0Fn?=
 =?utf-8?B?cXRXRlNhUGNuS1ZManUwRFRrNTB0eCtKd0tzVXNwamRhVEtxWmd5ckRSS3FJ?=
 =?utf-8?B?ZDB5YUtVWFg3citmc21XZStwaVpEZ3RGR3JKQTcyakpCcytPejF0Qmlia3Ar?=
 =?utf-8?B?eldYeXluYjZjMjc5eXY4WTFER01zdGx3MjJ1KytRSnFPRXUxdXNJK3BPMC9a?=
 =?utf-8?B?UjZYOHprSWxHQllBSnFwbXhmZ2NOcThqSHptRkxRRXl4RDZWYzRld1dzalFQ?=
 =?utf-8?B?b2Q3VWhtdnNYdmlhUnVtVjh3NHRDK3NBV0F1M3RVd1NkMWRxUVh5UlVFdmhz?=
 =?utf-8?B?dC9FV0p1N0J4YTRnRXcwL0pNd09PZUdYT1FsU3ZDVnY5RkxuQ01GR3dGeThm?=
 =?utf-8?B?RFZsc2grVEd5bnEzQWIrKzZwSnFlalFjVktQb3FrSFc0QkVlaVc4Ny80Rkhh?=
 =?utf-8?B?MmJyVy9mNkhoN0MrWGFTNGZRdWhCSUYvVGpSQkhkV25oYWRYbzlJUkZ5SzNS?=
 =?utf-8?B?d0JzYzgrUm9TUmVKeEo0WHpTVm5oclZNZzVFbWhJWmFjK0ZDdVJRQTNEYjlZ?=
 =?utf-8?B?YlNFUzF3aFI2SFdkRWg0Yk12ZDNycklLMjM4TGRibDNlU1JHV3dDaFNDQURj?=
 =?utf-8?B?Rlpja25sMTdHemQrMWEwcFdJL3lxLzhDM1VIdEtFcjRLeXVWMGtlZHZVcnN6?=
 =?utf-8?B?dndOTkwvUW9YV0RiQTExTmpSdkxVekdrRnE1dXBzZnRUWHc5SXZ3S21EUU5h?=
 =?utf-8?B?d3JYbDRPVVVqL1JBOGdZU3ZjalZ3ZXh1eW9zZFFzd2l2cHF2amh6SU9WaHhS?=
 =?utf-8?B?eElQbWVneE5nVmdZNEhyRXhSVmx1RlJEbnBwdkplT3JwWGovRGhJOHVIcjBZ?=
 =?utf-8?B?bkhabGgwcGJDNlFjRkZNaDl5RUVDQk9CUzhpclpSR2FnRnBsUnE4a3hEZ3BY?=
 =?utf-8?B?UXBlSDZjQWFUb1NXVjVLU1VtMEFaWmNwRTJCOEdXZnkvaWN0WTUxK1hwSVQ2?=
 =?utf-8?B?d3l3eWdrSEtSV3k5OStnd1VvYUQyS2MrNGhvKzgvNTlZNTdZbVFWbGpyajZH?=
 =?utf-8?B?eXYrakVKYTFKOVBEQzJIdzkzUUFpYTBCR1FGdWE2S2lkRkRpUDdqaUJkMWUz?=
 =?utf-8?B?eHZLWXA1bHh1ZERWbEI3TGtqckg5Y1dGa0VvWU0yR0JybXFBeTZGd1Vvbi9S?=
 =?utf-8?B?OVorSmUyRzk0UnloNGFWODJCL1BBOXRsZzBKU29DTktKemkzV3pySzh5WTZi?=
 =?utf-8?B?MkYyZ2tJNW5IZGQya2tRZVZuUzlPdFJMcUIzektRNDhuM1k4NFk1OWQwZVlo?=
 =?utf-8?B?TXdZU2lXb05uVCt1REF3RVRpckZYbjhEVFdlYzFQa2FxVzZFZ1BwVks3SXpx?=
 =?utf-8?B?cjVwbjJSd0VtRFJwQkxlbnFXNVVSYlNDWC9udmpiZ2RleUhib0c4VDQ5R3lx?=
 =?utf-8?B?ZDNpR1ZtVWJmdjhXQU1Rb0dZWEV0K2ExSzNnYkpJcGtGMnprdnV5bTNDM1Fn?=
 =?utf-8?B?bG5KZk1ETmdrLzYzU0szRW10c2RqWHlHRjJSRGh1UFBheXVXMTdWUUNnK1B1?=
 =?utf-8?B?b2VlaFdQN0cyaFFlejRMSmJoVFg4R1ZRMlN2cU1kR3QzZXRLZ3JqYmFvUFpQ?=
 =?utf-8?B?OG95aVEwQzA0K1Z2N2VzQ0QvUG0wZFgxS3BCZHZQd2J3Q01lcWxtTUpwNnlW?=
 =?utf-8?B?bXpPZHRET3N2M1ErbEVINmQraEJsbFBveGlVRlVVZnZMbzJISE14Ynh2TU84?=
 =?utf-8?B?ZFRUMjB6UG00NllNcjhCekFBalVtdWRRS1p6cEJJa3hPTmg1WnNnY29MTWFn?=
 =?utf-8?B?SEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14ff2d57-6a28-4aa9-eb2a-08de16c2013c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2760.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 08:06:03.5403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w43CEGajNf5kW2af7vjQ9w34V6bjOv/UcJRic36v9FnSuIFKTE9Mn3EHvUEdgUQoYndWlBffgqHOucO7n17Y0lhOR8K1avMdqVC3XqREAyA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7863
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

Hi Mika,

Thanks for the review.

On 10/28/2025 5:37 PM, Kahola, Mika wrote:
>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Naladala Ramanaidu
>> Sent: Friday, 17 October 2025 18.05
>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Naladala, Ramanaidu
>> <ramanaidu.naladala@intel.com>
>> Subject: [PATCH v2] drm/i915: Add fallback for CDCLK selection when min_cdclk is too high
>>
>> In cases where the requested minimum CDCLK exceeds all available values for the current reference clock, the CDCLK selection
>> logic previously returned 0. This could result coverity division or modulo by zero issue.
>>
>> This change introduces a fallback mechanism that returns the platform's max_cdclk_freq instead of 0.
>>
>> v2: Update safe fallback value to max cdclk.
>>
>> Fixes: Coverity CID 2628056
> We shouldn't mention the static analysis error ids as most of the audience cannot trace it back.
>
> With this change, this is
Sure. I will remove this Fixes tag while merging the patch.
>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>
>
>> Signed-off-by: Naladala Ramanaidu <ramanaidu.naladala@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index e92e7fd9fd13..da97c38cca14 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -1561,7 +1561,7 @@ static int bxt_calc_cdclk(struct intel_display *display, int min_cdclk)
>>   	drm_WARN(display->drm, 1,
>>   		 "Cannot satisfy minimum cdclk %d with refclk %u\n",
>>   		 min_cdclk, display->cdclk.hw.ref);
>> -	return 0;
>> +	return display->cdclk.max_cdclk_freq;
>>   }
>>
>>   static int bxt_calc_cdclk_pll_vco(struct intel_display *display, int cdclk)
>> --
>> 2.43.0

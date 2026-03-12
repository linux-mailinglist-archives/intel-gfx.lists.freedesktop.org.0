Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DSoJ0JrsmnSMQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 08:29:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9523626E5BB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 08:29:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5BF10E419;
	Thu, 12 Mar 2026 07:29:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DcZNxBEO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F2D610E418;
 Thu, 12 Mar 2026 07:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773300541; x=1804836541;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CKQEZtbfqnZd0aWwbX92VYoU1ymu+a/0SxtX1lh45yc=;
 b=DcZNxBEOX5N0HhllrO5Q+5tdeVdyL9Gwnu/p4Go0dhITzghKnWQqn1w6
 8FQdKBoIfWM8ZWsK6Nt4pN02eflVSBj/c10xg7CnlNe4mDmeLyS4yTDLt
 ajt365JKZnWyYBZfPw568KRKSUJjqUo2tpcfxEoG7vEF1kNhC3pvZaNj0
 HtKmeA0TLygdGn0guzF/l1cit1PNfNog6hvnPDtxPJ3Pk3pSladmLtIyh
 TqoPQsNSoB8/T2aHLKKV/pKc6qkCRvw872TFYC1JlvYKcaCkq2zGXGd5p
 3NR5YES/7owRkDuoOgYwFUesKO5IJ283hONulu3assOCdcPwYATDUS1yt g==;
X-CSE-ConnectionGUID: kTb7jSh8Rk+R3E8Ypd+sDQ==
X-CSE-MsgGUID: B6jtKP1GRK6+Df/5Edvwcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="99848286"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="99848286"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 00:29:00 -0700
X-CSE-ConnectionGUID: zm37uf9cRhWsQXnw+uFepA==
X-CSE-MsgGUID: 8twimYvoRGG1a7K6VRJmvw==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 00:29:00 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 00:28:59 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 00:28:59 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 00:28:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H5ug78K0POdhiRG1JQie6SnXaMXrrr700jFSBBDrG/ptqtIJq07i7lDExhqlM4YFczGSmFUbtISxn68+DYeXvPzfenvm8X+X/7wAh2Tb0Mqq4qyHlearsSJAKHeju4qzZsfah4AZ61eVI+GdzRl7fP7jUSSHm77hu4H7RHk3+VUgdbYYbiGt/hV9jvFIYE9LQ3df0pwwa6tQdHOdxdViRYlAt8AE447PNis8BEFIAQluSGlr1SjVKgIfaIaewELmPEXSdPuElbe42ocNVbTBJrwm3CiwP1fKkjdIKNKQaw/aeAmdzl4KgYpNtbYbudpKUP6qOgw9mJUdGEnNLQLWpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CKQEZtbfqnZd0aWwbX92VYoU1ymu+a/0SxtX1lh45yc=;
 b=WcL2dqXdrH84FJMzoqNI2oz5jht8r3kVkxG53ZD8ucVVw/piw5og5zBAAUiDee2DhTpccaNQqZ9OUYad6EBSMhXXEDRUllQRd+jGsfn2ZM+wv0lAmlVVR0NovjL1pRINQ2IfBHGtp2BwrIBV1igq7JUCNbCMlF+5DkBCMTDBplO1HS/wMsPx2VT/WwV7UfksswY1Yni5zq88D6IOF1zFJIHMCR/Lyl6HKT134vTKC7oOaqm53KfS0GDrN4EqYoDWLuK0KA0R9ZZBD35+9oR9M9p2XjFtKDiY5CsYUqHJOWO9a+6M5RuwdRG5PI8l8JboIwpb9sQF8zd0XlVSqRgTrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by LV3PR11MB8554.namprd11.prod.outlook.com
 (2603:10b6:408:1bb::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.3; Thu, 12 Mar
 2026 07:28:56 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9587.017; Thu, 12 Mar 2026
 07:28:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "B S, Karthik" <karthik.b.s@intel.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>
Subject: RE: [PATCH v3 00/24] Refactor LT PHY PLL handling to use DPLL
 framework
Thread-Topic: [PATCH v3 00/24] Refactor LT PHY PLL handling to use DPLL
 framework
Thread-Index: AQHcsWIMUjTz1u+odECz4CVqYjCPn7WqPjmAgABCgQA=
Date: Thu, 12 Mar 2026 07:28:56 +0000
Message-ID: <DS4PPF69154114F0925207D6FFEF9D9F07CEF44A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
 <DM3PPF208195D8D880B96B9F858C780FA0EE344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D880B96B9F858C780FA0EE344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|LV3PR11MB8554:EE_
x-ms-office365-filtering-correlation-id: 784ce604-b9a6-447f-ae53-08de8009050d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021|22082099003|56012099003|18002099003|7053199007;
x-microsoft-antispam-message-info: D8M7gcGm2Y+doz5DQSGF+9j92AgO+qev9pczA22p3AJq6qReySio5FWG4ixcyI6ltEUVigO6UGqyYBmPAxeRcPtE1ESEY8P6RfbYv09P7VyPLzsZJWPfInm/C4drrLln8Co8in/YmfcK71mwdlXASb0dCv06P/6oSdXh6Vugp6nHklBQdDrhZ4bC0Mz9MkQl1dJpAdKAPKgd0IQnK9ZCEVLMSTL/jcIs919pT4Q5TP4zbMywQ+1cRfDwJxrAjRvcfwGWV8OPO1sVuDqnz3d4BJJ/GrqmQpqz8233TcwxR+000T16I3Kk3WLWv/RhulY7JnyI592tLmlPMlAphpJfPmLPHdg2OnglITeK4yKosLL1kKbzKrOZ9jwkXlJzq0cxbvj4ym2C+ChoPINLxko9rYV9LxvFfSQUs0l9MQ1AzFZcERok2OT+l37DYMQHEn7htGf3tcryW0jftEOoawcjYxrzVjsYY1ZYFPDzSh88HTkyg1qrBg84TsxPNRUvfP4cUELEqM7iBSnOmeCFC2wHWLwmKin+bGB+rFe5tNwCGsJZ9Rd+XxSAGfe8tkUwIJYkWDHGALj507Lba++25XbTg81zr0cwz+bvkDDN7Qo0/RXZPnlTbyOuk7yEf8RIxgF5YFu6Yoe6h16UTIRfBfCxg0LvzqszXbdeFb3laat1Eiq4qTXpjBhmx8mXdx+QUisex9K7ci1xSlvGJdn43OKCs5mooymZdoZBbmivfJ6dnN1Mj1I4LGhMN8Mn55D5LkbjCFFcRtYDwi9KJk4OKJNHHaal2JxdS5Cwu2jihldFqZc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021)(22082099003)(56012099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bVE5SXNvaW11RXJiN25TQ1dSN1p6VHhLWVFsMkhlb21pQXNwTitVT2JZRlB6?=
 =?utf-8?B?S25ML2ZWMEZRaDVNTkJodE5XdmJHaDVicUkycy9yWGJicXp0djVuRVdKV3Bn?=
 =?utf-8?B?VU04aUQ2aUNNNEtlZ0NnMGliVDN1UEE3dGpHRFlHY3dISXV4WmU3ZDAzeTJo?=
 =?utf-8?B?QkxNbW1qNGQ4QU95MjVEclRMbmEzYWdrOTR4TEE5eDRJZ2NzYmRyS3BtVEZt?=
 =?utf-8?B?a09EYjRTQ0VjandxSDlsamdGd2M4MG1qUkFQc1VtcEt2MGJnWGs1Qlo4S0Ri?=
 =?utf-8?B?NnZnenM5UWJEVjJ5TjBWakpwY0ZqVTUzRUpMbnRmM3dIcHlHYjNsQTFUb2Vj?=
 =?utf-8?B?NGhsODFTYjdkRm1OZnExQk44TWtWeDF6S0tJWWwwWEFGMTF2R2FMT2hySUpr?=
 =?utf-8?B?cyt3TXQwM25UT3MxNlJ0TXVJZENxQ1dZb2kzV05POVRhb3pxSUJ2TVRkWTVa?=
 =?utf-8?B?cXlyQ2xScHdidXNrYmd1dkdSbGtEMnAzengzZzltbEhacGZiOERBQUU0S0dt?=
 =?utf-8?B?RkQrTkdaeGxBdU5pd0llMlpjT2dmY3hRMzNPdGNrdjhVMGEycXo3SjNMUVJU?=
 =?utf-8?B?Y2tGYXVMSG5LeG1GNEIrTmN1T1cxcUVyUE4rYlZZbk1EbFhEaXhDTWNQUStW?=
 =?utf-8?B?YXRBeUdYVGQzaTlpNG9KZ0xxNk53ZHVwY1NQanRVU1p6ckpQTmV4aW05YjBq?=
 =?utf-8?B?amhPcGZCbWpXb1JhWXdjZkd0ckJYZWU2KzFLRDVIUFlqSVJ4c1lScjhOOW5G?=
 =?utf-8?B?dW82MEFseUdGaWdWMXIyUmtrbjBXNDJtQ25aSVFjM0JKUVlPd2oxV0N5UEJJ?=
 =?utf-8?B?SFI0VHE3bUlPZWFMd1FuYVFGZGtOaTVINUVPelRhbzlUQTY2MmJjMG9jUGtv?=
 =?utf-8?B?YUJodDJ5bEYyQStUcUpGdUd3ajQrMDFlQ0NldWZFTVcvQXNPeVRHK0tNdjU3?=
 =?utf-8?B?djJMc1V1ZFc1c1RCOGlsQWNXTmN5WDhKRkJpYlJaMkIxZk90bXh1YmM1RFF3?=
 =?utf-8?B?THZnZGNSQWliTDcybkN0Q2RLUFZ0UlhKQnlHSk9BSEM3RXFCMnVnb2k3b3Zs?=
 =?utf-8?B?cXdvRGZBclVDY1lVY1UybjByeFlweUFwVVlidUt3ck5McTdheDFFZ2I4Tjhy?=
 =?utf-8?B?TkhsY1J3NkZRMEZvd3pZWnZqeG5zSHJHdlo0TUJJN21qMjhZRFFBZ0Q5cEhZ?=
 =?utf-8?B?RFkvUmJJQ0lyYlVnNFlZWk45MmFWTzVvYnBmY1hyWmV0U0xEbGxRSFZzTWRu?=
 =?utf-8?B?OHJQc2dxMlFzckM0T2w4eFluSFVjOHBhMU1XaTNCdDBmTitQZnp2eDFXajZr?=
 =?utf-8?B?QVZuTFRQNFY3UTlLQnlDdzJNd3IzRHBKWThlcTFqYnJkaUprYjZ5NVVPQ3Av?=
 =?utf-8?B?YkNJQXVBbFJGZTI1anlqSzRBYTFZSTZvM2hvd0tLa2I0S012ZlNDakdqS0dH?=
 =?utf-8?B?SWsrYnNJdytIOXRhWk11aXVJNUo0Yks2RmdGNEx0Y1pKTjlTZStTS1dUc0dD?=
 =?utf-8?B?NDJ0MFlGeC9xeFI4RFlNcHUzOXoydlBCSktxcEVuRXUwTkFXRDZmMGtEMGc0?=
 =?utf-8?B?QmVhSGVGei9adUt6d1lqeFpFeWcwNHUxZ3NNR2ZxKzJtUHpiZTJWRzZzc29D?=
 =?utf-8?B?bFFHZkZMUEVGbTlHVzh5b1c4U0EyaEl2VjlyajE3ajFQQzdTL2NQT2hFczZn?=
 =?utf-8?B?bDVtVEV6NDBQaUc0N3BqdlpjRXB6dWRRZjRvWkFab1RJT0JuNEZRcUZUYVJE?=
 =?utf-8?B?NmkrV2hCSElHSWw3RTh6TGg2WHE2bEVUbldUTUxsMEpTbUlXYjhDUTFhUGJs?=
 =?utf-8?B?LzhwTWxIQTJ3ckhOTGloM3pJblNtZnVZM0w5ZTdtK056a0hqLzc1TGpkNFFG?=
 =?utf-8?B?YWYvVG44Ryt2bTNNWVEwUE5lU1h4ZGU5UWFYdVlpZ0U0SHczd01DTkVDMHA3?=
 =?utf-8?B?amFoMDBnbHhJSjd2MWhka3Zuam0zN05yWFQvYnJPZHpFVG9kL1NTMnpROWp3?=
 =?utf-8?B?WFNpWnovUlJNbVNPYTRMUGk3bmdJOTUxT3NJVGVYY1dqdDIvWEtOM3pIeFlK?=
 =?utf-8?B?bUJMVWZEZW5ua1hzTWFyWGJuVDczOHdIek5yMGtOWnhKdnByNDhBdkRpUERB?=
 =?utf-8?B?U3hnWXgvKzI1b3BEUlZjNzR2QlRtQU1MWDVIbWtRMHVSMXQrTVhiZW9uSzI0?=
 =?utf-8?B?N3ZHVkpCS3o2U3NBSUhxWExvVDN6VlFSMEtzd1RBWFN5cDd4UDBQTjcwUVEv?=
 =?utf-8?B?cDFVcllDTTFhdFhRVURudldTREp6OWhTSHZXNUk2L1FOc0lhcVJpd2tzRHVB?=
 =?utf-8?B?Q3FlcEZIa3Njalk2NFZOVFE2SmN0WEQzc0VTZlNrOVRxcmpOcUx4SmsrVHZJ?=
 =?utf-8?Q?Hk/VV0RB9WGV6xp1uHVHZ37k+eicmqJUT1UBwCK9Al0D7?=
x-ms-exchange-antispam-messagedata-1: bJ6SrYn4cGst6g==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SuYJIYX3xHo7KED1fJqpkqIxwBios8CAJ8KyhTS/fFYghGrMroHs0jNb8WUmRmu95b3ghEdUl8xbIKT1kWKyvReCspQM1MR0Cxo+VlokomqNJfyUCbEHJHzsZn/B6nSeH22fvQbEUkT5DVw8EoXmrKdTVvKB/6yYY8wMaoXNAGKEejmlxejNabQsp7JAm3RJZu1mVUTnfGZz2QzTUFcnAthqXuAUuRKJKNMrkc9CUT5hdLBvSsqNK07VRvCb/vMvObs5U1neFEreppoiKKDqxqQyD3V/5645yERwGT6wGnPe7OWSxByEfRLo2ssNlNu5CCZHEdwsRWdHL7fReSrelA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 784ce604-b9a6-447f-ae53-08de8009050d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 07:28:56.0814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j4XE1UW3TO43JxrkUmNk2wGomMV/reib5lXwDQN6jM61vp9wYgWKFHxJJ3VLPVpCjrjrSy5k6xCbogeAWC2ntA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8554
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
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9523626E5BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAxMiBNYXJjaCAyMDI2IDUu
MzANCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
IENjOiBCIFMsIEthcnRoaWsgPGthcnRoaWsuYi5zQGludGVsLmNvbT47IFNoYXJtYSwgU3dhdGky
IDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6IFtQQVRDSCB2MyAwMC8y
NF0gUmVmYWN0b3IgTFQgUEhZIFBMTCBoYW5kbGluZyB0byB1c2UgRFBMTCBmcmFtZXdvcmsNCj4g
DQo+ID4gU3ViamVjdDogW1BBVENIIHYzIDAwLzI0XSBSZWZhY3RvciBMVCBQSFkgUExMIGhhbmRs
aW5nIHRvIHVzZSBEUExMDQo+ID4gZnJhbWV3b3JrDQo+ID4NCj4gPiBUaGlzIGlzIHYzIG9mIFsx
XSwgd2l0aCB0aGUgZm9sbG93aW5nIGNoYW5nZXMNCj4gPiAgLSBSZW9yZGVyIHBhdGNoZXMgdG8g
bWFpbnRhaW4gYmlzZWN0YWJpbGl0eQ0KPiA+ICAtIERyb3AgeGUzcGxwZCBzcGVjaWZpYyBEREkg
ZW5hYmxlX2Nsb2NrL2Rpc2FibGVfY2xvY2sgaG9va3MgYW5kIHJldXNlDQo+ID4gICAgTVRMIGlu
dGVsX210bF9wbGxfZW5hYmxlX2Nsb2NrKCkgYW5kIGludGVsX210bF9wbGxfZGlzYWJsZV9jbG9j
aygpDQo+ID4gICAgaG9va3MgaW5zdGVhZA0KPiA+ICAtIENvbW1pdCBtZXNzYWdlIHVwZGF0ZXMN
Cj4gDQo+IFNlcmllcyBSYidkLg0KPiBJIHdvdWxkIGFsc28gbGlrZSBhIFRlc3RlZC1ieSBmcm9t
IHRoZSB2YWxpZGF0aW9uIHRlYW0gYWZ0ZXIgbG9jYWwgdmFsaWRhdGlvbiB0byBtYWtlIHN1cmUg
Tm8gcmVncmVzc2lvbnMgY29tZSBpbiBsYXRlci4gQmVmb3JlDQo+IHdlIGdvIGFoZWFkIHdpdGgg
bWVyZ2UNCg0KVGhhbmtzIFN1cmFqIGZvciB0aGVzZSByZXZpZXdzLiBJIHdpbGwgZml4IHRoZXNl
IGNoZWNrcGF0Y2ggd2FybmluZ3MgYW5kIHNwaW4gYW5vdGhlciByb3VuZCBmb3IgQ0kgYmVmb3Jl
IG1lcmdpbmcgdGhlc2UgcGF0Y2hlcy4NCg0KLU1pa2EtIA0KDQo+IA0KPiBSZWdhcmRzLA0KPiBT
dXJhaiBLYW5kcGFsDQo+IA0KPiA+DQo+ID4gTWlrYSBLYWhvbGEgKDI0KToNCj4gPiAgIGRybS9p
OTE1L2x0X3BoeTogRHVtcCBtaXNzaW5nIFBMTCBzdGF0ZSBwYXJhbWV0ZXJzDQo+ID4gICBkcm0v
aTkxNS9sdF9waHk6IEFkZCBjaGVjayBpZiBQTEwgaXMgZW5hYmxlZA0KPiA+ICAgZHJtL2k5MTUv
bHRfcGh5OiBBZGQgUExMIGluZm9ybWF0aW9uIGZvciB4ZTNwbHBkDQo+ID4gICBkcm0vaTkxNS9s
dF9waHk6IFJlZmFjdG9yIExUIFBIWSBQTEwgaGFuZGxpbmcgdG8gdXNlIGV4cGxpY2l0IFBMTA0K
PiA+ICAgICBzdGF0ZQ0KPiA+ICAgZHJtL2k5MTUvbHRfcGh5OiBBZGQgbGFuZV9jb3VudCB0byBQ
TEwgc3RhdGUNCj4gPiAgIGRybS9pOTE1L2x0X3BoeTogQWRkIHhlM3BscGQgLmNvbXB1dGVfZHBs
bHMgaG9vaw0KPiA+ICAgZHJtL2k5MTUvbHRfcGh5OiBBZGQgeGUzcGxwZCAuZ2V0X2RwbGxzIGhv
b2sNCj4gPiAgIGRybS9pOTE1L2x0X3BoeTogQWRkIHhlM3BscGQgLnB1dF9kcGxscyBob29rDQo+
ID4gICBkcm0vaTkxNS9sdF9waHk6IEFkZCB4ZTNwbHBkIC51cGRhdGVfYWN0aXZlX2RwbGwgaG9v
aw0KPiA+ICAgZHJtL2k5MTUvbHRfcGh5OiBBZGQgeGUzcGxwZCAudXBkYXRlX2RwbGxfcmVmX2Ns
a3MgaG9vaw0KPiA+ICAgZHJtL2k5MTUvbHRfcGh5OiBBZGQgeGUzcGxwZCAuZHVtcF9od19zdGF0
ZSBob29rDQo+ID4gICBkcm0vaTkxNS9sdF9waHk6IEFkZCB4ZTNwbHBkIC5jb21wYXJlX2h3X3N0
YXRlIGhvb2sNCj4gPiAgIGRybS9pOTE1L2x0X3BoeTogQWRkIHhlM3BscGQgLmdldF9od19zdGF0
ZSBob29rDQo+ID4gICBkcm0vaTkxNS9sdF9waHk6IEFkZCB4ZTNwbHBkIC5nZXRfZnJlcSBob29r
DQo+ID4gICBkcm0vaTkxNS9sdF9waHk6IEFkZCB4ZTNwbHBkIC5jcnRjX2dldF9kcGxsDQo+ID4g
ICBkcm0vaTkxNS9sdF9waHk6IEFkZCAuZW5hYmxlX2Nsb2NrIGhvb2sgb24gRERJDQo+ID4gICBk
cm0vaTkxNS9sdF9waHk6IEFkZCAuZGlzYWJsZV9jbG9jayBob29rIG9uIERESQ0KPiA+ICAgZHJt
L2k5MTUvbHRfcGh5OiBEdW1wIGxhbmUgY291bnQgZm9yIEhXIHN0YXRlDQo+ID4gICBkcm0vaTkx
NS9sdF9waHk6IFJlYWRvdXQgbGFuZSBjb3VudA0KPiA+ICAgZHJtL2k5MTUvbHRfcGh5OiBHZXQg
ZW5jb2RlciBjb25maWd1cmF0aW9uIGZvciB4ZTNwbHBkIHBsYXRmb3JtDQo+ID4gICBkcm0vaTkx
NS9sdF9waHk6IEFkZCB4ZTNwbHBkIFRodW5kZXJib2x0IFBMTCBob29rcw0KPiA+ICAgZHJtL2k5
MTUvbHRfcGh5OiBSZW1vdmUgTFQgUEhZIHNwZWNpZmljIHN0YXRlIHZlcmlmaWNhdGlvbg0KPiA+
ICAgZHJtL2k5MTUvbHRfcGh5OiBFbmFibGUgZHBsbCBmcmFtZXdvcmsgZm9yIHhlM3BscGQNCj4g
PiAgIGRybS9pOTE1L2x0X3BoeTogUmVwbGFjZSBjcnRjIGNvbXB1dGUgY2xvY2sNCj4gPg0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyAgfCAgMTAgKy0N
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmggIHwgICAx
ICsNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwg
IDI2ICstLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyAgfCAgMzIgLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bC5jICAgICB8ICAyNiArLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcGxsX21nci5jIHwgMTg0ICsrKysrKysrKysrKysrKystDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCB8ICAgMSArDQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMgICB8IDE5MyArKysrKysrKysrLS0tLS0t
LS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuaCAgIHwg
IDIzICsrLQ0KPiA+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3ZlcmlmeS5j
ICAgfCAgIDEgLQ0KPiA+ICAxMCBmaWxlcyBjaGFuZ2VkLCAzMTggaW5zZXJ0aW9ucygrKSwgMTc5
IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gLS0NCj4gPiAyLjQzLjANCg0K

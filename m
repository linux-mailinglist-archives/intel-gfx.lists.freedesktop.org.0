Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DrX3IHTYJ2r53AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 11:10:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFA465E1F2
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 11:10:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EQZuV0Br;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E854B10E0A6;
	Tue,  9 Jun 2026 09:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B3E10E0A6;
 Tue,  9 Jun 2026 09:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780996208; x=1812532208;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=aaStSoL1SlRGiP4FYircIFJuQPpSe/8O2xZHGy/aeZc=;
 b=EQZuV0BrCctbT3/7hLR/TxtXKTvFP/UQCRgsD4VOHu9PW97bLQxjki07
 fwsFq201xKkd6LEqiI0cX3NUXdOCBuJ3EJIG3M7FiLJ6FcyJc2JJQTwAa
 uISW5GvSt9vRJyaVk9W0sQ+sWNw8NQ3r64/VDxyyVrny+DkIhSU2KFMwZ
 dmiC0FD3wi8Qk60GTKElPup6Lt7shfwlSRAS0cChVk/T+ag0szHiYG9d6
 UtnfuOj/3yzXl6iLW7MaPpd0N+vcEJpCFd2Sv5goCTQGqC/TyslNZi1rT
 pf5A5RWQRJEARe4zC+y5YXsCOku3vBhdm+osHFx6z7Vpn+P0R1QweHFD2 g==;
X-CSE-ConnectionGUID: Tj1WrAfASy60g29Iy1yqTA==
X-CSE-MsgGUID: 65kNAYmPRM+PEIkqBGbcuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="92426525"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="92426525"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 02:10:08 -0700
X-CSE-ConnectionGUID: 6Rn0WGDrTSiF1GgHpPmoIQ==
X-CSE-MsgGUID: mLdvYHmqT72b2UTajX9iUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="243364858"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 02:10:08 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 02:10:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 02:10:07 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 02:10:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UBgq2z4VABwfIeslVyxkUfKGVOfkRXgqulZtX/1iQ9cQXq8Zx9xYUxGKLtq70sbeE2DAyapGuSheji7jerCZJQad9zuZciqz4RuqOvrLCpcNK9PDhBvHuzzP/UeLDmwy7C/CU29TM4sHpoqh1AxFGp19XiH7ED+XqK2eX9AWriTqKcPX/I7CI5xt+vxoJgCyIxo2btFA/RN67pfEgNHi2UvU2r4RDEtCTRLIbKEQvDwiYP9DbU9r6T2saXF8C4dawH1yXn8Ucg1tBj5vufayPEbia1YnVA0NAc44xwN/seStHB+b52L2fZlWWqmZtYHsXMsJru6wDR6LTLqP+YkH/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aaStSoL1SlRGiP4FYircIFJuQPpSe/8O2xZHGy/aeZc=;
 b=RlafsdDvoanoc9H+OIJlhklk/3QM5OCoFdbBUod1BZSrfewNqtuBIJAAR1YXJ4kIWsTj5Y3OV/5AD7vbLLq58pFOEQKaxXmgIM0YwaC2zsM6w2Zjm79X7zBHVBmhK8Y50A8nBEqIK9lfqvajSgAXkkDv28X3zu09sSN8c4Va4OF5agNYSU249AQKqedp9LxCAFLazAXPrE3u5/3fQBKlCJnHn5FLT3uHBqGiIVjVEINtkVEhGj+cnq81dIW3y3F/s75O1nJ/wDHDy/onlJiPA28hu0IeNewCBfukokkeByFH0t7BBPG5doghH169F4YdYaJBPmqZGVGOwz4serrPaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS7PR11MB7952.namprd11.prod.outlook.com
 (2603:10b6:8:eb::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Tue, 9 Jun 2026
 09:10:04 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 09:10:04 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state compare
 on LT PHY
Thread-Topic: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state
 compare on LT PHY
Thread-Index: AQHc90pBcgi3ql4Wx0S5t5CdcuLsmrY12HoAgAACbACAAANtwIAACEMAgAAHBlA=
Date: Tue, 9 Jun 2026 09:10:04 +0000
Message-ID: <DS4PPF69154114FDE8A2D0F6CF1A553F281EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260608132505.1849158-1-mika.kahola@intel.com>
 <DS4PPFE901A304F9D8A3F2373EB7BBB7209E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPFE901A304F5E4F3186111A73F0683BE31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPF69154114F8FE08735C1DE5F963D09EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
 <DS4PPFE901A304FD17DE37147850239D7F9E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPFE901A304FD17DE37147850239D7F9E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS7PR11MB7952:EE_
x-ms-office365-filtering-correlation-id: ea97a7b7-2787-481b-8fd7-08dec606e49e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|56012099006|4143699003|11063799006|6133799003|18002099003|22082099003;
x-microsoft-antispam-message-info: +qsS7+/JAoVS/4Njd5MWD5Mr2Y2wA3jfMgdXc0MZCECPV8QQrVskLd5w/m5iH2InjlqbCoOWGmru0i1r2LmqMzz7WmwM9sLatZ3iJY5sb3nXaeZ5PK/dkmuMhs5EHx8ETndQg1hWu/d9LnPEFaOvALhL/5JxZoM2+asrMxUXEFJnMbhOnuktu/gmhIk8B0xOx6lQvuXk7Y96M6xGib79ogEeKYxB6JGsyuYe/MDGfTVE8cS7HR/i4Eu9VwSUTvC7wU3a+/YuEIgqQlz0fBtLonQfekta1uG+UAMxVE7gknmvuHMYFZgicqY69sFuzg6WX9U6EFKtpSJBD8yztxK9DHX3v5MkI7+Jww8Im8ruZJ4G+W6ASujvSebnDstTqbPaMS1JJfvHQO4uXGstneGGxyy4U4A9E5N+b/7s5kv0FycPzzazdseIQhmuiP8fmw2wqDWz2e4UVg2a+LNXhXdoBzK/9u7iaKaAKk8qSqe+N3I2NYOUNWuq7dOFprwpbbIBeZCXH8QE7GMvB99t5P8+vCopapFXtOyIKoNLYhzDLl9dAd5XJQQ0qpny7q1iODlZ7waRZ9+USCjq2E4qecLoux/QeVWSt/7fPsU7CalNOkp5sREhS3pXiJ0YiXD5oRN16kIkXHzOWxAJT3YkeTGl7icNuhGtVBPPy14FI5r4mwzmx9/eZObsnOdQoP+HlTdbPCNraN6qQb7Na8qA9Ibfe++PLma2CwqYZDVXxRHlXKlJkuzyJcyaq5URYpXtA8Ey
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(56012099006)(4143699003)(11063799006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dExkSlBZc2RFZFc5bWlGK2VEU3loK0Y1dk84SG12TVdrOXJvQWZZT0Z4OTRy?=
 =?utf-8?B?ZFVLSEJhVlg5QWRHanFYdjVrTTI5TnUrVVJwS2VrS0p2VE81THZocmltSkNo?=
 =?utf-8?B?VDd4VXk2N3diNDMwb0xVa0dFUThqNlVhRzVHcEJRY2RBN0tOR1JTSkNDM1Z3?=
 =?utf-8?B?cW9MbjJtUDgrcElJV0kwVi92eGFUdVNTRDFlK2NhazFVb3VXa2Y1SFB1TFc3?=
 =?utf-8?B?VFRGWnRPbDVRUk5HZGFXMnl6Mm9Ldmw4aE0zTm9HeU1EQmgrWVIweWtlSlo4?=
 =?utf-8?B?d3U4UlZhMStsSnlNR2UwUWVsNndqM2dncjlsb2Q3V1U3Z1E1VWd6RHoxQWRC?=
 =?utf-8?B?cVJVZFdMZ0UweTZyNUFYcUE1aWNldXY4bW1STlpCWHdnL1U4OVNrdVpRTnhj?=
 =?utf-8?B?YWpWV3lyQit5T2JTVFpCNGdMdE55VlRYVUdnVGFHditXOWhxcjZWV0h4VUdN?=
 =?utf-8?B?djBNZ2NTRFcrUnpMbTJWdkdudGtFbEszQnEzVXN3b3ppRzk1MWYwM3lJZ2Z2?=
 =?utf-8?B?ZDh1dksySStvMXNGQURwVldwdm96a2RDdmNQWkt3YlR5VC9OU1JSN1Jqdmg5?=
 =?utf-8?B?ZC9GZTF3RElnYUFQZDZtdDk0RlBnazZPTmEvR2dIV0RHTjZIOFhzS1lOT1dm?=
 =?utf-8?B?TVFOUEdmZTVYcE5XcitHdC9hNTNlYVE1UXpQc3JraGllWXZLNmx4aTE3WE1O?=
 =?utf-8?B?ZTdpbDNGUzZmcURtNFB5V1Q1bGl6a0JLclRQYzc0MlBWeTFHS1RTTk1LZEhK?=
 =?utf-8?B?aTlhYmZYU25heTZHN0x6Mi9OTlI4WVd1aEpVTGozUm43RlEzMFVMQVcrVUNH?=
 =?utf-8?B?OTJHdFN4T0Z1WDVjY3gyU2w0Wi8vR0c2YmQxaWExYXBSS2k1Z0U0S09BclZW?=
 =?utf-8?B?dDNWMkJXNWcwNW5Ec2NNTzIyR2xuSUdtckMwQ2ovWXhOUnBMYUlCQTdoa0Nl?=
 =?utf-8?B?UUlXVlVHWWlBQU5BMW1lRmh0WTRGTWQvWlZ5UVRKRzR5LzFBYW51UGMxcHBE?=
 =?utf-8?B?QjhNSytsVnRnMWs1TTRVUjVyS3c5Z0R2QXlaRFVzSDZjVHFqUDlzelNXTjRD?=
 =?utf-8?B?R29tSG10RnU1N0xqZkdUWk1VNXNmOWV4YjFHM3djQmtpblRrUVV6eVRVQ29L?=
 =?utf-8?B?ZGhJOXNsOEQ4SDl2WTUvZVEzaTR2SnZoQlVhWEdxdml4RXAwL1ExWVpOdHZH?=
 =?utf-8?B?TXFwQmd2Yjg5VFlwV2lDbVhwakpkeEw1RTJVd25WYVVsMWZhQWNwZVA0bGhj?=
 =?utf-8?B?MmNlQ0QxTzRwUnFCR1RjcmpkOERnd0xFS20zWHA1TjhEOTFFY0Y3c3EvdmxU?=
 =?utf-8?B?VkFIcUgzUCtaWU1oMVBaVDlGc1hhOVRTUU5hZWdRYWcxNENYSm55b0hldnNM?=
 =?utf-8?B?VlFiM3MyZTlXWjJ5N1AyYWVXWkVjSlNuRE1HaGVWSURKZDI5UTgxMllDWXJx?=
 =?utf-8?B?T290aXorMEhDeis1SW9Ea1ZGWDFMc0hsWG1YNG01N2hFakhPN3pSRTVOTGNl?=
 =?utf-8?B?aDVPVHVBNzVVV3BsaVZSSlYyVDJzek5DVU5qODI1bG1VSTh5U1ZPMXJyVDFM?=
 =?utf-8?B?cjlTU2tzY29QajMweFBkWDB6RUUvSGpoeE0yQVlUM2thODMzVktzZi9uTkhX?=
 =?utf-8?B?L1RPNVBTd1NHNkF3S3NBMDg5TytHVlJhTFltcHRNUWYxUG50MWphZVNXSk5x?=
 =?utf-8?B?cEFMZVhweW5sazRWYWJKbm9wS0hHZ3BDd0ZpTTMya01aNFU4ZnFZajRQbi9B?=
 =?utf-8?B?TUdrTndxc2xFdWhJSzNSOG5zZTBiNHJGYUNoMWdLbm9Hb1p4Qy9pTnFRdlJC?=
 =?utf-8?B?ZHNxUURMSjJnT01Nd0sxd3NjRndKaUZKVmhZaVV5QmhmS2NZZDg1TUhoc3FW?=
 =?utf-8?B?TnRhY25HeThLSEpIRnJ6U2R6K2Z6RW9ZMGl1NlNodzgxQW1udUs4cHMraVQ4?=
 =?utf-8?B?TjNxVHJmYTU2R1VLM2hvTzF3ZCt4S1FwK3hsQ2h6OGNTaDJkWUZpV1ZuUWhj?=
 =?utf-8?B?Y3RQSldnSGFicTV2bVFXOVlZNmFtdldpQ1gxb0xob01iWGZsZjNsSXZEOVZU?=
 =?utf-8?B?NU0zbG05QnVkNU5rVmlBSWxXRDlIZzJVMzh3R1BuR2FZNnZNNUFRbElTUTc1?=
 =?utf-8?B?YnVhSm5ueHo0MkVOdXIwVGd2Q2lEOFkrV3BIbmNUOEhVMlVNNTl1ZmtidkZM?=
 =?utf-8?B?RDFla2RsNXVVSEpnZ3RjeXpxTzM4ZENtOWlVSld0ZWlJeThFeXpaQ2JGNjJt?=
 =?utf-8?B?RHhjREx2TTVMRXBwbVRUd1NQRHN3T1oyZncvNE1sY1JkeFh3TWdpbVZmUGxo?=
 =?utf-8?B?SHJUQWpkT3NtUFN3T2Y3SkoveWVseDFXSW1GRS84WUw2Y2VxWS9ZQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UzjU5YXAPRfYlfidbSG3X+k55qKUXXXQ2tfQ8CHxi2Adqy+rIzs7Tznqrx9tkILk3cojT0mFFCQaCj3pgjCdphbl931MO8HaAl99TMuz4FHjmjG96Fdg44dopZb2sAMnqVJxu4dlDvhlyTEscx9+CvqT6fJYrxYxR/AiCLDqOVC6jWteB9LGRJc3bDJ+L7GzRnID/qjtSuN+TTBHoPFUDoxZuajqwrUcgaGSF27yB/a7fkUOzR7cIXSSXs6jjb1GkkBVJ6LOaH3/j6eiK6LCLFIe8Nt+U3t4jr/WVqk11aOrNrAag+jdz4JLK8hFh7DO3AnexbtYaiZv9pB14AG2rw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea97a7b7-2787-481b-8fd7-08dec606e49e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2026 09:10:04.0716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vv5pSy7pXtnv7GNQOboGyktKHmKIntQvA89Lg+TcoV8xExlrHuCYTDsMwDk2a/V/r919Dcmfr7ZoBfxYJ74n2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7952
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
X-Rspamd-Action: no action
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FFA465E1F2

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIDkgSnVuZSAyMDI2IDExLjMz
DQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBT
dWJqZWN0OiBSRTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZSBk
cGxsX2h3X3N0YXRlIGNvbXBhcmUgb24gTFQgUEhZDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCj4gPiBTZW50OiBUdWVzZGF5LCBKdW5lIDksIDIwMjYgMTozOCBQTQ0KPiA+IFRv
OiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPiBn
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gPiBTdWJqZWN0OiBSRTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMg
cGlwZSBkcGxsX2h3X3N0YXRlDQo+ID4gY29tcGFyZSBvbiBMVCBQSFkNCj4gPg0KPiA+ID4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IEthbmRwYWwsIFN1cmFqIDxzdXJh
ai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiA+IFNlbnQ6IFR1ZXNkYXksIDkgSnVuZSAyMDI2IDEw
LjUxDQo+ID4gPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ow0KPiA+
ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+ID4gPiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQo+ID4gPiBTdWJqZWN0OiBSRTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVy
aWMgcGlwZSBkcGxsX2h3X3N0YXRlDQo+ID4gPiBjb21wYXJlIG9uIExUIFBIWQ0KPiA+ID4NCj4g
PiA+DQo+ID4gPg0KPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gPiBG
cm9tOiBLYW5kcGFsLCBTdXJhag0KPiA+ID4gPiBTZW50OiBUdWVzZGF5LCBKdW5lIDksIDIwMjYg
MToxMyBQTQ0KPiA+ID4gPiBUbzogJ01pa2EgS2Fob2xhJyA8bWlrYS5rYWhvbGFAaW50ZWwuY29t
PjsNCj4gPiA+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiA+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCj4gPiA+ID4gU3ViamVjdDogUkU6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxh
eTogU2tpcCBnZW5lcmljIHBpcGUNCj4gPiA+ID4gZHBsbF9od19zdGF0ZSBjb21wYXJlIG9uIExU
IFBIWQ0KPiA+ID4gPg0KPiA+ID4gPiA+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxh
eTogU2tpcCBnZW5lcmljIHBpcGUgZHBsbF9od19zdGF0ZQ0KPiA+ID4gPiA+IGNvbXBhcmUgb24g
TFQgUEhZDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBMVCBQSFkgUExMIHJlYWRvdXQgaXMgb25seSBw
YXJ0aWFsbHkgcmVsaWFibGUsIGFuZCB0aGUgTFQgUEhZIGNvZGUNCj4gPiA+ID4gPiBhbHJlYWR5
IGRvY3VtZW50cyB0aGF0IG9ubHkgYSBzdWJzZXQgb2YgdGhlIHN0YXRlIGNhbiBiZSByZWFkIGJh
Y2sNCj4gPiA+ID4gPiByZWxpYWJseSBhZnRlciBwb3dlciBnYXRpbmcuDQo+ID4gPiA+ID4NCj4g
PiA+ID4gPiBUaGUgZ2VuZXJpYyBwaXBlLXN0YXRlIHZlcmlmaWNhdGlvbiBjb21wYXJlcyBkcGxs
X2h3X3N0YXRlIGFzIHBhcnQNCj4gPiA+ID4gPiBvZiBpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJl
KCksIHdoaWNoIGNhbiB0cmlnZ2VyIGZhbHNlLXBvc2l0aXZlDQo+ID4gPiA+ID4gInBpcGUgc3Rh
dGUgZG9lc24ndCBtYXRjaCEiIHdhcm5pbmdzIG9uIExUIFBIWSBwbGF0Zm9ybXMuDQo+ID4gPiA+
ID4gRFBMTC1zcGVjaWZpYyB2ZXJpZmljYXRpb24gYWxyZWFkeSBleGlzdHMgdmlhIGludGVsX2Rw
bGxfc3RhdGVfdmVyaWZ5KCkuDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBTa2lwIHRoZSBnZW5lcmlj
IGRwbGxfaHdfc3RhdGUgcGlwZS1zdGF0ZSBjb21wYXJlIG9uIExUIFBIWQ0KPiA+ID4gPiA+IHBs
YXRmb3JtcyBhbmQgcmVseSBvbiB0aGUgZGVkaWNhdGVkIERQTEwgdmVyaWZpY2F0aW9uIHBhdGgg
aW5zdGVhZC4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xh
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOCArKysrKystLQ0KPiA+
ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0K
PiA+ID4gPiA+DQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gPiA+IGluZGV4IDJmYTEwZjg1ODI3OS4uODVh
ZDJiYzQ5NjNkIDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4gPiBAQCAtNTM3NCw4ICs1Mzc0LDEy
IEBAIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoY29uc3Qgc3RydWN0DQo+ID4gPiA+ID4gaW50
ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsDQo+ID4gPiA+ID4gIAlpZiAoZGlzcGxheS0+
ZHBsbC5tZ3IpDQo+ID4gPiA+ID4gIAkJUElQRV9DT05GX0NIRUNLX1AoaW50ZWxfZHBsbCk7DQo+
ID4gPiA+ID4NCj4gPiA+ID4gPiAtCS8qIEZJWE1FIGNvbnZlcnQgZXZlcnl0aGluZyBvdmVyIHRo
ZSBkcGxsX21nciAqLw0KPiA+ID4gPiA+IC0JaWYgKGRpc3BsYXktPmRwbGwubWdyIHx8IEhBU19H
TUNIKGRpc3BsYXkpKQ0KPiA+ID4gPiA+ICsJLyoNCj4gPiA+ID4gPiArCSAqIExUIFBIWSBQTEwg
cmVhZG91dCBpcyBvbmx5IHBhcnRpYWxseSByZWxpYWJsZSBhbmQgdGhlIFBMTCBzdGF0ZQ0KPiA+
ID4gPiA+ICsJICogaXMgYWxyZWFkeSB2ZXJpZmllZCB2aWEgaW50ZWxfZHBsbF9zdGF0ZV92ZXJp
ZnkoKS4gQXZvaWQgZmFsc2UNCj4gPiA+ID4gPiArCSAqIHBvc2l0aXZlcyBmcm9tIHRoZSBnZW5l
cmljIHBpcGUgc3RhdGUgY29tcGFyaXNvbi4NCj4gPiA+ID4gPiArCSAqLw0KPiA+ID4gPiA+ICsJ
aWYgKChkaXNwbGF5LT5kcGxsLm1nciB8fCBIQVNfR01DSChkaXNwbGF5KSkgJiYuDQo+ID4gPiA+
ID4gIUhBU19MVF9QSFkoZGlzcGxheSkpDQo+ID4gPiA+ID4gIAkJUElQRV9DT05GX0NIRUNLX1BM
TChkcGxsX2h3X3N0YXRlKTsNCj4gPiA+ID4NCj4gPiA+ID4gaW50ZWxfbHRfcGh5X3BsbF9jb21w
YXJlX2h3X3N0YXRlIG9ubHkgY2hlY2tzIHRoZSByZWxpYWJsZSBzdGF0ZQ0KPiA+ID4gPiBoZW5j
ZSB3ZSBkb27igJl0IHdhbnQgdG8gYWRkIHRoaXMgaGVyZSBjb25maWcgMCBhbmQgY29uZmlnIDIg
YXJlDQo+ID4gPiA+IGV4cGVjdGVkIHRvIGJlIHJlbGlhYmxlDQo+ID4gPiA+DQo+ID4gPg0KPiA+
ID4gSWYgeW91IGFyZSBzZWVpbmcgcGlwZSBzdGF0ZSBtaXNtYXRjaCBvbiBlaXRoZXIgb2YgdGhl
c2UgVkRSIHJlZ2lzdGVycw0KPiA+ID4gdGhlbiBpdOKAmXMgYSBpc3N1ZSB3aGVyZSBQSFkgaXMg
bm90IGdpdmluZyB1c2UgY29ycmVjdCB2YWx1ZSBzaW5jZSB0aGVzZSB0d28NCj4gPiByZWdpc3Rl
ciBtdXN0IGFic29sdXRlbHkgYmUgcmV0YWluZWQgYnkgTFQgUEhZLg0KPiA+DQo+ID4gVGhpcyBl
cnJvciBzaG93ZWQgdXAgd2l0aCBUQlQgbW9uaXRvciB3aGljaCB5aWVsZHMgZW1wdHkgc3RhdGVz
IGZvciBmb3VuZA0KPiA+IGFuZCBleHBlY3RlZCBzdGF0ZXMuIFNpbmNlIHdlIGNoZWNrIGluIHZl
cmlmeV9zaW5nbGVfZHBsbF9zdGF0ZSgpIGZ1bmN0aW9uIFBMTA0KPiA+IHN0YXRlIHdpdGggLmNv
bXBhcmVfaHdfc3RhdGUgaG9vayBJIHRoaW5rIHdlIHdvdWxkbid0IG5lZWQgdG8gY2hlY2sgdGhl
IFBMTA0KPiA+IHN0YXRlIGhlcmUuDQo+IA0KPiBTbyAuY29tcGFyZV9od19zdGF0ZSB3b3VsZCBj
YWxsIGludGVsX2x0X3BoeV9wbGxfY29tcGFyZV9od19zdGF0ZQ0KPiBXaGljaCBtZWFucyBmb3Ig
dGJ0IG1vZGUgaXQgd291bGQgcmV0dXJuIGVhcmx5IGFueXdheXMuIFNvIHdlIGFnYWluIHdvbnQg
cmVxdWlyZSB0aGlzIGNoZWNrLg0KPiANCj4gV2UgYWxyZWFkeSBoYXZlIHRoaXMgYml0IG9mIGNv
ZGUgYXMgSSBtZW50aW9uZWQgYWJvdmUgaW4gdGhlIGZ1bmN0aW9uDQo+IA0KPiBpZiAoYS0+dGJ0
X21vZGUgfHwgYi0+dGJ0X21vZGUpDQo+ICAgICAgICAgICAgICAgICByZXR1cm4gdHJ1ZTsNCj4g
DQpJdCBsb29rcyBsaWtlIHdlIG1heSBiZSB2ZXJpZnlpbmcgUExMIHN0YXRlIHR3aWNlIGluIGlu
dGVsX21vZGVzZXRfdmVyaWZ5X2NydGMoKS4NCg0KdmVyaWZ5X2NydGNfc3RhdGUoKSAtPiBpbnRl
bF9waXBlX2NvbmZpZ19jb21wYXJlKCkgZG9lcyBQSVBFX0NPTkZfQ0hFQ0tfUExMKGRwbGxfaHdf
c3RhdGUpLCB3aGljaCBpcyBhIGdlbmVyaWMgY29tcGFyZSBhbmQgZG9lcyBub3Qgc2VlbSB0byBh
Y2NvdW50IGZvciB0aGUgTFQgUEhZL1RCVCBzcGVjaWFsIGNhc2UuDQoNCkFmdGVyIHRoYXQsIGlu
dGVsX21vZGVzZXRfdmVyaWZ5X2NydGMoKSBhbHNvIGNhbGxzIGludGVsX2RwbGxfc3RhdGVfdmVy
aWZ5KCksIHdoaWNoIGZvciBMVCBQSFkgZ29lcyB0aHJvdWdoIHRoZSAuY29tcGFyZV9od19zdGF0
ZSBob29rIGFuZCB0aGVyZWZvcmUgYWxyZWFkeSBhcHBsaWVzIHRoZSBwbGF0Zm9ybS1zcGVjaWZp
YyBoYW5kbGluZy4NCg0KQmVjYXVzZSBvZiB0aGF0LCBJIHdvbmRlciBpZiB0aGUgZ2VuZXJpYyBQ
TEwgc3RhdGUgY29tcGFyZSBpcyByZWFsbHkgbmVlZGVkIGluIHRoaXMgY2FzZS4gQXQgdGhlIHZl
cnkgbGVhc3QsIGl0IHdvdWxkIHNlZW0gdGhhdCBQSVBFX0NPTkZfQ0hFQ0tfUExMKCkgc2hvdWxk
IGFsc28gaGFuZGxlIHRoZSBUQlQgY2FzZSBleHBsaWNpdGx5IGFuZCByZXR1cm4gZWFybHkgaW4g
dGhhdCBjYXNlLCBpbiB0aGUgc2FtZSB3YXkgYXMgdGhlIExUIFBIWS1zcGVjaWZpYyAuY29tcGFy
ZV9od19zdGF0ZSBwYXRoIGRvZXMuDQoNCi1NaWthLQ0KDQo+IFJlZ2FyZHMsDQo+IFN1cmFqIEth
bmRwYWwNCj4gDQo+ID4NCj4gPiAtTWlrYS0NCj4gPg0KPiA+ID4NCj4gPiA+IFJlZ2FyZHMsDQo+
ID4gPiBTdXJhaiBLYW5kcGFsDQo+ID4gPg0KPiA+ID4gPiBSZWdhcmRzLA0KPiA+ID4gPiBTdXJh
aiBLYW5kcGFsDQo+ID4gPiA+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAgCVBJUEVfQ09ORl9DSEVD
S19YKGRzaV9wbGwuY3RybCk7DQo+ID4gPiA+ID4gLS0NCj4gPiA+ID4gPiAyLjQzLjANCg0K

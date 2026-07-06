Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l0OfBmlHS2o+OgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 08:12:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D8E70CCE6
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 08:12:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SQ9ALTtU;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCA510E757;
	Mon,  6 Jul 2026 06:12:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D5010E2E1;
 Mon,  6 Jul 2026 06:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783318372; x=1814854372;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kuFBI2P1oIXyQZrJmRJZxeqlLqE8vm6whq2rOxYa/Iw=;
 b=SQ9ALTtUbPYZBIR1n/g8nGLv3PjTCMlxJn4V+brkpIiLEIZcLw28N//t
 nkeZpb/81OslV3QPlP5XZfSpwuBQh4JIKF4rmsdRW1O3FxmdDAJS3CiW0
 tE6T0tRx1pIRLMlvRY0pFb0y+6wAuRH+/4e+JChM76Ntz5787wbPa2Wjr
 x8slP4iXgy1Rwi9WTSa8cpWY2kk74f8076q2lxfat+Rp7+XxN9kaYUqsH
 FW3i+e99rDv8I2qR7Kgm+BBF2O1EFu3IRzIQjiNwl3d3kqbMb074WhQqh
 Z4Yo3Ngjar3sCg//jfDd/Ruoh4bsbbUJLibN6eKMOJ3CoRJBMP3krvALt g==;
X-CSE-ConnectionGUID: 44X0Yx29QOammz3PUhZpZQ==
X-CSE-MsgGUID: 7JPBXKVDTrKqBpBj4SyyxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="95320400"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="95320400"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2026 23:12:51 -0700
X-CSE-ConnectionGUID: x5/tPiDlRLuCPoyNJmCQCw==
X-CSE-MsgGUID: YwbBpzaQRaqunQoRQpEzBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="250950621"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2026 23:12:51 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 5 Jul 2026 23:12:51 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Sun, 5 Jul 2026 23:12:50 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.18) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 5 Jul 2026 23:12:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rg14/g9lYkoJe4fZzNvEjkMDF+Es5Qi1SNnOIhqVkkXQNfDcGnNZxmMe4Hty+xoNj8MkWhsnDwi8BnKV0BYW11L04PT7heztHceTOOYjAqB0Y1ffFeFbRK1mmKzby7vE+dvpEk54cG4CZxZ255m4lcUpEM61MsvgBYd2ncVodjQlGCr8lr/7lFd3mOZX+iURLS0IW3vVWgOXoQAe/ECc2UQYI/ke7AI/0Dd175tLz+hRtp4jBv/u1DVa9iNdO7MDpNxjr7XISYIFlFzx9b2lR5TaSzRk2RV2qPwMXSmGGXVZVlI+SXBvcmbGJ4gmfbicnraQcb2eNnV6rNo6fHZ4Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kuFBI2P1oIXyQZrJmRJZxeqlLqE8vm6whq2rOxYa/Iw=;
 b=IFWdRGmDSklbP+b7fWPsjMfWk3UeuJBpC4cuxwU88cwtIlXBWlD6TDbX/Nj9dFpFeKoqBmmjvxFuoUQcSZ+5pYoD6hC77BJeSa34lulPTrkhgfjwiZHF/nh6emBTsxmX2EbYG3WfCou8qgBDL2sB6bmsJFCN8KwR1IQSScik+LisSLvmuvLA9QJ5wQqxWKAwog0ESGn2LHvO3KK1uM9kXQ6KB6uE3c3D1kYj0Z4tDA3d/H6AMhKlqohDPIXNR5atAR1kFyTVB0QIUSenZEARZxlFPqM/0E+OO8OFNs5mYvhz6TZimkDAdkHj6v/uz8vlMMklx2IQZDAVoFODjep5bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DM3PPF9C026D2C1.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f3e) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Mon, 6 Jul
 2026 06:12:41 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Mon, 6 Jul 2026
 06:12:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v10 5/8] drm/i915/buf_trans: add vfunc for VS/PE-O
Thread-Topic: [PATCH v10 5/8] drm/i915/buf_trans: add vfunc for VS/PE-O
Thread-Index: AQHdClTbqRF7BqnhckWocoIhC6yeurZgCB0w
Date: Mon, 6 Jul 2026 06:12:41 +0000
Message-ID: <DS4PPFE901A304F7B56137C6F27730D0500E3F12@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260702185839.4042397-1-michal.grzelak@intel.com>
 <20260702185839.4042397-6-michal.grzelak@intel.com>
In-Reply-To: <20260702185839.4042397-6-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DM3PPF9C026D2C1:EE_
x-ms-office365-filtering-correlation-id: 18c67f81-22b7-47fa-bbbf-08dedb25966f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|376014|11063799006|3023799007|56012099006|18002099003|4143699003|22082099003|38070700021;
x-microsoft-antispam-message-info: yZ8FUl0YP7+aWzG/jEq8XbIRRFjBxuoPfbTiC/pON1ZMoU4OwLktWUHVtXiDWzta+PfZTFtxC6ad3zcg1lo3UsXWgYztxqe7qr3QDbR75qudTE0v3ksI5NNBgr8cK6mrT9q4yCiHodrUmVn/bELRPXhLMuQk7Gai1+bkHzjWc7K6vHZ0zErpYICDXBtyu6wDikifpP/DxYyRXpLUyKlRZFwokkZaa6fqv9dHDImUZdvd7BSmtOQ1Vc64JOlKd3JYpCSUXq1KJHgTVnnS+2J/6XPiuBxWD4mHsjfQhwwqN0425FZr+ByaFzxRmC+AKlpRFGFKIW4Xlb+Xc5nS79c/lEnQ2f/Ffca9drmf6NiTQU1khtJQXkEklsRMh3/wjFZ6nc6hNgN2uc3Kc121ywxYRUwZL516h0mq5oYCRsQvY6doc9Hd3scGMrDe9yXbMoQcSRJmRl7jvlC7mwai2L9FZP9lRHth12nRJ3KJw5SgtZvZN45HVTdCro+NsLKnYlifBuXWt1GAbrBhAFNxgHqg2G6OXLmVzpmGEqKG8x+8PJX5JyPGR2B2aG5IG0Et01mYbAa6vOQWbtDNIQSj0wg+F5qk2kMfS7zMb470n76flPrEZ32xgTv2vIMlnH8opK+L74wfH4lplE03E8ATuui5/lDKCnaKSQMbsIiXyjtjtbmxFMvCEnCwk0Y+qCEUONpAaQVSPPOM2LhhLBFQv4VCPGcNXp1lS8vcIBivy0Cp0ww=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(11063799006)(3023799007)(56012099006)(18002099003)(4143699003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SzlOby95czdtRjk1VUoyeVM2LzhJb1ZNZjh6Y082KzdYQ3EzNVNKcFM5Wml6?=
 =?utf-8?B?N2g3NTd4bm5PUXUzM1VBeHpSd3BOTWxUUjNqK0dVTHhKcE51ZmF4MFNhZHBi?=
 =?utf-8?B?NmpVWHVMKzVTcjc3UGpMbmhQOUVpQVhUaU8yc3dvK2tnamdJczczVzA3VWNU?=
 =?utf-8?B?Qlp0WU5TbDMvVzMvU1NLU3hTejRuL1FaZDh3S1dTblRieUluOWxiUGNmS0FO?=
 =?utf-8?B?TFc3Y2lUNjYvNkVFVER3cEFCRTUxNDRUVVRRVTBkQjlTZHVSNW5Yd3Z3TGtO?=
 =?utf-8?B?ZXB5ekhkaEFlRWlJOWpvUkJuUjRKb3VBNmZXNjhMNk5VZmI1M1kxaE1uTFY1?=
 =?utf-8?B?WTlpd0R5Vjk5S2s0OFJFOEw0TlpZN1dJL1Q2T09LSjljUVFyMmIxNzRsKzRt?=
 =?utf-8?B?UUlRUGdLM2piaWFxb3FmVFZNSEErcVNTR3JWb0VkM290NExLMCtjUFRna0Mx?=
 =?utf-8?B?SUF2YVZhdWI1ZGVMZ09rcTBndkhYaDRueDI2aFhMTk5sK1pKTXhaUUZBSitr?=
 =?utf-8?B?L1ZWVG9hVzRua1RzRExYRG1UVWhQa0tUSkNhZ2hPL3dqNld5dTVYMk1VZ3pD?=
 =?utf-8?B?ckRodkhWREJvbktEUTFnditzVDduZGhBYm9xcWg1WEFFelRjejZkcklRd252?=
 =?utf-8?B?TUtJcGJ5bDU1WWFkTFhjcVNFRWwrbFdXWXNLMDZ4bEQ4REplRWdUaUZJVlRx?=
 =?utf-8?B?SU85QzVOKzVBR3k4aTlweDhLQ2FlRm1FaW1obzJreUpmb1VzOGdvU21zSVFh?=
 =?utf-8?B?dnRJa0VMTHFqRFFFcU41cEJVcHBTc3d6OHpSRnNvdkkzZkVhVk1xclNQM1lr?=
 =?utf-8?B?UDNIWXRmZFQyMHp3cC9PMUpaWmgxeENBYVA1YmhEdllwVldPY2VEWW03bU1H?=
 =?utf-8?B?cjZaRzM1cVFJVDBqOUJRYm9kNnFDVEtLWHcxb2lhRUNYT1VKaEhtMTVMVVlt?=
 =?utf-8?B?NklNeGNrdW5TSEoxcnQ1N0F5ZGxMUWwxY0VqVis1Qzl1N2xqSzQ2d0xJMXVz?=
 =?utf-8?B?eXpubGY1U2NLZ0dMSVo1N0tDRHpvcnZMUHFaa1IyTUNreFFvU1dyaGZ2eTJp?=
 =?utf-8?B?bFAyRkNRRzAycHlqR2Q1ZWt4cGxGRmlsWnpvNnRIL0pJYlk4RUNrVVdjK0Fr?=
 =?utf-8?B?UVhvOTRDb21yUDU0VG1uK1EyR3lsQ3BFU1g1dEVRcFFha1ZhdUpvaUVSdytt?=
 =?utf-8?B?aWFiMFF0V0tjQitZdlZrQUNWb1dTM0JPMFZxbm5MbkRnc1BhZ0huSlhIMFZY?=
 =?utf-8?B?d3UrNGNMSWxVWFR4eUx6a1c5L1RWc055R0RNN21YQVZvSVgrN09QNjBqaDE5?=
 =?utf-8?B?OGNsWStFUlZLbVU0ZWZUSHpZemllVU05RlU0VzZxOERjK2J0VTRRaitOTUNr?=
 =?utf-8?B?VUJYZXRxWVVjS2dxNVpCelZhMDV5SXdIaFFQTFBKQzloMExMN01TYm1qblZ5?=
 =?utf-8?B?ckY4UzFMaDJRNlVCTDJlbjk5SXNRaER0MGpCY3lJdks3Z2w1TlZtRW9RbGZy?=
 =?utf-8?B?TEVxeGozem5ibnZ1VThuNUxQWGpLV0o2bUMyZlZ0WS9pdmliYVp4MVBPUHFS?=
 =?utf-8?B?Q1YzL08vdk5wMzVicXl0d0JSYTNTWEFvNVc1UE9BV1NCNlljaUdWTTBpcjc5?=
 =?utf-8?B?TlRSbEZIazNIUWxHbUZ0SUMwbUwxUHhqcm00MjVaTEpoZ2l1b1k5RU9CajZJ?=
 =?utf-8?B?UGpqQzJ4VUdWd0xGSFhaeE81RlROOUlMRlVYK2UxYmlVZjNPVkx3Qy9rTklI?=
 =?utf-8?B?MG9nL1NwMXNEQnZDYkg3UzhjVVVoajJTRlJ1VlNtUVpDa3I5VTJDVEhWTGVj?=
 =?utf-8?B?QnRsL0p0alRyV3Jyc3UrRk9OYlJrb3Y1aXlYNWhIeVVtd3hlaWQydXM1NXYv?=
 =?utf-8?B?ZVdrZ0JLS1RvZEJXalVnbXlEblNJQXhtckFGaWdBQitPYk04T2l1emRkK2RM?=
 =?utf-8?B?R0YxNHF4UkN2cFp2cGlwdGVYYThpRVI2NUk2emRObzFpRmxnakdtd2N0OC9x?=
 =?utf-8?B?eWFOSUE4ZHowdTUyVU5vbTFLazBRR20wYVU4M2VZbHpvWTU2Z0Roa015Wkds?=
 =?utf-8?B?ZHB5bWV5MDZ3U0Q0ZU9jNGx6bFE4KzF6MTdCUlRWS1ZJeTBMQk1MLzNlU3ZN?=
 =?utf-8?B?dk9YWm1vWnQrait4YlFNRWkzZ0Rxd1NyMVRaR245ajFzcVBVR2YrK1BvZW9a?=
 =?utf-8?B?ejRzZ1I4TExTblAvZXc3aVF6SWlBeFZ2MG1zZ2lUekQyMDRNVXJON28rOGJM?=
 =?utf-8?B?RjJwOW5Xc0tON0svNjhERzVieUR6enR0eCtRYzNyblMrUURpSGQ0SEYrWDlG?=
 =?utf-8?B?QXdvR2t0eGxBd3RvaGxQRCszZGxPVmxHOXFVSmEwUmVwRGo1cXJsZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nZV6HCQCOrrWUbcjjnlTdp9B5zV9faBwQ5RwsRjRJ04csS6Ob2cUjX/wRzh7HkNs/79N5DDPAyNMEXLCw0O6eSnQPz70zTaiV0aH5iXlr1z/HHWY2gmR51uEhRrdg9DteqAPWlb3T3UMJxD/kRBkYyGqaR2DgiQGHe9EAaG3fHRAmIS/KOBSDGTnmavJfLp8XRxtsqAW47Ni3FkNras16Jh2VOR/0+H336ELvLVzBVTr2x0zyvaWhr7O87sslXUIy4/CfzAN9rZpMte8fgzab2JVj9+RzU0U94GWn4eatwPdbIwQjUkv3DQO2QxJC+uXeE+7mf9VvEkijtUVagXJBA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18c67f81-22b7-47fa-bbbf-08dedb25966f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2026 06:12:41.7323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: krlmtzLy7/uo++ron7VKN9lMf+xgV+fy2QK4HxxCJ1+F7qCsl8F27KdZ5Fu3473v01AcvNBwrSE7rmWAd7ceKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF9C026D2C1
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53D8E70CCE6

PiBTdWJqZWN0OiBbUEFUQ0ggdjEwIDUvOF0gZHJtL2k5MTUvYnVmX3RyYW5zOiBhZGQgdmZ1bmMg
Zm9yIFZTL1BFLU8NCj4gDQo+IENob29zaW5nIGNvcnJlY3QgdGFibGUgZm9yIFZzd2luZyAvIFBy
ZS1lbXBoYXNpcyBPdmVycmlkZSBpcyBwbGF0Zm9ybSBzcGVjaWZpYy4NCj4gSXQgYWxzbyByZXF1
aXJlcyBkaWZmZXJlbnQgY2hlY2tzIHRoYXQgYXJlIGFscmVhZHkgdXNlZCBmb3IgY2hvb3Npbmcg
cHJlZGVmaW5lZA0KPiB0YWJsZXMuDQo+IA0KPiBBZGQgbmV3IGdldF9idWZfdHJhbnNfb3ZlcnJp
ZGUoKSB2ZnVuYyBpbnRvIGludGVsX2VuY29kZXIgcmV0dXJuaW5nDQo+IGRlcGFyc2VkIHRhYmxl
IGZyb20gVkJUIzU3LiBJbiBuZXh0IHBhdGNoZXMsIHNldCBpdCBpbnNpZGUgYWxyZWFkeSBwcmVz
ZW50IGlmLQ0KPiBsYWRkZXIgZnJvbSBpbnRlbF9kZGlfYnVmX3RyYW5zX2luaXQoKSBpbnN0ZWFk
IG9mIGR1cGxpY2F0aW5nIGl0Lg0KPiANCj4gTm90ZSB0aGF0IGdldF9idWZfdHJhbnMoKSBjYW5u
b3QgYmUgb3ZlcndyaXR0ZW4gc2luY2UgdGhlcmUgYXJlIGNhc2VzIHdoZW4gd2UNCj4gbmVlZCB0
byByb2xsYmFjayBhbHRob3VnaCBWUy9QRS1PIHdhcyByZXF1ZXN0ZWQsIGVnLiBEUCBpcyBub3Qg
Y29ubmVjdGVkIG9yDQo+IGZlYXR1cmUgaXMgbm90IHlldCBpbXBsZW1lbnRlZCBmb3IgdGhlIHBs
YXRmb3JtLiBBc3N1bWUgdGhhdCB2ZnVuYyByZXR1cm5zDQo+IE5VTEwgb24gcm9sbGJhY2sgYW5k
IHJldHVybiBwcmVkZWZpbmVkIHRhYmxlcy4NCj4gDQo+IFN1Z2dlc3RlZC1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnpl
bGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQoNCkxHVE0sDQpSZXZpZXdlZC1ieTogU3Vy
YWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYyB8IDggKysrKysrKysN
Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAz
ICsrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0K
PiBpbmRleCA0Y2QxZTRkNzZjN2EuLmYzMTI4M2EwMzMxYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4gQEAgLTE4
NTcsNSArMTg1NywxMyBAQCBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucw0KPiAqaW50
ZWxfZGRpX2J1Zl90cmFuc19nZXQoc3RydWN0IGludGVsX2VuY29kZXIgKg0KPiAgCQkJCQkJCSAg
Y29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJCQkJCQkJ
ICBpbnQgKm5fZW50cmllcykNCj4gIHsNCj4gKwlpZiAoZW5jb2Rlci0+Z2V0X2J1Zl90cmFuc19v
dmVycmlkZSkgew0KPiArCQljb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqb3ZlcnJp
ZGU7DQo+ICsNCj4gKwkJb3ZlcnJpZGUgPSBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zX292ZXJyaWRl
KGVuY29kZXIsDQo+IGNydGNfc3RhdGUsIG5fZW50cmllcyk7DQo+ICsJCWlmIChvdmVycmlkZSkN
Cj4gKwkJCXJldHVybiBpbnRlbF9nZXRfYnVmX3RyYW5zKG92ZXJyaWRlLCBuX2VudHJpZXMpOw0K
PiArCX0NCj4gKw0KPiAgCXJldHVybiBlbmNvZGVyLT5nZXRfYnVmX3RyYW5zKGVuY29kZXIsIGNy
dGNfc3RhdGUsIG5fZW50cmllcyk7ICB9IGRpZmYgLS0NCj4gZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCBjMDQ4ZGE3ZDZmZWEu
Ljg4MTIyNmExZWRhMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTI4OSw2ICsyODksOSBAQCBzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciB7DQo+ICAJICovDQo+ICAJZW51bSBpY2xfcG9ydF9kcGxsX2lkICgqcG9y
dF9wbGxfdHlwZSkoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCQkJCSAgICAg
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSk7DQo+ICsJY29u
c3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKigqZ2V0X2J1Zl90cmFuc19vdmVycmlkZSko
c3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICsJCQkJCQkJCSAgICBjb25zdCBz
dHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJCQkJCQkJICAgIGlu
dA0KPiAqbl9lbnRyaWVzKTsNCj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAq
KCpnZXRfYnVmX3RyYW5zKShzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkJ
CQkJCQkgICBjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4g
IAkJCQkJCQkgICBpbnQgKm5fZW50cmllcyk7DQo+IC0tDQo+IDIuNDUuMg0KDQo=

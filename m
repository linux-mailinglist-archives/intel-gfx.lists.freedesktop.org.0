Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COD6Az3ozGk/XwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 11:41:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A25E377D98
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 11:41:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A27E10EA14;
	Wed,  1 Apr 2026 09:41:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kFQPiSon";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5512B10ECC6;
 Wed,  1 Apr 2026 09:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775036474; x=1806572474;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IC8sJeV01XVSlPmfJiFkudAazzwyS2HENNLRIyL2A30=;
 b=kFQPiSonPQZoAPoW62synZ/mRlXrREuRlDyfNziKNN71DSwJyi3cmL3Q
 fCba5p1tT/432TPHYE4LZOu9kuLyu3wmzDUJODl/VXNOK6X1gjkDoxAcS
 GdMVXgkAoEy+c2Wm2z3DwF5QR4HzcsnQN0uwIljk9gdJg6ssxQogaXLVE
 GXPm1s7z7qPAnenxU7YAORTdI8+i9YfEf2FGCPc0jcxPB1UV6UUShpS9H
 GwdbV0OJr83+cKeOqxtDoG5QtsKnrZy0gHzoLHKIJMGB3yrqyHuVYPgje
 qHB/oGm5cfKyhAE1VAnrHkMLdgt7XIujCUQpM2khGj7vhZGFE7I4hCa8G Q==;
X-CSE-ConnectionGUID: 2MltBvjbRme6+RiFE+rjTw==
X-CSE-MsgGUID: L3rPdQa+S5a0+SagnSMKXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75782837"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="75782837"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 02:41:13 -0700
X-CSE-ConnectionGUID: Oeye7PBIRrWD749Va/X9wg==
X-CSE-MsgGUID: 2VdKWNc1SgWZfmEznrnMAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="226608276"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 02:41:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 02:41:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 02:41:12 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.70) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 02:41:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nVOMcgE34PLP+b3xxNg9q35/5HA1NTwWk4ClwMIR0FjKXrT6PhW5dZcvm79IsXIg9DzI+W+rKKEN2PkKFoDOgBsg6CLZYzYr3HgKyZUeTNwN6i3oAvzgDEGF6GfDJNC8c8nS2HkmINE78untvTpiyszCo9b+LaN5J+BIkpW2DVio6LwWdOVA4hCtl1ZW1XPWXlfZ1Skie/KfmGhCKJcLqMRbDH/k+2ERPfsKsUIFsW6N9MPimmc+JETdr+6pVv2Ik8a9UzL/KHTai2vPmrf0qEhm2AgG7GAXhhAVjhWqtgMRkUBtidSsv+gx92pJ9hRRUwO3bd2Cn1Cq2D+g24GjcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IC8sJeV01XVSlPmfJiFkudAazzwyS2HENNLRIyL2A30=;
 b=hUyWdwJc0eYAbrvdrWvyC4iqWOND3gYItPsra3o9Alz0usbmRGL2B2A1NTC35Np4xEhqhqwBoCaeBZ9GE+NLstkA8h6d/GpWpCWswS6H/rErx/+Ynd0z4YGdRpNDVp0+dcYuRLf2J3T18VuzLTXGaCfXvcu+KvaAHP22hxeIbmphAZNduuOfdYJD9EZ04+d++Yal1WUlNIoP4mRTbj1wMALInrKkjyZ8VvLioAEtKhs9SDvgu6y7ITwwqclOu86wCcgSEweGLbNNv8k3aYODkfL9A5E8chXxWcfOXMlRJ1TOgYLRizHVNNrIFocur+XrSU4TAgKmgBddAwFsb8TqWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DSWPR11MB9713.namprd11.prod.outlook.com (2603:10b6:8:356::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Wed, 1 Apr
 2026 09:41:05 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9769.016; Wed, 1 Apr 2026
 09:41:04 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?utf-8?B?SsOpcsO0bWUgVG9sbGV0?= <jerome.tollet@gmail.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Thread-Topic: [PATCH v2] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Thread-Index: AQHcgH5BsJM/hM9AXU+bm8FwkEq8HrXKc1vA
Date: Wed, 1 Apr 2026 09:41:04 +0000
Message-ID: <IA0PR11MB7307698A73C8C19F2A8C275CBA50A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <CADN_a6OKUQ6fgu-JjNvwFb_MV8dxTDhppoq4DDnQ9p_t-JZ8yg@mail.gmail.com>
In-Reply-To: <CADN_a6OKUQ6fgu-JjNvwFb_MV8dxTDhppoq4DDnQ9p_t-JZ8yg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DSWPR11MB9713:EE_
x-ms-office365-filtering-correlation-id: 8e108c45-9463-4c39-05e7-08de8fd2cb3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: vBIYECgKt7hNp4q4hpFIW+cf0aslrIeygSgTyyeIqDlhqBbJet8NOFcGpDd8Md9E+4WTCUXV7FIRYUJNJirSAG6+ZRbTnbrVaaOZxx7F//nd0UykSDZdgg/t3lwabiRVRF4xgo5/lp+u2s8982lL+ZuVnERbsAFmCjeJN5b5roI5nvzacQwKOf8AjD92vcWn6dIJu+RzCg7GctK/f+hvYgdghNkYHA0ULHOH5NwvUp3nGYzsP0S7mmyAUAyLwbYGcGT/JLhvYxVHPgx0RH5fyThjb87oGxIZHIFAUwSlMoY0kZhnKpNF3NkRPPODTrLaY7GI5roEX8Y/9pTFLwRbFOMFvCruKmakostRYbe7wCSDeu1mUu5QTPZLqPgAcrU70A8WN2WbK0UaYvUfdLNqVaK+ukLE9N/B4Xm9JQyGaHaPJZfWsqrTr8a+qovD4bqKWhxGxi1c+s9Ivkpl3Maf4l4JuPvdOigY1cE8KCtyK+6L7oTpapzIU0NFVYMY+umFmcb7LqvsKJ1q4TtZeudWr+kuCo2gRPdPyBwWVdaDioYdIgcqcB/ipk41r4nVD0uh1w9zyzQV9+0D9koeXjg2E5KqES6zIxs/k8PiTQqZ0W62wBzjs0ALeDd+gue0z6CRiXKdcOuwVdDDg16zOU8q/oltpBnvjzRCOmuFM6T3Hzq2gQVy0pL7xApTJjtbvc50Ig1Y8nJfYcUO90cv5YbT3ZNNnK6bMEq5SC0jhHcadpnfZ6ebhKow9xj1Uta9YJQG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THh3MmJWa0huRi9JWGlvS0VncEJRcHE3dkV3Mm5STldCZ3RTc1RteXY3YjdU?=
 =?utf-8?B?b0JIQ05TNUJoZFJrNFpCTmtrTUNoODVPeTFsUVdKdFNHM0RhaUFMZzNRVERl?=
 =?utf-8?B?RUJCK3R5ZU5XWmhvUU12K2Q0RVI3bWQzVjZiWVB0RWxDeTZhaVAyUmprKytL?=
 =?utf-8?B?NTF4YS9CVzN4cjIzQ01Ld0xZaGZoVnJHSDNyOWtUNWNEelJXSDd0U0h4cEdI?=
 =?utf-8?B?UU1NMWdvZUxCUU1BNEFVY0xVRnNPV2ozaGNGUmsvbDFGZlVaeHp1TmRmSWpM?=
 =?utf-8?B?YkhYTzFIejlZUWFiOGhGTmM2bmhpa2hJalQxQnl5RkJyZjY5YkhJQ05OUXZV?=
 =?utf-8?B?c2pQL09NcGkyMVpWMEpTejVTckVYS1RqWUs2ME41OU9EUDUyaTZUSjhrRFM1?=
 =?utf-8?B?SU5nL0Q0Q3RoK2sybEd3cDdwY3RncDNEMC90emV2ZlNWZmRKL3lVc3E0SXdy?=
 =?utf-8?B?d2tsUkR5TTZGeEdRM3J5RUhPVW0wV1MxOVRNR3Exck1lckFzSm5Dc1BzWXky?=
 =?utf-8?B?a0NHa2Z1U3FRS1R2akhSV1NzWjlCM0FKbmVTNXN2eGtISG5INEJOMVpmWFdy?=
 =?utf-8?B?akVMRTQyY3FXTStVaFFLak9yOHhVajlubFpFS1c4SWhNMGVSNEw4eFJHM1dP?=
 =?utf-8?B?bm00emVxNGxuUXppdnZwakl1ZDBEa2dLQWlXaHVua2p3N3k2UTJOdGFTTGo0?=
 =?utf-8?B?SFlaUU5XNVR0dEVCdlpSNjJtR2gwdFRDanZJVHlGaFhQMXNHUm1GYndaVFdi?=
 =?utf-8?B?WGthck1wVzBocVdnVmo5NzViZmp6dURENVJ5Q00rU0ZuMWV5ekRVL1ZOeGJ3?=
 =?utf-8?B?R0JJbjlqYmlRN2hHeTZMdy9GNGhPUXVlV2NlcGQwWFVqeGx3Q1E1bUhRYWVC?=
 =?utf-8?B?cWJRMHlWNjVvREdWWXBOZWxqd2dFSWpGVXNuRDRxSVZGYTJGNldYdFovcEdi?=
 =?utf-8?B?bXd1Y2hRM1hKVjkvNkQzNjFHSDBlaHJ3eG1yKzVic2pna3d1VnY1cXhIcVE1?=
 =?utf-8?B?cUJIdzh2RzhLLy94WGpIWWEwMVVZZzRmRzRRNnRYaEhVVkdHODNkRyt2WjBY?=
 =?utf-8?B?YllsVGQrNlJBQkNadi8rMWhIcDh2OEhMNE9yUmF0b3RsV3pEVFVYVzJMcTZw?=
 =?utf-8?B?dlZEdVp1bmk2NHdMeXhvdE41S2V5QXlERk9mVUtLZ1AzeUtyOEd5TDNMS0dl?=
 =?utf-8?B?bnNMOFZrendpdnBEYU13TnYwcVRSWHZ0M25ieHIraWkvYXJ6amFNaHduWkln?=
 =?utf-8?B?K1dUdmw2eE9BZzFFL01NQXd6RGJoZXNqUmlNVWhqWU5Ka3pzMEs5dVRWMXNn?=
 =?utf-8?B?YVhMUlRSY3huYk11ZnJhUWh2Q3BaU3g2QndWTGt5NDV2R1hJbTJERUxGR0g3?=
 =?utf-8?B?QS8zSzYvdGozY3UvK0hnR0dhamszVWVuY2IwQWJMeTE3N3FVRE9GUlkrM2Nu?=
 =?utf-8?B?cVJ4YVNLVThHTDBKR0JiU3M0a3NNV0l0Mk5jcXVzZGM5d2pWb3NtdFVOTlE2?=
 =?utf-8?B?bklibE1XWisrK2l2QzM5a2p6eTh2YmdMaTJyMHFZRVBoRWNkVkUwc2hqZXRi?=
 =?utf-8?B?WW5yMjNNaEdRRzVnZmN3U0tINTgreTdZclJQUnkwRG15SnArdHFEejF5UjNP?=
 =?utf-8?B?YXVBUDBJeC9KZjhpVWJ0b3BMRW1VSlBuZHZoOEJOSU41WkZxMGtWOFRINWdM?=
 =?utf-8?B?UENpd0tZTGdYb0haMTBlcEJlK3ViNDJuZEtQUUZMcUtMRWR5T1NXMnVzK0p6?=
 =?utf-8?B?emd5WThKc0VWUjBoZkFiTk9aMStIYm0wR0ViZkxPNFYycDc4N1c1djFtZHhJ?=
 =?utf-8?B?UG54eitCVnduTlZhOS9QeVRXdjRHZmNCZ2pHSHdLV0M1Tm9qSXdZTDFNUDUz?=
 =?utf-8?B?UEl6UFlUVEV0MysxTjIwTitSMGlHeWp1ZlQyYk9RU3V5NVQxbkx2V3F2ZTNs?=
 =?utf-8?B?YVNMZ1VpL1VramczRTNobWJKaWdKKzVqajdyRktLWTNVczFTTHVhMU56eDVr?=
 =?utf-8?B?ejI5RlJBeXcyZ2VwT0tqMjk5bEhLd1EwcUxJVWs4NHI0Nk8xZGxkZ241VHJC?=
 =?utf-8?B?UmQ3RUVSakZsTFUrRGNPQTJFZ2RRc096Q1hMQms2VUVqQTBaZVE3dFpadXlN?=
 =?utf-8?B?OGwzaFZzSUxTdWpIeXFROXltcENXWU5VdzNBM0JMYmxLQWlXVUE4WmUwWnVN?=
 =?utf-8?B?VG0vdWFiQWpqaHRaZU1Yd2F1TE1HaDJ0eWlpc1VKcE55RjJUUXozYytjUlNa?=
 =?utf-8?B?QmJmK1dwOGtCMGRzL2dyckhKd1l0NGxybnFpNHdvSXRseDZSNFduMlRMRVVQ?=
 =?utf-8?B?RVhSQm03TU14ZHgxMWRlZGJpWS9kclZocE8zTS9Ba2V3MDhxcWxPUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: faPcv+ekotiYJ+cyPXcxFn6ORHX4o2Mzx259DVeac+OZmXgftEGUL75wBEBHG4c/b682v3vRCEKKB1iH9JHET/0gq84myLyXgTISuk3DOqhmrwQVwN7WWAus7I8TElQnHrxQzOxCtfb02Kw4XCh8f05nNJrgyWb6Xtte/kSmIA9meZRvdnQnWcQlddXMg5QxRdVJj1uGosjKz2JliDBStCSP+79iCBnCQmQO+GBWNQv3a0W7txxcXpukjzOU3T2E5/MW8Bi1tEzln272tXfA/hlqlHD0kkziGkYF4JjMZcnor2AQeUABlsf045WAPSfeXOK3X5JD8S54NK1uPC5YcQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e108c45-9463-4c39-05e7-08de8fd2cb3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 09:41:04.8653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vn0xenpxkdeAcUCXZEIDeMNIl3Lz38WRt0ExfX0h6UchkNQvMvPJtMg//DCLaEge6QoqksJa1mWgu1kNr3wtJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9713
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url,IA0PR11MB7307.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,intel.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6A25E377D98
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKw6lyw7Rt
ZQ0KPiBUb2xsZXQNCj4gU2VudDogVGh1cnNkYXksIEphbnVhcnkgOCwgMjAyNiAyOjM4IFBNDQo+
IFRvOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPjsgVml2aSwgUm9k
cmlnbw0KPiA8cm9kcmlnby52aXZpQGludGVsLmNvbT47IE5hdXRpeWFsLCBBbmtpdCBLIDxhbmtp
dC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0gg
djJdIGRybS9pOTE1L2hkbWk6IFBvbGwgZm9yIDIwMCBtc2VjIGZvcg0KPiBUTURTX1NjcmFtYmxl
cl9TdGF0dXMNCj4gDQo+IEhlbGxvLA0KPiBBcyBwZXIgSERNSSAyLjAgc3BlY2lmaWNhdGlvbiwg
YWZ0ZXIgc2NyYW1ibGVkIHZpZGVvIHRyYW5zbWlzc2lvbiBiZWdpbnMsICB0aGUNCj4gc291cmNl
IG11c3QgcG9sbCB0aGUgVE1EU19TY3JhbWJsZXJfU3RhdHVzIGJpdCB1bnRpbCBpdCByZWFkcyAx
IG9yICB1bnRpbCBhDQo+IHRpbWVvdXQgb2YgMjAwIG1zLg0KPiANCj4gIEFkZCBhIHBvbGxpbmcg
c3RlcCBhZnRlciBlbmFibGluZyB0aGUgSERNSSBwb3J0IHRvIHZlcmlmeSBzY3JhbWJsaW5nICBz
dGF0dXMsDQo+IGZvbGxvd2luZyB0aGUgc3BlYyByZXF1aXJlbWVudC4NCj4gDQo+ICBXaXRob3V0
IHRoZSB3YWl0IGZvciB0aGUgc2NyYW1ibGluZyBiaXQgdG8gc2V0LCBzb21lIEhETUkgMi4wIG1v
bml0b3JzIGZhaWwgIHRvDQo+IGRlY29kZSB0aGUgc2lnbmFsIGF0IDRLQDYwSHogKDU5NCBNSHop
IHdoZW4gU0NEQyBzY3JhbWJsaW5nIGlzIG5vdCB5ZXQNCj4gZnVsbHkgY29uZmlndXJlZCBieSB0
aGUgc2luay4NCj4gDQo+ICB2MjoNCj4gICAtIEluc3RlYWQgb2YgdGhlIGZpeGVkIGRlbGF5LCBw
b2xsIGZvciBUTURTIHNjcmFtYmxlIHN0YXR1cyBmb3IgMjAwIG1zZWMNCj4gICAgIGFzIHBlciB0
aGUgSERNSSBzcGVjLiAoQW5raXQpDQo+IA0KPiAgUmVwb3J0ZWQtYnk6IEplcm9tZSBUb2xsZXQg
PGplcm9tZS50b2xsZXRAZ21haWwuY29tPg0KPiAgQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL3hlL2tlcm5lbC8tL2lzc3Vlcy82ODY4DQo+ICBMaW5rOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyNTEyMzAwOTEwMzcuNTYwMy0xLQ0KPiBqZXJv
bWUudG9sbGV0QGdtYWlsLmNvbS8NCj4gIFNpZ25lZC1vZmYtYnk6IEplcm9tZSBUb2xsZXQgPGpl
cm9tZS50b2xsZXRAZ21haWwuY29tPg0KPiAgU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwg
PGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiAgLS0tDQo+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgfCAgMiArKw0KPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgMjUgKysrKysrKysrKysrKysrKysrKysrKysNCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuaCB8ICAyICsrDQo+ICAg
MyBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspDQo+IA0KPiAgZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICBpbmRleCBjYjkxZDA3Y2RhYTYuLmM3MDhi
NzEzZjBlOCAxMDA2NDQNCj4gIC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMNCj4gICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMNCj4gIEBAIC0zNTA2LDYgKzM1MDYsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZW5hYmxl
X2hkbWkoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAgfQ0KPiANCj4g
ICBpbnRlbF9kZGlfYnVmX2VuYWJsZShlbmNvZGVyLCBidWZfY3RsKTsgICsgICsNCj4gaW50ZWxf
aGRtaV9wb2xsX2Zvcl9zY3JhbWJsaW5nX2VuYWJsZShjcnRjX3N0YXRlLCBjb25uZWN0b3IpOw0K
PiAgIH0NCj4gDQo+ICAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2VuYWJsZShzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwgIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jDQo+ICBpbmRleCAwNTVlNjg4MTBkMGQuLjk1OGQ5MzlhZTZlZSAxMDA2NDQN
Cj4gIC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+ICAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiAgQEAgLTI2
OTQsNiArMjY5NCwzMSBAQCBpbnRlbF9oZG1pX2FkZF9wcm9wZXJ0aWVzKHN0cnVjdCBpbnRlbF9o
ZG1pDQo+ICppbnRlbF9oZG1pLCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqXw0KPiAgIGRybV9jb25u
ZWN0b3JfYXR0YWNoX21heF9icGNfcHJvcGVydHkoJmNvbm5lY3Rvci0+YmFzZSwgOCwgMTIpOw0K
PiAgIH0NCj4gDQo+ICArLyoNCj4gICsgKiBBcyBQZXIgSERNSSAyLjAgc3BlYzogYWZ0ZXIgc2Ny
YW1ibGVkIHZpZGVvIHRyYW5zbWlzc2lvbiBiZWdpbnMsICArICogcG9sbA0KPiBUTURTX1NjcmFt
Ymxlcl9TdGF0dXMgdW50aWwgaXQgcmVhZHMgMSwgZm9yIHVwIHRvIDIwMCBtcy4NCj4gICsgKi8N
CkNhbiB5b3UgcG9pbnQgb3V0IHRvIHRoZSBzZWN0aW9uIGluIHRoZSBzcGVjPw0KDQpBcGFydCBm
cm9tIHRoYXQsIHBhdGNoIGxvb2tzIGdvb2QgdG8gYmUgYXMgdGhpcyBwb2xsaW5nIHdpbGwgYmUg
ZG9uZSBvbmx5IGlmIHNjcmFtYmxpbmcgaXMgZW5hYmxlZCBhbmQgdGhpcyBpcyBtYW5kYXRlZCBp
biB0aGUgSERNSSBzcGVjLg0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQot
LS0tLS0tLS0tLS0tLS0tLS0tDQoNCj4gICt2b2lkDQo+ICAraW50ZWxfaGRtaV9wb2xsX2Zvcl9z
Y3JhbWJsaW5nX2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19z
dGF0ZSwNCj4gICsgICAgICAgc3RydWN0IGRybV9jb25uZWN0b3IgKl9jb25uZWN0b3IpDQo+ICAr
ew0KPiAgKyBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSB0b19pbnRlbF9jb25u
ZWN0b3IoX2Nvbm5lY3Rvcik7ICArIHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0g
dG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsgICsgYm9vbCBzY3JhbWJsaW5nX2VuYWJsZWQN
Cj4gPSBmYWxzZTsgICsgaW50IHJldDsgICsgICsgaWYgKCFjcnRjX3N0YXRlLT5oZG1pX3NjcmFt
YmxpbmcpICArIHJldHVybjsgICsgICsgLyogUG9sbA0KPiBmb3IgYSBtYXggb2YgMjAwIG1zZWMg
YXMgcGVyIEhETUkgc3BlYyAqLyAgKyByZXQgPQ0KPiBwb2xsX3RpbWVvdXRfdXMoc2NyYW1ibGlu
Z19lbmFibGVkID0NCj4gZHJtX3NjZGNfZ2V0X3NjcmFtYmxpbmdfc3RhdHVzKCZjb25uZWN0b3It
PmJhc2UpLA0KPiAgKyAgICAgICBzY3JhbWJsaW5nX2VuYWJsZWQsIDEwMDAsIDIwMCAqIDEwMDAs
IGZhbHNlKTsNCj4gICsgaWYgKHJldCkNCj4gICsgZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0K
PiAgKyAgICAgIltDT05ORUNUT1I6JWQ6JXNdIFRpbWVkIG91dCB3YWl0aW5nIGZvciBzY3JhbWJs
aW5nIGVuYWJsZVxuIiwNCj4gICsgICAgIGNvbm5lY3Rvci0+YmFzZS5iYXNlLmlkLCBjb25uZWN0
b3ItPmJhc2UubmFtZSk7DQo+ICArfQ0KPiAgKw0KPiAgIC8qDQo+ICAgICogaW50ZWxfaGRtaV9o
YW5kbGVfc2lua19zY3JhbWJsaW5nOiBoYW5kbGUgc2luayBzY3JhbWJsaW5nL2Nsb2NrIHJhdGlv
DQo+IHNldHVwDQo+ICAgICogQGVuY29kZXI6IGludGVsX2VuY29kZXINCj4gIGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuaA0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5oDQo+ICBpbmRleCBiZTJmYWQ1N2U0YWQu
LjBmYTM2NjE1NjhlOCAxMDA2NDQNCj4gIC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5oDQo+ICArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuaA0KPiAgQEAgLTcwLDUgKzcwLDcgQEAgdm9pZCBoc3dfcmVhZF9pbmZvZnJhbWUo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAgY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAgdW5zaWduZWQgaW50IHR5cGUsDQo+ICAgdm9pZCAq
ZnJhbWUsIHNzaXplX3QgbGVuKTsNCj4gICt2b2lkIGludGVsX2hkbWlfcG9sbF9mb3Jfc2NyYW1i
bGluZ19lbmFibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUs
DQo+ICArICAgIHN0cnVjdCBkcm1fY29ubmVjdG9yICpfY29ubmVjdG9yKTsNCj4gDQo+ICAgI2Vu
ZGlmIC8qIF9fSU5URUxfSERNSV9IX18gKi8NCj4gIC0tDQo+ICAyLjQ1LjINCg==

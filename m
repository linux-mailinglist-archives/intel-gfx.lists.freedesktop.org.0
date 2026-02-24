Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SND4Fn64nWnERQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 15:41:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B74B1188811
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 15:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4608F10E5A5;
	Tue, 24 Feb 2026 14:41:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gQ+lH3bJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A35610E5A3;
 Tue, 24 Feb 2026 14:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771944058; x=1803480058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IhWhmRII4DTv4bqdIHqbgjKkoRSSH5SEBLTxNWMOmqY=;
 b=gQ+lH3bJ4fhv3i/y7HGM0g1e7IUP+IGLE5NIavTLAWFgBvWHiJqydFb8
 99nwuciiiDlJgXkUssdX3k6gRRCfcouep0DJLak35cj/o4kPDZaoJ28re
 A6U26iqqhXnhZJjEsXKYKhCoLdjrrCTz4WUF/eeEKN6H4i6OCp0jR4xne
 k2gVmCwEwMH7m2R1xh74/DZU3/+8KQOvqsG/4njhmrf/3ubnPAs7ZNh2E
 ubGe3Q82kPNNBdJX1SkGh1rSxxz/xNwmzWMoxD4RioV4IKHYOFEKQ4JtU
 gL90KU/Awd3eP1dmK+FItaihnacN0WR4DokB5tNGTxy+d6JcaLZ8dYfBL A==;
X-CSE-ConnectionGUID: rc0xVqiES5GpC2NPMo1S9g==
X-CSE-MsgGUID: hxZsRJPaRfywPh/+FRVcDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="76821367"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="76821367"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 06:40:58 -0800
X-CSE-ConnectionGUID: fwbDLpNhRUmy5XnH99lSCg==
X-CSE-MsgGUID: vrZxEhxdSSityvX+2CFC6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="220507094"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 06:40:58 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 06:40:57 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 06:40:57 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 06:40:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cFiM9A7SHjScurJRTsQynk0X/x9wRgfZUKcSPcdIhNMHEyuKQZdRbypYQNWyKSgzwSb/UNrZ+SDfLRqtu/hsqN2oFRpqhUdn9KBJ6htjMlNrK8LMWtnUrfnglsTzo89phgF1dtg8VPvcWHUKyZRV8vUrkiQegmBxgynrao6I9QeDpGX4qpnSu0gw1H6swci0ym1kulPr+qhT4XZUKPqal9vfGIR+zirdx9j3bblCkkg/62srFpgoOTqEVza+G7UltaZ8G3tsFSM2mGmHyy8Ak+kqJtsNM3xlK71xaKLyHCkULTg/mx+NUnDV2yUkUR/aPNJf8IISUp0lKpZ90aVUmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MfluXegtjbeBWB6ulAxmywOfFAg0s4IZYz0DT/BXqd8=;
 b=VThSzxcVzQ3qUyRuom/+QOk7KKqjVd7vmwZ1qtPKdJqLXFmlSWqdogjGU1wRaN6TVpLmRU1rJ6DZDMObc5qnPrnDrV009Y6qW2RtQmhde1v48VcC8+t+qp6ls+XXJOvHhw6O+6vnswVJbio+EmawG1lEb0JvUSRoSCg1NapHgpDJQZ0EW9XSrI7uniDMVPStdUPZYDY1wxYEK/pQ6agybcgJ/tbkleROwurfG/1Nl915jE/fxQoHRNewf+h4R0qhm8yo7lI+5GO2cApTO7cECopSTQipk1lQUWlJKciOfre17FohZAwFo3gyGD9VKny6C3b6cejheNouQmX3kzQmbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by LV3PR11MB8742.namprd11.prod.outlook.com (2603:10b6:408:212::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 14:40:54 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%4]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 14:40:54 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Lee,
 Shawn C" <shawn.c.lee@intel.com>, "Ap, Kamal" <kamal.ap@intel.com>
Subject: RE: [PATCH] drm/displayid: reduce DisplayID checksum error logging to
 debug
Thread-Topic: [PATCH] drm/displayid: reduce DisplayID checksum error logging
 to debug
Thread-Index: AQHcn9IHMUzIJgCyKE2o+uNT9MSJh7WQH8KAgAATS9CAAazpAIAAF0Iw
Date: Tue, 24 Feb 2026 14:40:54 +0000
Message-ID: <PH7PR11MB825234FB1C3F2C933DAA4B168974A@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260217055002.245099-1-vidya.srinivas@intel.com>
 <40f54d2357194813cd16e71a49b719f8c35b1549@intel.com>
 <PH7PR11MB8252364C58CFC0216A5FCC298977A@PH7PR11MB8252.namprd11.prod.outlook.com>
 <a709533a1f406109306ea9a46f2088d93ae8f53b@intel.com>
In-Reply-To: <a709533a1f406109306ea9a46f2088d93ae8f53b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|LV3PR11MB8742:EE_
x-ms-office365-filtering-correlation-id: 2ac7b317-085b-4a3f-63ba-08de73b2b70c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?MRS5OclAFzpxpA87FCNiFCVuB5u1EbLblCpgdYdIJmfaPZ8VWhBBYAOiDwId?=
 =?us-ascii?Q?OyPxZAH4jfPC/y2IhVkjfFxvz/tm9djDHkpqlEdQfs73d+HCptl9uO/KACb7?=
 =?us-ascii?Q?Rh/MnYnlgYZ/JLleH0xv+7LS9mKbsbphdzX4aKxBuKcKu3aKS2gFe25t4l8t?=
 =?us-ascii?Q?RCX0lpmcK9SHP+x+aC8Rn7uv8fKAp46SzzKKYoF2q7xiXcnugQbhiNGkROBM?=
 =?us-ascii?Q?gqU8KYA/AJN3tbZb00k5cp/GPV8NAPbSSYYnzSMJL+PdKTm39D0nWwiRQE1H?=
 =?us-ascii?Q?+jdyFwtUDCA+jSsGpvwdfi5JS+moSyzWiaZruUkxBQFWp7hg4mMfM3DImRWr?=
 =?us-ascii?Q?wTz3xAmR6OX021eql0h3g2E/9TfWb17zC0/HDkXwh5jbzd+vLR6e4zMd+W9p?=
 =?us-ascii?Q?ylhzhPiCmKf2WiDUeKogsRkFIQcZoNUnKH1YUBf6I5RMP6Sz4z+xiVnjhims?=
 =?us-ascii?Q?Cn+DfFmH9kXjiFzSOYHavkHzjsxhJA2BKhsDfLiolNbhyyFuj0bI9e+UHti4?=
 =?us-ascii?Q?3B9wQ7mV7J5D1v/zz/2dqlDQKCdwsDtxBHUVd7OwxwKDvJFSlDDlkOEZbhgY?=
 =?us-ascii?Q?DCDXOKrqSsKDYDOVnNTuHxUoeMHizE3EmgAPcU7hhAF8T5qLGfTmnQdy4kIL?=
 =?us-ascii?Q?zGD+aKydCwVTV0e4IAmdRVUGGfaUBhnEo11nBoRRYuap7E2nRqRVZa5i945p?=
 =?us-ascii?Q?YP2qGKn4j9NCr0yob2KjFEfH53Cqc43ipBRu7pym1Yzre0S4p9D4AG17wP+H?=
 =?us-ascii?Q?wUKSQN5OlftiZ1qCCP8oWZ5ofhl2EjYqfaoS+MUeoUiNNTzxfWm0Rq6SrR3G?=
 =?us-ascii?Q?YYNDNqtKRFUdKkJLkXskS+nwiRsX6Bofu3d4W4IKeUKLykqjmK42Vtp9IcrF?=
 =?us-ascii?Q?Wx5luhx66pKAKWuxBh0ZRenUlK4LnblLNVBOQe152yOvBYzHJZ3+yicZfxop?=
 =?us-ascii?Q?IwD1/xYat/zpcF+R8mlIRZM68WRNaT1VMeYIHl2Ix3Hq5kik9hIL67Zq9/uK?=
 =?us-ascii?Q?DovlzuyFXiPsXQmI2n9nbbOjOzvxEOO/WaiGKapVtcw3sC+q1nGPR6ndWjWx?=
 =?us-ascii?Q?Zj2pZNj+OIvCCZ9DT84EBT484GgnhUmnGxTC1ROZ0cZRsncUCJrzIeZaGjc2?=
 =?us-ascii?Q?+n/7c4E71rD060Qde0eeypOQiKtQeyX/gtTpjq90IyXVVGqKieIXUV7BdF1F?=
 =?us-ascii?Q?UmMBKrnhwxWnDF/hkxMk4YQbjOy+F3FuB9srOqMEheEHom7sAgslCdTbXICp?=
 =?us-ascii?Q?CikdPNNA6oB1XK2rvbqYncrdUFbkGIBrvXR2/qIxa87z4a5uw72YAx8SEomb?=
 =?us-ascii?Q?SPC2gEn0gjvK7w5ndnsVUhcOC5OnNPC+9ITvtgxrnlQkguPesofkjHUgsxZI?=
 =?us-ascii?Q?KeIW5LoycRzpdydHCI9TIhCFDrdE8+/m6O5x9/8YXkRlL3EiTCvFhkz1MqX2?=
 =?us-ascii?Q?mXnCzsMYnpAzpvIIfqKepMEpxgK+pBOoNuKbV7JZiA4q0ZBFwMo2AhJiPcRi?=
 =?us-ascii?Q?kWhfs331jpfu/LvmuV+7Yf3DDPQh1pvFfUH2l54dg1RLKxTaW5m1N0IZYImc?=
 =?us-ascii?Q?rFyTXQm3cy/Ju5+rsjz1Fr4oa++9OAttmYL7ogQbRlAQOouEuVtwwQ7U7Jbs?=
 =?us-ascii?Q?6XuFlsMrRY9FzJ5U8ugqemE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CSib8RagFy56x17CkfyUlew75XpURlw7eaT52rouSN+xRJU8djQHz0WFBKeQ?=
 =?us-ascii?Q?6YtrJXd2OwyM+ptScZDcn1buSQI/2ghzuc3mbiHhqss5u3hu/SmMSNpckPBN?=
 =?us-ascii?Q?O4/eK4AYsPYyZDBrf06T63bS3WAYv2aYMuKbIHttB2zdbk8clQ/DibjrcFHa?=
 =?us-ascii?Q?3H4p/m4+0eYl5s24Xk9y7LeRdoBoGHVZsJHv2uRIiPrEg/C6/hfpo1NeGQ8J?=
 =?us-ascii?Q?A+Ekt1+3df9T0bOmC05J5GRlRhSLf0I8DLDaaO51GNl/QhByLfySMU4GnhJK?=
 =?us-ascii?Q?PT/d0j6u+XDNyjZI3GqWsIqCXWCqH1TU0vpvX+mXr/jMvc7Tt/zrx5f8FE7/?=
 =?us-ascii?Q?E0okPkxbfY0K9Jyl8IFQ4G8m5bsKjyXryjmTJsIlA563SwNGigbQPONtJ+jj?=
 =?us-ascii?Q?qyKFA8xlPzENiS7qw02YEiK28tZ8nyRse9EHhdlIHkj8LSREsxoDhaRh9srB?=
 =?us-ascii?Q?36AV/MPe1Kwgw8Ws2xsb+d65Y1LKxea0c6VNs4OrBneEEwtF1oBRJiX8ZYhS?=
 =?us-ascii?Q?8Xm0o4Bat38QH3xPp/zwf+mEI8wAArt7F0EFRroBkQnASx2BmUW1/CBB9Pza?=
 =?us-ascii?Q?4hdTPFcsdWhk+XKIE/FLM5eBUlot2P7NPP/tyZxcttxWX9nc8ZdF8PGd6620?=
 =?us-ascii?Q?q+Qmv0A9durjVL1xDkSn5s8AOasqW1MC7zGEwRXrccQEiyCJTFSSzq/AuTii?=
 =?us-ascii?Q?dEvdlhzyI47SNeqEAFXGfLvdEDHtTs9vzwI1NDmg3sp4TGhjt7qvmZYrToEU?=
 =?us-ascii?Q?KJ09eqsUxWh2GjPvKwTS7FHwl1b4XXHuKzUjMzna7DpiPPlN1cCv/wuB5Jvm?=
 =?us-ascii?Q?b272lwWs+kBn4nbIXoBeOLr0iWT2cOzy3bEWCMYk/MJ6BOO6YxVCS/4D/fC+?=
 =?us-ascii?Q?becne1R869teRdgyHBJl+qCOIEQFNuQXEbhE7lNo41QTgtyw6DrLPT0Z2tQu?=
 =?us-ascii?Q?8u0ChGPEUAmEtJSZbsR5vG6Wmb1Jt0AqkM46dXU6vOfvdJ+SPhpfwkKsJxmq?=
 =?us-ascii?Q?wvqjdhPS8lRqeJLmspDh3WnRG7u0IfKsiUTZGawyifY1P9fvk7Epy0PjJsTJ?=
 =?us-ascii?Q?7cDl7NMidi/1IYZnAGuFlnMZ3NIpKvcoWzULstb9UcMZcMPMZ5V4apPGdzso?=
 =?us-ascii?Q?b7Hyay3vT54smyZo15zUOty/kO85JQNjyBU40gCtYTejD66tjJ2hQoQr5/yd?=
 =?us-ascii?Q?v4Nd1IJmAJgz2CpbSmVs5s/YNJHiJNJ4lMVHfF4i3njc46wB9zXJaVWKqrlq?=
 =?us-ascii?Q?TZary0wbwE8uQi56IU+oVtrhZXBzhu7ZLFf60Q6FwYpCNj3rl0MrXX7Pz/XC?=
 =?us-ascii?Q?Co+cwvDxQlRVSc8lPg35nOsZ+e8ib0YDBcd5pyw4oCUBA9zBTEky7i22c52g?=
 =?us-ascii?Q?ZKObWzbBjzQjHL/2hOE9PSckNw+ex0zBHQSfY1qsy8P91kCp0OTrvZDkS+Ak?=
 =?us-ascii?Q?DLFWancK9UexbjIGzhdKSA37h61mnzKuE0oozCA6adELfxBW/13KQdSq/r5V?=
 =?us-ascii?Q?Fh3PHhcT9lbyjX04/c9EkbrE1iqxZ1d2y1/Mdl93BKVOxJmdyYWTtI2cAzh2?=
 =?us-ascii?Q?2ZDarPGOyJcNuYevyTNyAh6o4o1KVKRx7qG7hG7B3Ugaw+QLWys/Lcr8kPaV?=
 =?us-ascii?Q?0aGJhBmBbAB6HSyX+LAy/i6UqIkOzynfqUfzp201VjNwE7L1ymzC02fizSLD?=
 =?us-ascii?Q?EHHW9MnhwOdAIB/tilxarQrCJAbZ+2xUYSb8D3gjBPdXHCMZ253ERja3cgxe?=
 =?us-ascii?Q?gKlH+MyPmA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ac7b317-085b-4a3f-63ba-08de73b2b70c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 14:40:54.5094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lxZAcc6ec79xZSJ0pGK2WAFuMN5vGDptuSwxgFO1fcwfV4+1lY9B4hC8RuZgmlzBilEAQCq5Qh7/tAivcQT0JNU8ZQvpkMUCX7lS0EvBkv0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8742
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,PH7PR11MB8252.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B74B1188811
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: 24 February 2026 18:47
> To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedeskt=
op.org
> Cc: intel-xe@lists.freedesktop.org; Lee, Shawn C <shawn.c.lee@intel.com>
> Subject: RE: [PATCH] drm/displayid: reduce DisplayID checksum error loggi=
ng
> to debug
>=20
> On Mon, 23 Feb 2026, "Srinivas, Vidya" <vidya.srinivas@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: 23 February 2026 16:02
> >> To: Srinivas, Vidya <vidya.srinivas@intel.com>;
> >> intel-gfx@lists.freedesktop.org
> >> Cc: intel-xe@lists.freedesktop.org; Srinivas, Vidya
> >> <vidya.srinivas@intel.com>
> >> Subject: Re: [PATCH] drm/displayid: reduce DisplayID checksum error
> >> logging to debug
> >>
> >> On Tue, 17 Feb 2026, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> >> > The patch "drm/displayid: add quirk to ignore DisplayID checksum
> >> > errors" introduced a mechanism to bypass checksum validation for
> >> > certain panels. However, even when ignoring the error, the code
> >> > continues to log a DRM_NOTE.
> >>
> >> Please refer to commits with the usual format (see git log).
> >>
> >> > On affected hardware, this results in persistent "DisplayID
> >> > checksum invalid" messages in the system log. This noise often
> >> > misleads users into thinking there is a critical hardware failure
> >> > or a functional regression, despite the quirk successfully handling =
the
> issue.
> >> >
> >> > Downgrade the log level from DRM_NOTE to DRM_DEBUG_KMS. This
> keeps
> >> the
> >> > diagnostic information available for kernel developers while
> >> > silencing the unnecessary warning for end-users.
> >> >
> >> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/drm_displayid.c | 2 +-
> >> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/drm_displayid.c
> >> > b/drivers/gpu/drm/drm_displayid.c index 58d0bb6d2676..1f6d78fe29f2
> >> > 100644
> >> > --- a/drivers/gpu/drm/drm_displayid.c
> >> > +++ b/drivers/gpu/drm/drm_displayid.c
> >> > @@ -69,7 +69,7 @@ validate_displayid(const u8 *displayid, int
> >> > length, int
> >> idx, bool ignore_checksu
> >> >  	for (i =3D 0; i < dispid_length; i++)
> >> >  		csum +=3D displayid[idx + i];
> >> >  	if (csum) {
> >> > -		DRM_NOTE("DisplayID checksum invalid, remainder is
> >> %d%s\n", csum,
> >> > +		DRM_DEBUG_KMS("DisplayID checksum invalid, remainder is
> >> %d%s\n",
> >> > +csum,
> >> >  			 ignore_checksum ? " (ignoring)" : "");
> >>
> >> I understand the desire to make it debug level with the quirk, but
> >> IMO it needs to be more than debug level when there is no quirk.
> >>
> >> BR,
> >> Jani.
> >>
> >
> > Hello Jani
> >
> > Thank you so much. I understand your point.
> > Only problem is other components not familiar with drm get confused
> > about the message and say it is display issue. They also report this
> > flooding is causing delay for their driver load etc.
>=20
> It absolutely *is* a display issue, it's got a buggy EDID. It's not a dri=
ver issue.
> If we go quiet about it, people will only notice the issue through missin=
g
> advanced display features as the DisplayID got skipped.
>=20
> Like I said, make it debug level for displays that have the quirk
> (ignore_checksum), and keep it noisier for displays that don't. If we hit=
 that,
> there's a (small) chance we can give the display vendor feedback and have=
 it
> fixed, otherwise we can add the quirk.
>=20
> But the displays will never get fixed if we always keep quietly accepting=
 buggy
> EDIDs.
>=20
>=20
> BR,
> Jani.

Hello Jani

Thank you so much. I understand your point.
Please ignore this patch.

Regards
Vidya

>=20
> >
> > Regards
> > Vidya
> >
> >>
> >> >
> >> >  		if (!ignore_checksum)
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB1D849BE2
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 14:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE17110F9A2;
	Mon,  5 Feb 2024 13:34:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=mediatek.com header.i=@mediatek.com header.b="SPmN5H2q";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="KmdhZvTi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7676210EC4A;
 Wed, 31 Jan 2024 05:17:22 +0000 (UTC)
X-UUID: fe997ccabff711eea2298b7352fd921d-20240131
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-ID:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From;
 bh=WzY/84LseKzQOPQzERO7b196WEVRr/hLc5/7ATMyz30=; 
 b=SPmN5H2q6SYgv+9Xb4WHwoy7xjPRROKTplqxrUJkjrNDxgUlm6xPCqgrq9B7tpSDOa8no9ln7Bxg7WtephAO6L+EdYF39yKXX5a8h6swX9Sx2ZFyb6wwEwK3hmTmc5QTWrBz52oc8pMW7D3JSK5fn8Pfu66NCAECTeuNE2mtH0A=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.36, REQID:38a42812-e437-48dc-8ad2-52c31d5ffd4f, IP:0,
 U
 RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
 release,TS:0
X-CID-META: VersionHash:6e16cf4, CLOUDID:766d7283-8d4f-477b-89d2-1e3bdbef96d1,
 B
 ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
 RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
 SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: fe997ccabff711eea2298b7352fd921d-20240131
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by
 mailgw02.mediatek.com (envelope-from <jason-jh.lin@mediatek.com>)
 (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
 with ESMTP id 589531577; Wed, 31 Jan 2024 13:17:14 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 31 Jan 2024 13:17:13 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP
 Server id
 15.2.1118.26 via Frontend Transport; Wed, 31 Jan 2024 13:17:12 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDQ2jCdYJdk+heMMTEBVKEiy6AwDF8YUpW4wcXZ4/0aeY+QLaky6dqaxSO9D02MFNM95qqbxSIR4tJI08lRtIra3VJdN9v+Cfq/RysWNg85yUhXKdv3XOk0NzwNicnYhWh7FUsRcnYdYSJE+ahJUCE5yg+6nxICgZUkKsC3YR0c0JhvlGgtx9zE4HiOTy6mlpMOp0ZK4nFZktqcSPV04fNJ5TtRr98Zh0p8sLRYz4y0etmgkfdScsMdGuDFnX+HtF1j4h3tjHkaL4XjGhGG29A+vunOycvZma24bI+2g3VYRMHqbTYldCJo0sks6dx+myMYjaSguyzj3aBuSdVdRHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F1syUeGXpzMoucijBDP82/t+HMxJh23LwMs1Qux00pg=;
 b=UTH/1FPZ2mslypd8lfd8CtZI86MmnjYQQRVHkuV5AHUQwokjQZQi4Q0mpmQU9KGlmZPsFI7XrokcVHuKATnxex2UFA1p8P6kPP7ZdMkqeLpmg4qZUob+fyIDjT95rdunLv5i3ydpxgknEHYQZTMi/HjteT57ampRdQW58EPlcyqPRXMssgzrGSuF+HY+8kkUeUFvYwewBeivx0dEpqkf4VMoPRM1fSHI5hZUGO4owbxHOC+eggqf6n5TLk1uo9NjmX2HQyNn4ZpUFXzI1orq05u7fJQCQv4NM7bA5Asip7yAXkdQaXL8dFzABJxDYMrouue9MBO2J7JGjalbPgW1/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F1syUeGXpzMoucijBDP82/t+HMxJh23LwMs1Qux00pg=;
 b=KmdhZvTi4UOyeCMUlE+Q+cBuqfPqeYHLAPuVi1k0c3IJk2U8ud6IsQ9NxbE0phJPAj8s/iS/fBvvp2KKfiTAV6GatCjyIM/4giq77JzP4vO3Syx6ROo28Zz/4BLTetBfOMNlyqi5zsDnGGtbRxpVQCvhDhgw/rWUY9TN7DmMvRE=
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com (2603:1096:101:149::11)
 by SEZPR03MB8383.apcprd03.prod.outlook.com (2603:1096:101:220::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.23; Wed, 31 Jan
 2024 05:17:09 +0000
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::d006:ec9c:ff42:ff60]) by SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::d006:ec9c:ff42:ff60%5]) with mapi id 15.20.7249.023; Wed, 31 Jan 2024
 05:17:08 +0000
From: =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>
To: "daniel@ffwll.ch" <daniel@ffwll.ch>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "michel@daenzer.net"
 <michel@daenzer.net>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chunkuang.hu@kernel.org"
 <chunkuang.hu@kernel.org>, "linux-arm-msm@vger.kernel.org"
 <linux-arm-msm@vger.kernel.org>, "mikita.lipski@amd.com"
 <mikita.lipski@amd.com>, "dmitry.baryshkov@linaro.org"
 <dmitry.baryshkov@linaro.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "maxime@cerno.tech" <maxime@cerno.tech>, "daniel.vetter@intel.com"
 <daniel.vetter@intel.com>, "nicholas.kazlauskas@amd.com"
 <nicholas.kazlauskas@amd.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "quic_abhinavk@quicinc.com"
 <quic_abhinavk@quicinc.com>, Project_Global_Chrome_Upstream_Group
 <Project_Global_Chrome_Upstream_Group@mediatek.com>,
 "manasi.d.navare@intel.com" <manasi.d.navare@intel.com>,
 "lucas.demarchi@intel.com" <lucas.demarchi@intel.com>, "sean@poorly.run"
 <sean@poorly.run>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "dmitry.osipenko@collabora.com" <dmitry.osipenko@collabora.com>,
 "fshao@chromium.org" <fshao@chromium.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "jani.nikula@intel.com"
 <jani.nikula@intel.com>, "angelogioacchino.delregno@collabora.com"
 <angelogioacchino.delregno@collabora.com>, "freedreno@lists.freedesktop.org"
 <freedreno@lists.freedesktop.org>
Subject: Re: [PATCH] drm/atomic-helpers: remove legacy_cursor_update hacks
Thread-Topic: [PATCH] drm/atomic-helpers: remove legacy_cursor_update hacks
Thread-Index: AQHaTaau1JBuNr0KqkifWFu/qedV2rDm6fyAgAPwMICACJP+gA==
Date: Wed, 31 Jan 2024 05:17:08 +0000
Message-ID: <1349365de499bae53a8c868738c7270fc16813d5.camel@mediatek.com>
References: <20230216111214.3489223-1-daniel.vetter@ffwll.ch>
 <20230307145613.xvhru3fpcudlpazt@houat>
 <aac416742920953999a9ce230ac68139bf5b9790.camel@mediatek.com>
 <ZbKlsTEvGPiGtzS3@phenom.ffwll.local>
In-Reply-To: <ZbKlsTEvGPiGtzS3@phenom.ffwll.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB7682:EE_|SEZPR03MB8383:EE_
x-ms-office365-filtering-correlation-id: a175ba57-a917-4e22-47eb-08dc221bdf2f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2wbQHNyh3EiuWoreQgd8JrLG558i/lgDA7e6UGaMhuWHdjnhynGLZYUwt9RRRviWffeoWs/2PwXpCj/TxD6gCrseufkcU2jbeL64HcDsf1YVpJnMkgEWwBkoAfIgRZdMsA5njr3ZkTMVZbKz29c3vUkHFL7Mx6EJahKuomNPL01/2Ar+ikP+ZtlfcQgMNmYSZuPlqxRlOQccCC6Hhj5WA1Vl6QxkEMyYRQLMek+GWtuufQ6VyHntNbBhU1aPwCy4KadZe1L88K+gCUNXgmZoQDg/UyXhAN8ENG2OpCJ7sK4r8kQuzVXTq8H1xtcvX/z6XUYX1OOiMWBWA+LG3KZiNQzDqRUe98R22I0u0BOyNVQnGOB2aXE9Sakk6LfA8OBDGgOBb2G+hKDaFkeKGi4TvxbL0vc7yJl0E1//BkRGhXUfQEJ2RNZ+/G9Z5sXrrqMEZnvGKMmbTKK8uIbdK6DDgdmZhzWH9pYp2UzsXCf63tcDHRMw8XS8f1mtcEUKe/9FoJNslaaq/Da7mLpodcXqEj3GXBgKgego9/G1hh8JXepjCwlsg9dsNJ2h5qYbPrxc/f1okGtI5KHKjbwLRi2yV5qOoJGz1rr2kw60V0DuxlT/2EXkdzMnt9IkUAjk4heD9U5bKaLUTeHJte0qYflN59ayRGmwChqgNy3k3rCQJWg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SEYPR03MB7682.apcprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(366004)(376002)(346002)(230922051799003)(230273577357003)(230173577357003)(451199024)(64100799003)(1800799012)(186009)(38100700002)(122000001)(36756003)(85182001)(86362001)(41300700001)(71200400001)(6506007)(4326008)(8936002)(8676002)(54906003)(6916009)(316002)(478600001)(64756008)(66446008)(66476007)(6486002)(76116006)(66946007)(66556008)(5660300002)(7416002)(83380400001)(2906002)(6512007)(2616005)(26005)(38070700009);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VlRsU1NiakZtc0d1ekxnV2tEajg1YjFseW1yNlJrL0p4SVVpUEM3WkR5cG8y?=
 =?utf-8?B?Yng5RWxEdUd6aitROVY0TFJFYTJmSmFPZXFaSmN2Uk0wamtBSjdKdVpFNHhT?=
 =?utf-8?B?QXl6Z3VKamFuTGdpc2RqZ3ljcEZKUEEyNlNwVlVubFY0RTJ0MjhNRXViTlFD?=
 =?utf-8?B?RTg3Qkh2TnR1UmphSm9LZExKM1dtdUo3Wm5CbHl3K3BXbmxJb0dBMytYZXBy?=
 =?utf-8?B?QzZCTzRMWjNsVmc3TXpncVdyOHNQeU50K0oxMmpSR2lwYXE3b2w3Qmt4eHJX?=
 =?utf-8?B?TEhnUlhIeFZyOVUycXh3bnV2N2wwMTg0b2R6alluVXNuQmhnVWQzejNOdzNC?=
 =?utf-8?B?ald6TVhFRHM1Nnl5Sk4rRzdNQllVaDZvMWxiTnRhRFNNOUw2QUZkdUFiSnZw?=
 =?utf-8?B?Y0YrUEd1bnRFWFhtM1E2OFVPQWRRSVZPem83RnVBWVFHU0NnU2k4WFpYdnVr?=
 =?utf-8?B?SjhwM2FHVkVGTS9VOXRiUjJsRFZTejFySE81U09BbFN6S0J2Tm9GUkRvN3lr?=
 =?utf-8?B?VjQwa0huVElqUjlhaDhIRVphMWxJUWUvc2pXNTc1YUovckVjMUpCVDdXZnc2?=
 =?utf-8?B?ZmVkeFNiZkVOWmNnYmUzN3MwYXExZ0EwbVU5dlQ1aVhwOUFxbnp4MnpMcUJU?=
 =?utf-8?B?cFgxd2Z1SW84Y3JhSjF4T2lwS3hrN3M5WXI3emxjQ2ZjckM4VFhxcVZCR0xr?=
 =?utf-8?B?L2l4aHg2cXp6M2xZZDUydHBUYzM1T3N0UXRTUUppSkpnQ2pDREFTYlVMVVZV?=
 =?utf-8?B?YnRQdUJUOGVUZEJrbWZZYzhWMlFLZ3cvTlhCalZUYW5YVzFCSkdLTmxaRm1Y?=
 =?utf-8?B?Y1hpZ2ptTG42N0YyeHJwYmYxNTNZYlErYkpkOXJIL25sWWNHSmFVRzdpU0k3?=
 =?utf-8?B?OEd1ZTJobVJZcWprbkM4VlUrYUF2NGFrVXFoV1pxSEZmaE1UZ3ZMQ2ZZdE43?=
 =?utf-8?B?ekJRR1dsTUx5d251ZmhPVTk2bTB2a0pLV2p1TVkwUGNLWkhPczNpVzBEcVZi?=
 =?utf-8?B?Mnp4bWFJYzBVc0VXZTlGbWVJOVN2OVJMc2RKVWxGbTlpTFJMa1diY2RZSHNM?=
 =?utf-8?B?VmNSRlNyQ2d3WWFWam50ejR4Nm9OUmthVHl5S0YyOTd0VVJyWUJwUisxa0RT?=
 =?utf-8?B?ZGF4Z0g0bkJkc29WM01JTlMvODhJOG1NOVZnVWlXR3RxWTFhOEhzblVNYWJD?=
 =?utf-8?B?aTd2cVBvR2prU0FjREdTYnJJVjVnOWZGTWZQVk5GUlVPZUpuY3RFcTFoTnVP?=
 =?utf-8?B?dmxFLzdvVndSbWROMEFBdGlIcnVCcWhndUtSL2l0NUwvTEY0dndRcFFFOWVh?=
 =?utf-8?B?bjNTd1B6TENHY1owcEw3NFNEMGJIekJIY1YwV1pqN2xiOUdYeFlnbnRFVXox?=
 =?utf-8?B?MFRjWWRBck5jQ0RtbzRFdExYeWlDZXhieTFYdjgzbVFmR29CZHZHUFkwSUhs?=
 =?utf-8?B?T0lpQWU0aStRNkxBbHZjd05MUEJ0cURvelVHd3lXdlBmL2IzNWd4a1NhaXUy?=
 =?utf-8?B?V05ub0dZOHYzUW1rSmIrRG9zeTcyQUxkOTF5TFhTeWpDZVdtSXBsdmVMV3pE?=
 =?utf-8?B?cEoyMkp0M003Y2tvOGliUHl0bG95YXYxVzNQTW9Td0dZbDg2bGpPNXErdE9V?=
 =?utf-8?B?MGJuaG5BQ2t6U0JIWWR3VlRscWM2dzBNS3ZxZ3lNUlNrdkEyS3FiRXJrSkFO?=
 =?utf-8?B?d3B2SUZtTDNJdSs1MkNzVWprN3JXd2QwRjB3dkRVTXU4ZXZ5TjVuU0VlUWRW?=
 =?utf-8?B?aUdlam9OcldlTnJHOThQS0RLa1k2YSt1alByVmFoSjBzMmFpZkRmbWlQdmdE?=
 =?utf-8?B?T3AyOVRFV0ZiVkIwR0x6dHIzTjFGV1IyQkhqb3E5YXlNeXBhOUwxdHpZVnlJ?=
 =?utf-8?B?c2orSWdMa3RrdTRHMXYrcXdnTWY0cUgzYWdVZHJjRWp4RW5IQ1VnQkVhVWdU?=
 =?utf-8?B?d25VUnp2a3VBSlUyUUJWU2RRN3I1Nlk2dWR6cHNLWWJwb3VVMmlldTdWR2hy?=
 =?utf-8?B?VExWOVdyUTcvbHQ4bWRhblpoaU1wbU1UOHFrVFBIQmQveXczM044SWNQU3BI?=
 =?utf-8?B?dUx0cDA0RDgxQnJGOGUwOVVYbGswcHBTZXNtQlZNTUMrMEtDNVp2NEVGYjhC?=
 =?utf-8?B?c3VWSzF3UUJSZW1aaVh0aEhQV1lGa0xPNGtnUGVuUjduUGlSWUM2TDhOblpW?=
 =?utf-8?B?NGc9PQ==?=
Content-ID: <7668EE16E65BF84C86E5F1B570141355@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB7682.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a175ba57-a917-4e22-47eb-08dc221bdf2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2024 05:17:08.3020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y8CvadDV1Z3/8eMiNibD/SKlX+7H9fRXmU33DWqYEIsSwPlZATz+/WrczJYCcMIyjHHqNPRoKZq7G6/dkZa2CvDgztCysld4NaXI+oPzldY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8383
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--29.216800-8.000000
X-TMASE-MatchedRID: 0dFPYP4mu5QOwH4pD14DsPHkpkyUphL9meN8m2FdGic3xO2R3boBWFbu
 qIY+/skQkABPgKBt/0rbaVyalxbpdC8tL8AlQGk8jNvYZHpO13et4laWdJbsDIKwF4K/wIz9p5d
 w0IIWrKQQipsrfhmDl/EhOj/FQgkTOlcsoX/uQ8jN+qWlu2ZxaFAI6wCVrE3vNEJplIoT86xAuX
 BRNXoK5iwXMFPlpsQ1jhJi18RLqAJv4CIIATnzlxT656LDV3kUTJDl9FKHbrl0TRq4bcxmH8VA0
 8S977kgdSeUDaSPgEueU6zuRbTFfa5t5nK2l6NDYR6QE8KYfsgRKRMYqsuVUN9zZd3pUn7KB5/k
 Wgq1QbP51Y9I9gr+WkEan9iSsRLNsi3B2Xfuo4aGwT67eecJ8DFcf92WG8u/R2YNIFh+clEGk2p
 TPAu+9xvbS1sPuc0ruXLKq++rPJdccQ8eam5EfdIFVVzYGjNKWQy9YC5qGvz6APa9i04WGCq2rl
 3dzGQ1A/3R8k/14e0=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--29.216800-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 2FE38DFDE91BA03DDAA495FE1086EAAD440C6EC70E4118A5C456F67ECA8972A62000:8
Content-Type: multipart/alternative;
 boundary="__=_Part_Boundary_009_109155436.600273986"
X-Mailman-Approved-At: Mon, 05 Feb 2024 13:34:56 +0000
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

--__=_Part_Boundary_009_109155436.600273986
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+PGJvZHk+PHA+DQo8cHJlPg0KT24mIzMyO1RodSwmIzMyOzIwMjQtMDEtMjUmIzMyO2F0
JiMzMjsxOToxNyYjMzI7KzAxMDAsJiMzMjtEYW5pZWwmIzMyO1ZldHRlciYjMzI7d3JvdGU6DQom
Z3Q7JiMzMjsmIzMyOyYjMzI7DQomZ3Q7JiMzMjtFeHRlcm5hbCYjMzI7ZW1haWwmIzMyOzomIzMy
O1BsZWFzZSYjMzI7ZG8mIzMyO25vdCYjMzI7Y2xpY2smIzMyO2xpbmtzJiMzMjtvciYjMzI7b3Bl
biYjMzI7YXR0YWNobWVudHMmIzMyO3VudGlsDQomZ3Q7JiMzMjt5b3UmIzMyO2hhdmUmIzMyO3Zl
cmlmaWVkJiMzMjt0aGUmIzMyO3NlbmRlciYjMzI7b3ImIzMyO3RoZSYjMzI7Y29udGVudC4NCiZn
dDsmIzMyOyYjMzI7T24mIzMyO1R1ZSwmIzMyO0phbiYjMzI7MjMsJiMzMjsyMDI0JiMzMjthdCYj
MzI7MDY6MDk6MDVBTSYjMzI7KzAwMDAsJiMzMjtKYXNvbi1KSCYjMzI7TGluJiMzMjsoJiMyNjUx
OTsmIzMwNTkxOyYjMzEwNzc7KSYjMzI7d3JvdGU6DQomZ3Q7JiMzMjsmZ3Q7JiMzMjtIaSYjMzI7
TWF4aW1lLCYjMzI7RGFuaWVsLA0KJmd0OyYjMzI7Jmd0OyYjMzI7DQomZ3Q7JiMzMjsmZ3Q7JiMz
MjtXZSYjMzI7ZW5jb3VudGVyZWQmIzMyO3NpbWlsYXImIzMyO2lzc3VlJiMzMjt3aXRoJiMzMjtt
ZWRpYXRlayYjMzI7U29Dcy4NCiZndDsmIzMyOyZndDsmIzMyOw0KJmd0OyYjMzI7Jmd0OyYjMzI7
V2UmIzMyO2hhdmUmIzMyO2ZvdW5kJiMzMjt0aGF0JiMzMjtpbiYjMzI7ZHJtX2F0b21pY19oZWxw
ZXJfY29tbWl0X3JwbSgpLCYjMzI7d2hlbg0KJmd0OyYjMzI7ZGlzYWJsaW5nDQomZ3Q7JiMzMjsm
Z3Q7JiMzMjt0aGUmIzMyO2N1cnNvciYjMzI7cGxhbmUsJiMzMjt0aGUmIzMyO29sZF9zdGF0ZS0m
Z3Q7bGVnYWN5X2N1cnNvcl91cGRhdGUmIzMyO2luDQomZ3Q7JiMzMjsmZ3Q7JiMzMjtkcm1fYXRv
bWljX3dhaXRfZm9yX3ZibGFuaygpJiMzMjtpcyYjMzI7c2V0JiMzMjt0byYjMzI7dHJ1ZS4NCiZn
dDsmIzMyOyZndDsmIzMyO0FzJiMzMjt0aGUmIzMyO3Jlc3VsdCwmIzMyO3dlJiMzMjthcmUmIzMy
O25vdCYjMzI7YWN0dWFsbHkmIzMyO3dhaXRpbmcmIzMyO2ZvciYjMzI7YSYjMzI7dmxiYW5rJiMz
Mjt0byYjMzI7d2FpdCYjMzI7Zm9yDQomZ3Q7JiMzMjtvdXINCiZndDsmIzMyOyZndDsmIzMyO2hh
cmR3YXJlJiMzMjt0byYjMzI7Y2xvc2UmIzMyO3RoZSYjMzI7Y3Vyc29yJiMzMjtwbGFuZS4mIzMy
O1N1YnNlcXVlbnRseSwmIzMyO3RoZSYjMzI7ZXhlY3V0aW9uDQomZ3Q7JiMzMjsmZ3Q7JiMzMjtw
cm9jZWVkcyYjMzI7dG8mIzMyO2RybV9hdG9taWNfaGVscGVyX2NsZWFudXBfcGxhbmVzKCkmIzMy
O3RvJiMzMjsmIzMyO2ZyZWUmIzMyO3RoZSYjMzI7Y3Vyc29yDQomZ3Q7JiMzMjsmZ3Q7JiMzMjti
dWZmZXIuJiMzMjtUaGlzJiMzMjtjYW4mIzMyO2xlYWQmIzMyO3RvJiMzMjt1c2UtYWZ0ZXItZnJl
ZSYjMzI7aXNzdWVzJiMzMjt3aXRoJiMzMjtvdXImIzMyO2hhcmR3YXJlLg0KJmd0OyYjMzI7Jmd0
OyYjMzI7DQomZ3Q7JiMzMjsmZ3Q7JiMzMjtDb3VsZCYjMzI7eW91JiMzMjtwbGVhc2UmIzMyO2Fw
cGx5JiMzMjt0aGlzJiMzMjtwYXRjaCYjMzI7dG8mIzMyO2ZpeCYjMzI7b3VyJiMzMjtwcm9ibGVt
JiM2MzsNCiZndDsmIzMyOyZndDsmIzMyO09yJiMzMjthcmUmIzMyO3RoZXJlJiMzMjthbnkmIzMy
O2NvbnNpZGVyYXRpb25zJiMzMjtmb3ImIzMyO25vdCYjMzI7YXBwbHlpbmcmIzMyO3RoaXMmIzMy
O3BhdGNoJiM2MzsNCiZndDsmIzMyOw0KJmd0OyYjMzI7TW9zdGx5JiMzMjtpdCYjMzI7bmVlZHMm
IzMyO3NvbWVvbmUmIzMyO3RvJiMzMjtjb2xsZWN0JiMzMjthJiMzMjtwaWxlJiMzMjtvZiYjMzI7
YWNrcy90ZXN0ZWQtYnkmIzMyO2FuZCYjMzI7dGhlbg0KJmd0OyYjMzI7bGFuZA0KJmd0OyYjMzI7
aXQuDQomZ3Q7JiMzMjsNCg0KR290JiMzMjtpdC4mIzMyO0kmIzMyO3dvdWxkJiMzMjthZGQmIzMy
O3Rlc3RlZC1ieSYjMzI7dGFnJiMzMjtmb3ImIzMyO21lZGlhdGVrJiMzMjtTb0MuDQoNCiZndDsm
IzMyO0kmIzM5O2QmIzMyO2JlJiMzMjtfdmVyeV8mIzMyO2hhcHB5JiMzMjtpZiYjMzI7c29tZW9u
ZSYjMzI7ZWxzZSYjMzI7Y2FuJiMzMjt0YWtlJiMzMjtjYXJlJiMzMjtvZiYjMzI7dGhhdCYjMzI7
Li4uDQomZ3Q7JiMzMjsNCiZndDsmIzMyO1RoZXJlJiMzOTtzJiMzMjthbHNvJiMzMjt0aGUmIzMy
O3BvdGVudGlhbCYjMzI7aXNzdWUmIzMyO3RoYXQmIzMyO2l0JiMzMjttaWdodCYjMzI7c2xvdyYj
MzI7ZG93biYjMzI7c29tZSYjMzI7b2YmIzMyO3RoZQ0KJmd0OyYjMzI7bGVnYWN5JiMzMjtYMTEm
IzMyO3VzZS1jYXNlcyYjMzI7dGhhdCYjMzI7cmVhbGx5JiMzMjtuZWVkZWQmIzMyO2EmIzMyO25v
bi1ibG9ja2luZyYjMzI7Y3Vyc29yLCYjMzI7YnV0JiMzMjtJDQomZ3Q7JiMzMjt0aGluaw0KJmd0
OyYjMzI7YWxsJiMzMjt0aGUmIzMyO2RyaXZlcnMmIzMyO3doZXJlJiMzMjt0aGlzJiMzMjttYXR0
ZXJzJiMzMjtoYXZlJiMzMjtzd2l0Y2hlZCYjMzI7b3ZlciYjMzI7dG8mIzMyO3RoZSYjMzI7YXN5
bmMNCiZndDsmIzMyO3BsYW5lDQomZ3Q7JiMzMjt1cGRhdGUmIzMyO3N0dWZmJiMzMjttZWFud2hp
bGUuJiMzMjtTbyYjMzI7aG9wZWZ1bGx5JiMzMjt0aGF0JiMzOTtzJiMzMjtnb29kLg0KJmd0OyYj
MzI7DQoNCkkmIzMyO3RoaW5rJiMzMjthbGwmIzMyO3RoZSYjMzI7ZHJpdmVycyYjMzI7c2hvdWxk
JiMzMjtoYXZlJiMzMjtzd2l0Y2hlZCYjMzI7dG8mIzMyO2FzeW5jJiMzMjtwbGFuZSYjMzI7dXBk
YXRlLg0KDQpDYW4mIzMyO3dlJiMzMjthZGQmIzMyO3RoZSYjMzI7Y2hlY2tpbmcmIzMyO2NvbmRp
dGlvbiYjMzI7dG8mIzMyO3NlZSYjMzI7aWYmIzMyO2F0b21pY19hc3luY191cGRhdGUvY2hlY2sN
CmZ1bmN0aW9uJiMzMjthcmUmIzMyO2ltcGxlbWVudGVkJiM2MzsNCg0KUmVnYXJkcywNCkphc29u
LUpILkxpbg0KDQomZ3Q7JiMzMjtDaGVlcnMsJiMzMjtTaW1hDQomZ3Q7JiMzMjsmZ3Q7JiMzMjsN
CiZndDsmIzMyOyZndDsmIzMyO1JlZ2FyZHMsDQomZ3Q7JiMzMjsmZ3Q7JiMzMjtKYXNvbi1KSC5M
aW4NCiZndDsmIzMyOyZndDsmIzMyOw0KJmd0OyYjMzI7Jmd0OyYjMzI7T24mIzMyO1R1ZSwmIzMy
OzIwMjMtMDMtMDcmIzMyO2F0JiMzMjsxNTo1NiYjMzI7KzAxMDAsJiMzMjtNYXhpbWUmIzMyO1Jp
cGFyZCYjMzI7d3JvdGU6DQomZ3Q7JiMzMjsmZ3Q7JiMzMjsmZ3Q7JiMzMjtIaSwNCiZndDsmIzMy
OyZndDsmIzMyOyZndDsmIzMyOw0KJmd0OyYjMzI7Jmd0OyYjMzI7Jmd0OyYjMzI7T24mIzMyO1Ro
dSwmIzMyO0ZlYiYjMzI7MTYsJiMzMjsyMDIzJiMzMjthdCYjMzI7MTI6MTI6MTNQTSYjMzI7KzAx
MDAsJiMzMjtEYW5pZWwmIzMyO1ZldHRlciYjMzI7d3JvdGU6DQomZ3Q7JiMzMjsmZ3Q7JiMzMjsm
Z3Q7JiMzMjsmZ3Q7JiMzMjtUaGUmIzMyO3N0dWZmJiMzMjtuZXZlciYjMzI7cmVhbGx5JiMzMjt3
b3JrZWQsJiMzMjthbmQmIzMyO2xlYWRzJiMzMjt0byYjMzI7bG90cyYjMzI7b2YmIzMyO2Z1biYj
MzI7YmVjYXVzZQ0KJmd0OyYjMzI7aXQNCiZndDsmIzMyOyZndDsmIzMyOyZndDsmIzMyOyZndDsm
IzMyO291dC1vZi1vcmRlciYjMzI7ZnJlZXMmIzMyO2F0b21pYyYjMzI7c3RhdGVzLiYjMzI7V2hp
Y2gmIzMyO3Vwc2V0cyYjMzI7S0FTQU4sJiMzMjthbW9uZw0KJmd0OyYjMzI7b3RoZXINCiZndDsm
IzMyOyZndDsmIzMyOyZndDsmIzMyOyZndDsmIzMyO3RoaW5ncy4NCiZndDsmIzMyOyZndDsmIzMy
OyZndDsmIzMyOyZndDsmIzMyOw0KJmd0OyYjMzI7Jmd0OyYjMzI7Jmd0OyYjMzI7Jmd0OyYjMzI7
Rm9yJiMzMjthc3luYyYjMzI7dXBkYXRlcyYjMzI7d2UmIzMyO25vdyYjMzI7aGF2ZSYjMzI7YSYj
MzI7bW9yZSYjMzI7c29saWQmIzMyO3NvbHV0aW9uJiMzMjt3aXRoJiMzMjt0aGUNCiZndDsmIzMy
OyZndDsmIzMyOyZndDsmIzMyOyZndDsmIzMyOy0mZ3Q7YXRvbWljX2FzeW5jX2NoZWNrJiMzMjth
bmQmIzMyOy0mZ3Q7YXRvbWljX2FzeW5jX2NvbW1pdCYjMzI7aG9va3MuJiMzMjtTdXBwb3J0DQom
Z3Q7JiMzMjtmb3INCiZndDsmIzMyOyZndDsmIzMyOyZndDsmIzMyOyZndDsmIzMyO3RoYXQNCiZn
dDsmIzMyOyZndDsmIzMyOyZndDsmIzMyOyZndDsmIzMyO2ZvciYjMzI7bXNtJiMzMjthbmQmIzMy
O3ZjNCYjMzI7bGFuZGVkLiYjMzI7bm91dmVhdSYjMzI7YW5kJiMzMjtpOTE1JiMzMjtoYXZlJiMz
Mjt0aGVpciYjMzI7b3duJiMzMjtjb21taXQNCiZndDsmIzMyOyZndDsmIzMyOyZndDsmIzMyOyZn
dDsmIzMyO3JvdXRpbmVzLCYjMzI7ZG9pbmcmIzMyO3NvbWV0aGluZyYjMzI7c2ltaWxhci4NCiZn
dDsmIzMyOyZndDsmIzMyOyZndDsmIzMyOyZndDsmIzMyOw0KJmd0OyYjMzI7Jmd0OyYjMzI7Jmd0
OyYjMzI7Jmd0OyYjMzI7Rm9yJiMzMjtldmVyeW9uZSYjMzI7ZWxzZSYjMzI7aXQmIzM5O3MmIzMy
O3Byb2JhYmx5JiMzMjtiZXR0ZXImIzMyO3RvJiMzMjtyZW1vdmUmIzMyO3RoZSYjMzI7dXNlLWFm
dGVyLQ0KJmd0OyYjMzI7ZnJlZQ0KJmd0OyYjMzI7Jmd0OyYjMzI7Jmd0OyYjMzI7Jmd0OyYjMzI7
YnVnLCYjMzI7YW5kJiMzMjtlbmNvdXJhZ2UmIzMyO2ZvbGtzJiMzMjt0byYjMzI7dXNlJiMzMjt0
aGUmIzMyO2FzeW5jJiMzMjtzdXBwb3J0JiMzMjtpbnN0ZWFkLiYjMzI7VGhlDQomZ3Q7JiMzMjsm
Z3Q7JiMzMjsmZ3Q7JiMzMjsmZ3Q7JiMzMjthZmZlY3RlZCYjMzI7ZHJpdmVycyYjMzI7d2hpY2gm
IzMyO3JlZ2lzdGVyJiMzMjthJiMzMjtsZWdhY3kmIzMyO2N1cnNvciYjMzI7cGxhbmUmIzMyO2Fu
ZCYjMzI7ZG9uJiMzOTt0DQomZ3Q7JiMzMjsmZ3Q7JiMzMjsmZ3Q7JiMzMjsmZ3Q7JiMzMjtlaXRo
ZXINCiZndDsmIzMyOyZndDsmIzMyOyZndDsmIzMyOyZndDsmIzMyO3VzZSYjMzI7dGhlJiMzMjtu
ZXcmIzMyO2FzeW5jJiMzMjtzdHVmZiYjMzI7b3ImIzMyO3RoZWlyJiMzMjtvd24mIzMyO2NvbW1p
dCYjMzI7cm91dGluZSYjMzI7YXJlOg0KJmd0OyYjMzI7YW1kZ3B1LA0KJmd0OyYjMzI7Jmd0OyYj
MzI7Jmd0OyYjMzI7Jmd0OyYjMzI7YXRtZWwsJiMzMjttZWRpYXRlaywmIzMyO3F4bCwmIzMyO3Jv
Y2tjaGlwLCYjMzI7c3RpLCYjMzI7c3VuNGksJiMzMjt0ZWdyYSwmIzMyO3ZpcnRpbywmIzMyO2Fu
ZA0KJmd0OyYjMzI7Jmd0OyYjMzI7Jmd0OyYjMzI7Jmd0OyYjMzI7dm13Z2Z4Lg0KJmd0OyYjMzI7
Jmd0OyYjMzI7Jmd0OyYjMzI7Jmd0OyYjMzI7DQomZ3Q7JiMzMjsmZ3Q7JiMzMjsmZ3Q7JiMzMjsm
Z3Q7JiMzMjtJbnNwaXJlZCYjMzI7YnkmIzMyO2FuJiMzMjthbWRncHUmIzMyO2J1ZyYjMzI7cmVw
b3J0Lg0KJmd0OyYjMzI7Jmd0OyYjMzI7Jmd0OyYjMzI7DQomZ3Q7JiMzMjsmZ3Q7JiMzMjsmZ3Q7
JiMzMjtUaGFua3MmIzMyO2ZvciYjMzI7c3VibWl0dGluZyYjMzI7dGhhdCYjMzI7cGF0Y2guJiMz
MjtJdCYjMzk7cyYjMzI7YmVlbiYjMzI7aW4mIzMyO3RoZSYjMzI7ZG93bnN0cmVhbSYjMzI7UlBp
DQomZ3Q7JiMzMjsmZ3Q7JiMzMjsmZ3Q7JiMzMjt0cmVlDQomZ3Q7JiMzMjsmZ3Q7JiMzMjsmZ3Q7
JiMzMjtmb3ImIzMyO2EmIzMyO3doaWxlLCYjMzI7c28mIzMyO0kmIzM5O2QmIzMyO3JlYWxseSYj
MzI7bGlrZSYjMzI7aXQmIzMyO3RvJiMzMjtiZSYjMzI7bWVyZ2VkJiMzMjtldmVudHVhbGx5JiMz
Mjs6KQ0KJmd0OyYjMzI7Jmd0OyYjMzI7Jmd0OyYjMzI7DQomZ3Q7JiMzMjsmZ3Q7JiMzMjsmZ3Q7
JiMzMjtBY2tlZC1ieTomIzMyO01heGltZSYjMzI7UmlwYXJkJiMzMjsmbHQ7bWF4aW1lQGNlcm5v
LnRlY2gmZ3Q7DQomZ3Q7JiMzMjsmZ3Q7JiMzMjsmZ3Q7JiMzMjsNCiZndDsmIzMyOyZndDsmIzMy
OyZndDsmIzMyO01heGltZQ0KJmd0OyYjMzI7DQoNCjwvcHJlPg0KPC9wPjwvYm9keT48L2h0bWw+
PCEtLXR5cGU6dGV4dC0tPjwhLS17LS0+PHByZT4qKioqKioqKioqKioqIE1FRElBVEVLIENvbmZp
ZGVudGlhbGl0eSBOb3RpY2UgKioqKioqKioqKioqKioqKioqKioNClRoZSBpbmZvcm1hdGlvbiBj
b250YWluZWQgaW4gdGhpcyBlLW1haWwgbWVzc2FnZSAoaW5jbHVkaW5nIGFueSANCmF0dGFjaG1l
bnRzKSBtYXkgYmUgY29uZmlkZW50aWFsLCBwcm9wcmlldGFyeSwgcHJpdmlsZWdlZCwgb3Igb3Ro
ZXJ3aXNlDQpleGVtcHQgZnJvbSBkaXNjbG9zdXJlIHVuZGVyIGFwcGxpY2FibGUgbGF3cy4gSXQg
aXMgaW50ZW5kZWQgdG8gYmUgDQpjb252ZXllZCBvbmx5IHRvIHRoZSBkZXNpZ25hdGVkIHJlY2lw
aWVudChzKS4gQW55IHVzZSwgZGlzc2VtaW5hdGlvbiwgDQpkaXN0cmlidXRpb24sIHByaW50aW5n
LCByZXRhaW5pbmcgb3IgY29weWluZyBvZiB0aGlzIGUtbWFpbCAoaW5jbHVkaW5nIGl0cyANCmF0
dGFjaG1lbnRzKSBieSB1bmludGVuZGVkIHJlY2lwaWVudChzKSBpcyBzdHJpY3RseSBwcm9oaWJp
dGVkIGFuZCBtYXkgDQpiZSB1bmxhd2Z1bC4gSWYgeW91IGFyZSBub3QgYW4gaW50ZW5kZWQgcmVj
aXBpZW50IG9mIHRoaXMgZS1tYWlsLCBvciBiZWxpZXZlIA0KdGhhdCB5b3UgaGF2ZSByZWNlaXZl
ZCB0aGlzIGUtbWFpbCBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIA0KaW1tZWRp
YXRlbHkgKGJ5IHJlcGx5aW5nIHRvIHRoaXMgZS1tYWlsKSwgZGVsZXRlIGFueSBhbmQgYWxsIGNv
cGllcyBvZiANCnRoaXMgZS1tYWlsIChpbmNsdWRpbmcgYW55IGF0dGFjaG1lbnRzKSBmcm9tIHlv
dXIgc3lzdGVtLCBhbmQgZG8gbm90DQpkaXNjbG9zZSB0aGUgY29udGVudCBvZiB0aGlzIGUtbWFp
bCB0byBhbnkgb3RoZXIgcGVyc29uLiBUaGFuayB5b3UhDQo8L3ByZT48IS0tfS0tPg==

--__=_Part_Boundary_009_109155436.600273986
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDI0LTAxLTI1IGF0IDE5OjE3ICswMTAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0K
PiAgCSANCj4gRXh0ZXJuYWwgZW1haWwgOiBQbGVhc2UgZG8gbm90IGNsaWNrIGxpbmtzIG9yIG9w
ZW4gYXR0YWNobWVudHMgdW50aWwNCj4geW91IGhhdmUgdmVyaWZpZWQgdGhlIHNlbmRlciBvciB0
aGUgY29udGVudC4NCj4gIE9uIFR1ZSwgSmFuIDIzLCAyMDI0IGF0IDA2OjA5OjA1QU0gKzAwMDAs
IEphc29uLUpIIExpbiAo5p6X552/56WlKSB3cm90ZToNCj4gPiBIaSBNYXhpbWUsIERhbmllbCwN
Cj4gPiANCj4gPiBXZSBlbmNvdW50ZXJlZCBzaW1pbGFyIGlzc3VlIHdpdGggbWVkaWF0ZWsgU29D
cy4NCj4gPiANCj4gPiBXZSBoYXZlIGZvdW5kIHRoYXQgaW4gZHJtX2F0b21pY19oZWxwZXJfY29t
bWl0X3JwbSgpLCB3aGVuDQo+IGRpc2FibGluZw0KPiA+IHRoZSBjdXJzb3IgcGxhbmUsIHRoZSBv
bGRfc3RhdGUtPmxlZ2FjeV9jdXJzb3JfdXBkYXRlIGluDQo+ID4gZHJtX2F0b21pY193YWl0X2Zv
cl92YmxhbmsoKSBpcyBzZXQgdG8gdHJ1ZS4NCj4gPiBBcyB0aGUgcmVzdWx0LCB3ZSBhcmUgbm90
IGFjdHVhbGx5IHdhaXRpbmcgZm9yIGEgdmxiYW5rIHRvIHdhaXQgZm9yDQo+IG91cg0KPiA+IGhh
cmR3YXJlIHRvIGNsb3NlIHRoZSBjdXJzb3IgcGxhbmUuIFN1YnNlcXVlbnRseSwgdGhlIGV4ZWN1
dGlvbg0KPiA+IHByb2NlZWRzIHRvIGRybV9hdG9taWNfaGVscGVyX2NsZWFudXBfcGxhbmVzKCkg
dG8gIGZyZWUgdGhlIGN1cnNvcg0KPiA+IGJ1ZmZlci4gVGhpcyBjYW4gbGVhZCB0byB1c2UtYWZ0
ZXItZnJlZSBpc3N1ZXMgd2l0aCBvdXIgaGFyZHdhcmUuDQo+ID4gDQo+ID4gQ291bGQgeW91IHBs
ZWFzZSBhcHBseSB0aGlzIHBhdGNoIHRvIGZpeCBvdXIgcHJvYmxlbT8NCj4gPiBPciBhcmUgdGhl
cmUgYW55IGNvbnNpZGVyYXRpb25zIGZvciBub3QgYXBwbHlpbmcgdGhpcyBwYXRjaD8NCj4gDQo+
IE1vc3RseSBpdCBuZWVkcyBzb21lb25lIHRvIGNvbGxlY3QgYSBwaWxlIG9mIGFja3MvdGVzdGVk
LWJ5IGFuZCB0aGVuDQo+IGxhbmQNCj4gaXQuDQo+IA0KDQpHb3QgaXQuIEkgd291bGQgYWRkIHRl
c3RlZC1ieSB0YWcgZm9yIG1lZGlhdGVrIFNvQy4NCg0KPiBJJ2QgYmUgX3ZlcnlfIGhhcHB5IGlm
IHNvbWVvbmUgZWxzZSBjYW4gdGFrZSBjYXJlIG9mIHRoYXQgLi4uDQo+IA0KPiBUaGVyZSdzIGFs
c28gdGhlIHBvdGVudGlhbCBpc3N1ZSB0aGF0IGl0IG1pZ2h0IHNsb3cgZG93biBzb21lIG9mIHRo
ZQ0KPiBsZWdhY3kgWDExIHVzZS1jYXNlcyB0aGF0IHJlYWxseSBuZWVkZWQgYSBub24tYmxvY2tp
bmcgY3Vyc29yLCBidXQgSQ0KPiB0aGluaw0KPiBhbGwgdGhlIGRyaXZlcnMgd2hlcmUgdGhpcyBt
YXR0ZXJzIGhhdmUgc3dpdGNoZWQgb3ZlciB0byB0aGUgYXN5bmMNCj4gcGxhbmUNCj4gdXBkYXRl
IHN0dWZmIG1lYW53aGlsZS4gU28gaG9wZWZ1bGx5IHRoYXQncyBnb29kLg0KPiANCg0KSSB0aGlu
ayBhbGwgdGhlIGRyaXZlcnMgc2hvdWxkIGhhdmUgc3dpdGNoZWQgdG8gYXN5bmMgcGxhbmUgdXBk
YXRlLg0KDQpDYW4gd2UgYWRkIHRoZSBjaGVja2luZyBjb25kaXRpb24gdG8gc2VlIGlmIGF0b21p
Y19hc3luY191cGRhdGUvY2hlY2sNCmZ1bmN0aW9uIGFyZSBpbXBsZW1lbnRlZD8NCg0KUmVnYXJk
cywNCkphc29uLUpILkxpbg0KDQo+IENoZWVycywgU2ltYQ0KPiA+IA0KPiA+IFJlZ2FyZHMsDQo+
ID4gSmFzb24tSkguTGluDQo+ID4gDQo+ID4gT24gVHVlLCAyMDIzLTAzLTA3IGF0IDE1OjU2ICsw
MTAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOg0KPiA+ID4gSGksDQo+ID4gPiANCj4gPiA+IE9uIFRo
dSwgRmViIDE2LCAyMDIzIGF0IDEyOjEyOjEzUE0gKzAxMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6
DQo+ID4gPiA+IFRoZSBzdHVmZiBuZXZlciByZWFsbHkgd29ya2VkLCBhbmQgbGVhZHMgdG8gbG90
cyBvZiBmdW4gYmVjYXVzZQ0KPiBpdA0KPiA+ID4gPiBvdXQtb2Ytb3JkZXIgZnJlZXMgYXRvbWlj
IHN0YXRlcy4gV2hpY2ggdXBzZXRzIEtBU0FOLCBhbW9uZw0KPiBvdGhlcg0KPiA+ID4gPiB0aGlu
Z3MuDQo+ID4gPiA+IA0KPiA+ID4gPiBGb3IgYXN5bmMgdXBkYXRlcyB3ZSBub3cgaGF2ZSBhIG1v
cmUgc29saWQgc29sdXRpb24gd2l0aCB0aGUNCj4gPiA+ID4gLT5hdG9taWNfYXN5bmNfY2hlY2sg
YW5kIC0+YXRvbWljX2FzeW5jX2NvbW1pdCBob29rcy4gU3VwcG9ydA0KPiBmb3INCj4gPiA+ID4g
dGhhdA0KPiA+ID4gPiBmb3IgbXNtIGFuZCB2YzQgbGFuZGVkLiBub3V2ZWF1IGFuZCBpOTE1IGhh
dmUgdGhlaXIgb3duIGNvbW1pdA0KPiA+ID4gPiByb3V0aW5lcywgZG9pbmcgc29tZXRoaW5nIHNp
bWlsYXIuDQo+ID4gPiA+IA0KPiA+ID4gPiBGb3IgZXZlcnlvbmUgZWxzZSBpdCdzIHByb2JhYmx5
IGJldHRlciB0byByZW1vdmUgdGhlIHVzZS1hZnRlci0NCj4gZnJlZQ0KPiA+ID4gPiBidWcsIGFu
ZCBlbmNvdXJhZ2UgZm9sa3MgdG8gdXNlIHRoZSBhc3luYyBzdXBwb3J0IGluc3RlYWQuIFRoZQ0K
PiA+ID4gPiBhZmZlY3RlZCBkcml2ZXJzIHdoaWNoIHJlZ2lzdGVyIGEgbGVnYWN5IGN1cnNvciBw
bGFuZSBhbmQgZG9uJ3QNCj4gPiA+ID4gZWl0aGVyDQo+ID4gPiA+IHVzZSB0aGUgbmV3IGFzeW5j
IHN0dWZmIG9yIHRoZWlyIG93biBjb21taXQgcm91dGluZSBhcmU6DQo+IGFtZGdwdSwNCj4gPiA+
ID4gYXRtZWwsIG1lZGlhdGVrLCBxeGwsIHJvY2tjaGlwLCBzdGksIHN1bjRpLCB0ZWdyYSwgdmly
dGlvLCBhbmQNCj4gPiA+ID4gdm13Z2Z4Lg0KPiA+ID4gPiANCj4gPiA+ID4gSW5zcGlyZWQgYnkg
YW4gYW1kZ3B1IGJ1ZyByZXBvcnQuDQo+ID4gPiANCj4gPiA+IFRoYW5rcyBmb3Igc3VibWl0dGlu
ZyB0aGF0IHBhdGNoLiBJdCdzIGJlZW4gaW4gdGhlIGRvd25zdHJlYW0gUlBpDQo+ID4gPiB0cmVl
DQo+ID4gPiBmb3IgYSB3aGlsZSwgc28gSSdkIHJlYWxseSBsaWtlIGl0IHRvIGJlIG1lcmdlZCBl
dmVudHVhbGx5IDopDQo+ID4gPiANCj4gPiA+IEFja2VkLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhp
bWVAY2Vybm8udGVjaD4NCj4gPiA+IA0KPiA+ID4gTWF4aW1lDQo+IA0K

--__=_Part_Boundary_009_109155436.600273986--


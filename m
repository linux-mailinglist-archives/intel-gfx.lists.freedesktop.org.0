Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4368E97686D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 13:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E68A610EB5C;
	Thu, 12 Sep 2024 11:58:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q/nKXihe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F60410EB5C;
 Thu, 12 Sep 2024 11:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726142327; x=1757678327;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zQnXUMF0qqypv/iM70laF/zjTAtsDjibwXzNrPjMJdk=;
 b=Q/nKXihe/vXPjooQAz+s/A92B1yx4HJLIyIzfg0DXtneUHFUF/64Vz+g
 r7oGNxLht9LkTaV/QbSPslPf0Hw6asP7GvOuvXP6xJf0y607zg/jktP1U
 9yPo8iDUWc0yvuVv9rpT/cNukAM9jen/PI3CNfON0GtHvPZb44NOIqNtZ
 TCCY3eaodIdBP6XwMc8/TwlqtsQStYQZihekiyS4KFPJm8DioHpcakHF+
 CnXIF41IEQanWzBPtCpE3VL4o795kBjlEdyrS0N6mYoU7E2QpYt32LWC2
 jIjb41pS2U4SQx17yydKRMJopiy/iJHnCWZXCjkvPHGaQOKcRKu9BhtdV w==;
X-CSE-ConnectionGUID: /gwd+Y9mQXSL7xO4f1L6mg==
X-CSE-MsgGUID: aHvqwfqSSvutXo8WLv1gcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24473548"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="24473548"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:58:47 -0700
X-CSE-ConnectionGUID: Ty/IOCopTYCHGYVQ6/kVFg==
X-CSE-MsgGUID: gqrO3K0pQh6uGK1adYBOGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="68189383"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 04:58:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 04:58:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 04:58:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 04:58:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z77AiBI9GBGVoQkUggogCSBE25onDUYOJnTh0MkomSPJrPq837RV6mWzbOTq1gQX0J6YihtCQBSEfmtVq5u87ugGANaSgeOmldcWqlvtaOZu7DfNNoxfvANTRTho/MsPiTzs9ABkC4/LytcsSHiUmdywUlUPkRgUKyaBO/1f/f9ZWSv8p7SSaN5cqBHmo+z8W4DAbKn9lppI3waR+xeE3HjCu982JFz5Ikk5irj1V4ymK0dpHIl9plF+0svAxvCXO1AE878HZ1LRhmIUqKrEyS3sW8MhGQOewDp08uxC0GUeHq5jUWJoO2wxcQIQo4WqMPBwjvfUd/S/8dbMtyvoag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ypJj5p+TtMIbIICxGS2PfvQM2XjMdOsatTNG281060g=;
 b=I5LI8EJNEC49sVkoqRPo+bv7EShnHTovB4ukNlbPR4/1X9wytHEBsnSq9hfytv4U2Dk5kU5TRuy6O2JtT9LA+gj5Av9rqJzJYRknxeKR7NIrkG7eXNEY8CRT0Ymz9mb4Rx6HdhD7lfCcLlIT63Aq36eDSjPR8bRZr/gM082rcxrcwMf/bsKDDhTxoQRvHbdKSIn68YDyGOtSyOX8Jg2rGXMko06I3cIIq/nOqJpLlAPpi5bm7ASObH6Dy1PiVfXz7uuam3jGANvzC1QzfzLkzxbcFFm8/ysHI1bLvifRHy39sAe6VoUp9qGsfHn2qMECbJRADy/cIYtmvCtJsOO5mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5293.namprd11.prod.outlook.com (2603:10b6:5:390::20)
 by PH0PR11MB5904.namprd11.prod.outlook.com (2603:10b6:510:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.17; Thu, 12 Sep
 2024 11:58:37 +0000
Received: from DM4PR11MB5293.namprd11.prod.outlook.com
 ([fe80::e1f5:3b23:9560:2dc2]) by DM4PR11MB5293.namprd11.prod.outlook.com
 ([fe80::e1f5:3b23:9560:2dc2%3]) with mapi id 15.20.7962.016; Thu, 12 Sep 2024
 11:58:37 +0000
From: "Bommu, Krishnaiah" <krishnaiah.bommu@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "Upadhyay, Tejas"
 <tejas.upadhyay@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, =?iso-8859-1?Q?Thomas_Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, "Teres Alexis, Alan Previn"
 <alan.previn.teres.alexis@intel.com>, "Winkler, Tomas"
 <tomas.winkler@intel.com>, "Usyskin, Alexander"
 <alexander.usyskin@intel.com>, "linux-modules@vger.kernel.org"
 <linux-modules@vger.kernel.org>, Luis Chamberlain <mcgrof@kernel.org>
Subject: RE: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI Modules
 for i915/Xe Driver
Thread-Topic: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI Modules
 for i915/Xe Driver
Thread-Index: AQHbAm73lGp4NTx/3UOlFF18ADnlm7JRIFMAgAALD4CAAO4OMIAArkWAgAFHTtA=
Date: Thu, 12 Sep 2024 11:58:37 +0000
Message-ID: <DM4PR11MB5293DCB20388C7BA5950369A9D642@DM4PR11MB5293.namprd11.prod.outlook.com>
References: <20240909040317.17108-1-krishnaiah.bommu@intel.com>
 <ZuBfwqpIX4HAGwb1@intel.com>
 <3zgu3edmrjum2rbhu7tv5xo7xans2uper7qn3lswca3nsc4tdl@gevqfr65js4g>
 <DM4PR11MB529387DB2FBB0A5C1064895C9D9B2@DM4PR11MB5293.namprd11.prod.outlook.com>
 <b3gmlgx6tl5uyzsdsp6q36blhzchvhpvno25tvwrj6nnu23dmz@rkacgyjoxsru>
In-Reply-To: <b3gmlgx6tl5uyzsdsp6q36blhzchvhpvno25tvwrj6nnu23dmz@rkacgyjoxsru>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5293:EE_|PH0PR11MB5904:EE_
x-ms-office365-filtering-correlation-id: 53dd5627-d68e-44d1-c52b-08dcd3223c38
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?Jr/c2/Z55KcN/m15j4YLDF3ev/rYo0pqa0maLejq478hhM2Qm9ebxNgqqM?=
 =?iso-8859-1?Q?wPa/rIqg7tZhcaOLNJGErQHGRoAOZ7tJLW8u4m8atMF7sFEUdzlVlRKnU2?=
 =?iso-8859-1?Q?3sWOrwM6Ar4ayHa7m8lQvjdPAHZTKmRrIpyf4782cIKYX6Pn2slViSL0nE?=
 =?iso-8859-1?Q?ykyiiBMejzKUs+SNkjGZO3tSekYAfvGzsdna7LGKgdHkJb8ftkq5Rw9ADd?=
 =?iso-8859-1?Q?qAKLbOLsushjme9my07Bk7KhraKMahVaoyWLtLr0AytlqysjuofX23LeJ/?=
 =?iso-8859-1?Q?G4ck5+6/18RMOtE7h7JiZtKVyxeBIq2K0JUljhMBn/hxU49wDJBmfGOUWa?=
 =?iso-8859-1?Q?go7m0/LuxLrU7/DFL940C6OMLyzDIdLfohl5hlWH6UH9su7mIC7Bnvrxjo?=
 =?iso-8859-1?Q?s20sqdUXGkKzYPDYF7QXnNfbgXlAIpc4iDod+bem2j/ZHYXABXr5csyaWq?=
 =?iso-8859-1?Q?QgvuaTmZ+srVeI6M7Aowr46YRdV1QUlMW1rZdYmBLzz5ufQZymgdnE2mtf?=
 =?iso-8859-1?Q?nx3AZ315dNU3Cqpo1uXslSS+y4ZtmeNnuymRKp0z2yARnkye5tmnhjt0Jh?=
 =?iso-8859-1?Q?AhJo4TWJcL7g8D2Lqej2MIezBDoAX+6ITBtuysBFpAC7v0U66mgH9ZCHJi?=
 =?iso-8859-1?Q?Tke/XSeP76gUwi8fGBZObV/TiWepNy5l9NL/pLYSTD2aQQit01i05Iv+SZ?=
 =?iso-8859-1?Q?RUNIH78lLm6u/WY3n+cJ4Cd7cUxEbXbxYoZJCH9XEfG2s0rDoECPMu5twP?=
 =?iso-8859-1?Q?3lxtfU7eyLy4ugoLcZPj2h6PZIBgFQYzIn5SZk4IF0f+LgfR+PcCfwEPLK?=
 =?iso-8859-1?Q?dY7kVJrnXWpw78rEPtqFGn7B3yxjli2xuUUMEA+c3DDWFy6q7BQGlhx5AX?=
 =?iso-8859-1?Q?JUh9NgsLdanFwinqfEk0IAXePx3c3VH/bSxl7wIslgdVwtPS+2U5PskT2J?=
 =?iso-8859-1?Q?PWu1ccNDtQ3V0WoG+3X4Ki5f3dHuWrPHx+xjO6MGGpkN8rwsYagdpSUcY9?=
 =?iso-8859-1?Q?iJO3D1bbavsTDvkyT2IT3IMvyex4xtB2lbp14aBee1+PL6tH9UuEsbQPCU?=
 =?iso-8859-1?Q?ZpZfoBZRx3dyzWRR1p5aWFr+GMkejtuI+kjM1wO5HNpThZKmcm7wt+K3aQ?=
 =?iso-8859-1?Q?O+dHoPwDUioWPcQRjqqhi205A2kyGlxMx+ECM5hqF3Vv89k295O+aB+s3n?=
 =?iso-8859-1?Q?Pv4EVdoc1piYOWcIu6Z1rX/PhVMYqItofmkWlsLzofL3Jgy4Sa7iRy96xX?=
 =?iso-8859-1?Q?zaqL+Y6g6tkOYKrnAif+tjWMbAX/vRCG1rfshcKDzFciiD4B7y7aEM0oi4?=
 =?iso-8859-1?Q?9/eoIPH97C79Z9HdSjWKCWl2mDv6h3HSpai/oEMguzimuFd4Bu4zXVERX3?=
 =?iso-8859-1?Q?MW/KQGCLLvq/ZZgrQD3wkp2CviaSEi+fCxXZ+4r08XzO0kuHGa9mo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5293.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?wPvhSkFgGjtM/gw2+HcPnlr0fi2a2cHmkpgZIVrlXeJep7qiOTkxc+CgdR?=
 =?iso-8859-1?Q?0RNlmc3NJq9pGsFUoSaOKIYmnVOt6wIMvsJQIByVFxjkSn7Q+9SBHvNKyF?=
 =?iso-8859-1?Q?cnBmyuHKs+DjRm+zQMUV6RBcFLPgLECmpFwYR6i4O4SRQtqxGQesmtHhME?=
 =?iso-8859-1?Q?4lu/BW4XnuhIbswojCu/KWYsU0BpWrThOdFtD5+YLxYUKqviCELrHG+2sv?=
 =?iso-8859-1?Q?toIcZ8CRFlFiWSg98TiYpSYO0dbXkfYN/bWZqc89j8h/EtkIAXXdQkjWiT?=
 =?iso-8859-1?Q?ofOkofniQf6ur5VC6zbeM0zZUaMCOUH3nImyMXJBIpm+uEiC7cxmNOE+dC?=
 =?iso-8859-1?Q?d1gpeYAZE9W10zsvf2BNFvTHiO4tYwgXTCJSOrc4vX/Te8b30D6iYgSFDf?=
 =?iso-8859-1?Q?KhRPVqyC48MVgDuZE0bMmsNjHIowMi7m7x9s0OIC5g1+9arWQwMOxqVkvG?=
 =?iso-8859-1?Q?fAxx9vqRGeQmdRt+c33rhLz10aB96gyaa8ha5piMvIzcwMHmECj+JBwiqW?=
 =?iso-8859-1?Q?iuJvRWqO+V1EM19J5odL8B6ktXUUNepdR8ShrRQu5Ufixt0GScPW313Coq?=
 =?iso-8859-1?Q?OuioSUKZ6qB/+QA0BNSc6c3FUn7gLdd2kIXvOayF8sU/HCImt12HBO9oJW?=
 =?iso-8859-1?Q?Rs4H3VkhSSrlEurlbTVxhAfwKu2XzsNy73EcxcyPMWKVCB51fNK5CvMIwH?=
 =?iso-8859-1?Q?5mNgmjmCjzKhy0PFpldMDYf27Q4bxQFShtdGqe9KbLg3u7KnJdFaznIysN?=
 =?iso-8859-1?Q?MPZaeSKh07R7Jqj9hTmFfKpHKOISSkmNhiFF+RXGWVSRed3Oc+B6yisPMp?=
 =?iso-8859-1?Q?ZVNJXOWrNIvrnQL6gGa46HhYnzFU2xvJGlBoh7SjigZ+pQE5zyKdTwq22X?=
 =?iso-8859-1?Q?3+LYvrGKaq5jxaUloC0afN8/8kk+XKDQASvXRLYsTN1AF4Fx3FMOS33kVF?=
 =?iso-8859-1?Q?78fLyY85wktoCmAWobeW8F7/Q733cZBfdyLdU1YbUrROWFKNf5QHPVUpx5?=
 =?iso-8859-1?Q?tRjcfv7xEneECiCskwlu++vjjlw5qM2Uv8VogWgzhbvc82uGEBm0rtXcqu?=
 =?iso-8859-1?Q?zkBQzotHixtPca5JhZYd1do9uR2xvybml1rnfjxB2Xui03d+9yIrbmD7hS?=
 =?iso-8859-1?Q?n9wozrPWxdsdFIvqA1Vmr8Gz6ZwmRfXpGpfkmrD623nPd1CtY4D3fCb1bi?=
 =?iso-8859-1?Q?x3Z/V84o1p5FjQrX9/gkNf9FC0fULkBwBX2xJlVAf1nWSFFTmLAB0Zz9o6?=
 =?iso-8859-1?Q?XT4ZgqmbQ7zw5CIvVG6hPplGaRsGiINhZ6kzJ6IdI2L781gmF68kik2fZR?=
 =?iso-8859-1?Q?yt0lkAXQ+hIzqZysWoHqZXe7JoYhHo2e5AgHBk7C3wKCF+hBo0WmTK+Bnp?=
 =?iso-8859-1?Q?UXR6hTisZnTHvF+7heTjdaps52j7NKBGU9JE1pHlrryNX5t2xvB6sYMH1d?=
 =?iso-8859-1?Q?UPhfZXj6Q4rKiWnFGj4UOnn6IXrf6KHrqc+d7EvnC2E0r4WUiH8Qy/Mq5p?=
 =?iso-8859-1?Q?SNWtVarl2+PrJipLpcIjFVJ1Qp9XCO4uj9SuB5WIynm0XkKGMEy+QiT/rl?=
 =?iso-8859-1?Q?4yaWKI3U8nDdzKF1AqdPkd+Umd+suYfc5dKuItwGQNrIrj7ey5qvGHtzla?=
 =?iso-8859-1?Q?3WEeC5mv5rPjKaVaTB1BHdtIqRKpmK5WW6eKfwLKVZtHXvbuNqU8/pUw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5293.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53dd5627-d68e-44d1-c52b-08dcd3223c38
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 11:58:37.2346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Z2hsKfqdxDJi/eNK69RzleXIMPOHyHBFwDMIlR7TUugsfYdNu7NGqwZbNLF988fpMtmIeOBTgGXZp/5uf2JMBc7I/BvdkmwGTjCEgBL1LQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5904
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



> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Wednesday, September 11, 2024 9:49 PM
> To: Bommu, Krishnaiah <krishnaiah.bommu@intel.com>
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; intel-xe@lists.freedesktop.or=
g; intel-
> gfx@lists.freedesktop.org; Kamil Konieczny <kamil.konieczny@linux.intel.c=
om>;
> Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>; Upadhyay, Teja=
s
> <tejas.upadhyay@intel.com>; Tvrtko Ursulin <tursulin@ursulin.net>; Joonas
> Lahtinen <joonas.lahtinen@linux.intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Thomas Hellstr=F6m
> <thomas.hellstrom@linux.intel.com>; Teres Alexis, Alan Previn
> <alan.previn.teres.alexis@intel.com>; Winkler, Tomas
> <tomas.winkler@intel.com>; Usyskin, Alexander
> <alexander.usyskin@intel.com>; linux-modules@vger.kernel.org; Luis
> Chamberlain <mcgrof@kernel.org>
> Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI
> Modules for i915/Xe Driver
>=20
> + linux-modules
> + Luis
>=20
> On Wed, Sep 11, 2024 at 01:00:47AM GMT, Bommu, Krishnaiah wrote:
> >
> >
> >> -----Original Message-----
> >> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> >> Sent: Tuesday, September 10, 2024 9:13 PM
> >> To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> >> Cc: Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; intel-
> >> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kamil
> >> Konieczny <kamil.konieczny@linux.intel.com>; Ceraolo Spurio, Daniele
> >> <daniele.ceraolospurio@intel.com>; Upadhyay, Tejas
> >> <tejas.upadhyay@intel.com>; Tvrtko Ursulin <tursulin@ursulin.net>;
> >> Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Nikula, Jani
> >> <jani.nikula@intel.com>; Thomas Hellstr=F6m
> >> <thomas.hellstrom@linux.intel.com>; Teres Alexis, Alan Previn
> >> <alan.previn.teres.alexis@intel.com>; Winkler, Tomas
> >> <tomas.winkler@intel.com>; Usyskin, Alexander
> >> <alexander.usyskin@intel.com>
> >> Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI
> >> Modules for i915/Xe Driver
> >>
> >> On Tue, Sep 10, 2024 at 11:03:30AM GMT, Rodrigo Vivi wrote:
> >> >On Mon, Sep 09, 2024 at 09:33:17AM +0530, Bommu Krishnaiah wrote:
> >> >> This update addresses the unload/reload sequence of MEI modules in
> >> >> relation to the i915/Xe graphics driver. On platforms where the
> >> >> MEI hardware is integrated with the graphics device (e.g.,
> >> >> DG2/BMG), the i915/xe driver is depend on the MEI modules.
> >> >> Conversely, on newer platforms like MTL and LNL, where the MEI
> >> >> hardware is separate, this
> >> dependency does not exist.
> >> >>
> >> >> The changes introduced ensure that MEI modules are unloaded and
> >> >> reloaded in the correct order based on platform-specific
> >> >> dependencies. This is achieved by adding a MODULE_SOFTDEP
> >> >> directive to
> >> the i915 and Xe module code.
> >>
> >>
> >> can you explain what causes the modules to be loaded today? Also, is
> >> this to fix anything related to *loading* order or just unload?
> >>
> >> >>
> >> >> These changes enhance the robustness of MEI module handling across
> >> >> different hardware platforms, ensuring that the i915/Xe driver can
> >> >> be cleanly unloaded and reloaded without issues.
> >> >>
> >> >> v2: updated commit message
> >> >>
> >> >> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> >> >> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> >> >> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >> >> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >> >> Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
> >> >> ---
> >> >>  drivers/gpu/drm/i915/i915_module.c | 2 ++
> >> >>  drivers/gpu/drm/xe/xe_module.c     | 2 ++
> >> >>  2 files changed, 4 insertions(+)
> >> >>
> >> >> diff --git a/drivers/gpu/drm/i915/i915_module.c
> >> >> b/drivers/gpu/drm/i915/i915_module.c
> >> >> index 65acd7bf75d0..2ad079ad35db 100644
> >> >> --- a/drivers/gpu/drm/i915/i915_module.c
> >> >> +++ b/drivers/gpu/drm/i915/i915_module.c
> >> >> @@ -75,6 +75,8 @@ static const struct {  };  static int
> >> >> init_progress;
> >> >>
> >> >> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
> >> >> +
> >> >>  static int __init i915_init(void)  {
> >> >>  	int err, i;
> >> >> diff --git a/drivers/gpu/drm/xe/xe_module.c
> >> >> b/drivers/gpu/drm/xe/xe_module.c index bfc3deebdaa2..5633ea1841b7
> >> >> 100644
> >> >> --- a/drivers/gpu/drm/xe/xe_module.c
> >> >> +++ b/drivers/gpu/drm/xe/xe_module.c
> >> >> @@ -127,6 +127,8 @@ static void xe_call_exit_func(unsigned int i)
> >> >>  	init_funcs[i].exit();
> >> >>  }
> >> >>
> >> >> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
> >> >
> >> >I'm honestly not very comfortable with this.
> >> >
> >> >1. This is not true for every device supported by these modules.
> >> >2. This is not true for every (and the most basic) functionality of t=
hese
> drivers.
> >> >
> >> >Shouldn't this be done in the the mei side?
> >>
> >> I don't think it's possible to do from the mei side. Would mei depend
> >> on both xe and i915 (and thus cause both to be loaded regardless of
> >> the platform?). For a runtime dependency like this that depends on
> >> the platform, I think the best way would be a weakdep + either a
> >> request_module() or something else that causes the module to load (is
> >> that what comp_* is doing today?)
> >>
> >> >
> >> >Couldn't at probe we identify the need of them and if needed we
> >> >return -EPROBE to attempt a retry after the mei drivers were probed?
> >>
> >> I'm not sure this is fixing anything for probe. I think we already
> >> wait on the other component to be ready without blocking the rest of t=
he
> driver functionality.
> >>
> >> A weakdep wouldn't cause the module to be loaded where it's not
> >> needed, but need some clarification if this is trying to fix anything =
load-
> related or just unload.
> >
> >This change is fixing unload.
> >During xe load I am seeing mei_gsc modules was loaded, but not unloaded
> >during the unload xe
>=20
> so, first thing: if things are correct in the kernel, we shouldn't need t=
o
> **unload** the module after unbinding the device. Why are we unloading xe
> and the other modules for tests?

While running gta@xe_module_load@reload-no-display I see failure, to addres=
s this failure I have this changes, previously I am trying to fix from IGT,=
 but as per igt review suggestion I am trying to fix issue in kernel,=20
IGT patch: https://patchwork.freedesktop.org/series/137343/

> >root@DUT6127BMGFRD:/home/gta# lsmod | grep xe ------>>>just after
> >system reboot root@DUT6127BMGFRD:/home/gta#
> >root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
> >mei_hdcp               28672  0
> >mei_pxp                16384  0
> >mei_me                 49152  2
> >mei                   167936  5 mei_hdcp,mei_pxp,mei_me
> >root@DUT6127BMGFRD:/home/gta# lsmod | grep xe
> >root@DUT6127BMGFRD:/home/gta# root@DUT6127BMGFRD:/home/gta#
> modprobe xe
> >root@DUT6127BMGFRD:/home/gta# root@DUT6127BMGFRD:/home/gta#
> lsmod |
> >grep mei
> >mei_gsc_proxy          16384  0
> >mei_gsc                12288  1
>=20
> 			       ^ which means there's one user, which
> 			         should be xe
>=20
> >mei_hdcp               28672  0
> >mei_pxp                16384  0
> >mei_me                 49152  3 mei_gsc
> >mei                   167936  8 mei_gsc_proxy,mei_gsc,mei_hdcp,mei_pxp,m=
ei_me
> >root@DUT6127BMGFRD:/home/gta#
> >root@DUT6127BMGFRD:/home/gta#
> >root@DUT6127BMGFRD:/home/gta#
> >root@DUT6127BMGFRD:/home/gta# init 3
> >root@DUT6127BMGFRD:/home/gta# echo -n auto >
> >/sys/bus/pci/devices/0000\:03\:00.0/power/control
> >root@DUT6127BMGFRD:/home/gta# echo -n "0000:03:00.0" >
> >/sys/bus/pci/drivers/xe/unbind root@DUT6127BMGFRD:/home/gta#
> modprobe
> >-r xe root@DUT6127BMGFRD:/home/gta#
> root@DUT6127BMGFRD:/home/gta# lsmod
> >| grep xe root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
> >mei_gsc_proxy          16384  0
> >mei_gsc                12288  0
>=20
> 			       ^ great, so the refcount went to 0,
> 			         confirming it was xe. It should go to 0
> 				 even before you unload the module,
> 				 when unbind.
>=20
> A couple of points:
>=20
> 1) why do we care about unloading mei_gsc. Just loading xe
>     again (or even not even unloading it, just unbind/rebind),
>     should still work if the xe <-> mei_gsc integration is done
>     correctly.
>=20
> 2) If for some reason we do want to remove the module, then we will
>     need some work in kernel/module/  to start tracking runtime module
>     dependencies, i.e. when one module does a module_get(foo->owner), it
>     would add to a list and output on sysfs together with the holders lis=
t.
>     This way you would be able to track the runtime deps and remove them
>     if their refcount went to 0 after removing xe.
>=20
> (2) is doable, but previous attempts were not successful [1]. Is  there s=
omething
> else to make the simpler solution (1) to work?
>=20

Reference why I am doing this changes, please see review comments of this p=
atch https://patchwork.freedesktop.org/series/137343/

Regards,
Krishna.

> thanks
> Lucas De Marchi
>=20
> [1] https://lore.kernel.org/linux-
> modules/cover.1652113087.git.mchehab@kernel.org/
>=20
> >mei_hdcp               28672  0
> >mei_pxp                16384  0
> >mei_me                 49152  3 mei_gsc
> >mei                   167936  7 mei_gsc_proxy,mei_gsc,mei_hdcp,mei_pxp,m=
ei_me
> >root@DUT6127BMGFRD:/home/gta#
> >
> >Regards,
> >Krishna.
> >
> >>
> >> Lucas De Marchi
> >>
> >> >
> >> >Cc: Alexander Usyskin <alexander.usyskin@intel.com>
> >> >Cc: Tomas Winkler <tomas.winkler@intel.com>
> >> >Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> >> >Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >> >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >> >Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> >> >Cc: Jani Nikula <jani.nikula@intel.com>
> >> >Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> >> >Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> >> >
> >> >> +
> >> >>  static int __init xe_init(void)
> >> >>  {
> >> >>  	int err, i;
> >> >> --
> >> >> 2.25.1
> >> >>

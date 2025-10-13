Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB179BD4DF7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 18:16:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A240410E49C;
	Mon, 13 Oct 2025 16:16:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d6Kx6c5/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A959910E49C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Oct 2025 16:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760372199; x=1791908199;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wZ3L+2elntt6EtJyBpj9D8nK2IaHvhQKxh56+rsUXDo=;
 b=d6Kx6c5/cLXHeTcrfw6pvWAXN6CKMwZ60K27X81pRjyHiU0adUpKxRUm
 7alACyeAVXi1md4lVjt4ZhaaqG7HeABvVSV3pyp+k0mRuwcT/GUadCnm6
 +139vlaM1CGA5qKaPBt8h/5c1Y9IXim03bAlWxB47pKlg4WDCeeRB0+HG
 1QfDHQwQZuEY9Zvr8ubnYuMp/Ax3WZrriLhfiEnRETK3G18L4+5sr5ySJ
 B+3zJb4ppFca42rzbbtjQ7DnAADT2C8UJ0U9DPtOxpr1nQeK8AIG8llhq
 GqOj1e0wyu/NKY76Qn+fkBPDVtvJkk0n6oyY/epnfduS70QnC3AMB6CfH g==;
X-CSE-ConnectionGUID: mbBLmZWbTc+W0BXp7CEtoA==
X-CSE-MsgGUID: uizEELsvTLOfjNjsUb2IRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="50075780"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="50075780"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 09:16:39 -0700
X-CSE-ConnectionGUID: 0bqN0cKLSCiEb8hUzZPtWg==
X-CSE-MsgGUID: 9jNm2wpsQSu5NZyN9ppXFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="185901718"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 09:16:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 09:16:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 09:16:38 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 09:16:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SORI8j5i+/YfLSfO6GH2CbPZTtT88MbLcy9P1usj3DUB4Nd/JscpY/LwKyFhtRgVvh0SpnHbRLFOC2Ihm7jP7voIaK2RDuxvqhpcw2low1HXaF89k568kwVXpMVD1vUC3iIh0FN1L0j0FsgsbGJA8DmWqoFSvJ4k0rpf2PhhxLZnG3t+f/pE75a0a7ZABbD93s77+RfAN077vUubgENyGGarOTE3kRKwRrt3BjJug5Fm5hjunBhkfgCW7b8RUFzZDH5D16yM8y+xWe84CWY+WFdv5KmbJ4XEFhM9MIyBmlTr496h6vof7bnqR5t16Zj2weNwKUdGL0nlvOoEeRfuOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XhVIF2ADb4SzkU9P9FgOrI4IKxrU5hg3NAbYKXOa7Ds=;
 b=JtZ7xYCE7HPgpNaCBNsqOVn3O4VUGkAJyu/928JuVoKmebHYEh/jj75p60ZHfqej6xZJS/h1K1vPm6q+KFvDvTFoBotl6MPpO2ji71+DTY0yKv60jb/Yky9W/pxGnF54QDnIVPL7LO07ilacJmLyh5WrHpKWXDwrIfceTkeRI1qPDcgoqDA+vaNhxwGzORAuBssVlZLEhuddaORkI7fh1yCHl1ABJ392F8uM8HRxJBWsFhWAYpzZVRHqrtKaeu4987TVv54FhsJAx7lMA7nJJVYdMCIWPkc/VdLF1iT2l2lhbFds6rl1OdIC5aYqD2DiblVk2rwLzP197Fh2QsIeTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8040.namprd11.prod.outlook.com (2603:10b6:510:238::11)
 by CH3PR11MB7843.namprd11.prod.outlook.com (2603:10b6:610:124::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Mon, 13 Oct
 2025 16:16:35 +0000
Received: from PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::701c:c42c:4440:5420]) by PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::701c:c42c:4440:5420%6]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 16:16:34 +0000
From: "Yao, Jia" <jia.yao@intel.com>
To: Askar Safin <safinaskar@gmail.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
CC: "Zuo, Alex" <alex.zuo@intel.com>, "chris.p.wilson@linux.intel.com"
 <chris.p.wilson@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "piliu@redhat.com" <piliu@redhat.com>,
 "Lin, Shuicheng" <shuicheng.lin@intel.com>
Subject: RE: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Thread-Topic: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Thread-Index: AQHcN8iMlqXLmHFdTUuiKqVlWShhm7S3Mh8AgAAA+GCAAPmMgIAAOJrggAAIv4CABH1dgIADWVdg
Date: Mon, 13 Oct 2025 16:16:34 +0000
Message-ID: <PH8PR11MB8040345B6866C88FA0E0A663F4EAA@PH8PR11MB8040.namprd11.prod.outlook.com>
References: <aOaOJ1YI-NgTloIy@intel.com>
 <20251011124920.2857-1-safinaskar@gmail.com>
In-Reply-To: <20251011124920.2857-1-safinaskar@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB8040:EE_|CH3PR11MB7843:EE_
x-ms-office365-filtering-correlation-id: af5af821-2a0a-413e-4ae4-08de0a73e0d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|42112799006|376014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?SBENf19d0YamIWZkt6T7wMxJDbRYgIgljK2esc6sMowrrnNJh+WxRQRfkkS6?=
 =?us-ascii?Q?Yj99C9A8F7QAy+YM2VIsVJtvGiEayh65jjPOH3dadB5+YmF4pW5q2yMKpFH0?=
 =?us-ascii?Q?f/aNXdlnfgPn1fzemIFTJ3dcDtVy64ksoEaTh1w3vzJL853vZrkW8plb2hF5?=
 =?us-ascii?Q?t40lNdZ1ViFGtIx87H6fHi2MNHcLWK8DemOs4ahcX9UYn7je0CmGM8NhAGnZ?=
 =?us-ascii?Q?0Cl7/2YVKUShDs0c819twigXN2jwiT74fwFjgGHClzyzmUobnJUeXWthwriX?=
 =?us-ascii?Q?oAla/z0gyeihSiHiboMXE4z7J/LOXshJ5LVmKo38G9iAAbb+/+rx8XriotLy?=
 =?us-ascii?Q?+45prRnC5wZNod6ZvrKWtK2nsDqzsbtx3qOcH5aZYdicdqlICSr1Pc2vdoB2?=
 =?us-ascii?Q?BqupQ/CJ3l+6qyuzx5hoHkcNO3jCVrGekrgts0XlPoSwuf+tHveUXJSvaXA8?=
 =?us-ascii?Q?Py44F+KzvQ/0Nme1JWGGSKpGGt0LqA1KH9hjKoYYZKBhZicCwYUbdDd1Do6s?=
 =?us-ascii?Q?yq5cryrqKAOK+p6O6lq0qqXRKgKUSpAs/6yzlnq8wH/pnefAt89XKOydjSfX?=
 =?us-ascii?Q?5bkDzic60ZQW9a32jd8rJrnrw7ImEVcNQgiLO9G3lVPJQGFdlvirJmf5f3EV?=
 =?us-ascii?Q?Pe9x1xhmAoXQAq6cmPIi5ekVAMPeuUBaN9OMEfqTUKLudAfdg0BhbHyjraI/?=
 =?us-ascii?Q?QYZ0h1fAJoKToqzVJSKxPpebAoxj6l6wbm4FZDPnLQToocit/oLBjahR2DE6?=
 =?us-ascii?Q?TwX8yMKj/gRTUdVy/Ng8RgsjruKCdkv2HGso/NFgOkfBWo/CuX1HROvCNa/d?=
 =?us-ascii?Q?M57LMyex8yk8JIunmOf4xNB9ySbMti5iPU+Y2BOztvS98rNRWAzFPhm3gZFN?=
 =?us-ascii?Q?PnVnzdvihQMWMN2THs53Ol09oRpjiP3odnlHj/Pl7/5hU76+HxapiE8HxKU6?=
 =?us-ascii?Q?f7U7k+VGbl1IIGOuGQToHpRLMxrSgPqvmVwz3i15EsBv9OTI4g9h+YG0AbWn?=
 =?us-ascii?Q?bgiHbzWaoA/naC7xb6k+aT6Yqa0+HJDL2PaQfTnpd9zRbdQsW/Ur28mEDeG0?=
 =?us-ascii?Q?e5REgni/UQoyDw5fMj22A7yagZ9AH8MvZFCsE2FYS8YloBlzmjlr185vzt1b?=
 =?us-ascii?Q?1TV2A+OBPmprXbeguYr+IvwdusQejhHP1VvAvkqe7Da/QFZUovKFYQLFJyTg?=
 =?us-ascii?Q?/3g2wVS5kHaXf/D1R3dVLs6ushmHcNbW+agQqndj02LTBmA19M7o5Y2XRl4h?=
 =?us-ascii?Q?bmkUHeMKNq34xIQg7qxUdUiCS7k37lhoL8/AFahCDQlEP3ae0rOhjOcSN/3/?=
 =?us-ascii?Q?ZnEeGyQABL9QqveGt77R3DepOEqXD1YTf0XZlQYjVf1f0rwMLr8GWJwW/V/E?=
 =?us-ascii?Q?vhqril8cTq1cxAWn6nOlkDbBsMH8CmKPopzFQOWozvhu+gvQf7T0NkgLyvt5?=
 =?us-ascii?Q?HBKykgFBJOoHT1IBG//37GJiXWnWDi+0dOtVgPQMM34LmCrEQua8yx1laviL?=
 =?us-ascii?Q?QUhVHqakb1Qj4dvO1eoi5eQiA/eUHgXU5abN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8040.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(42112799006)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sZVqrMeYSDBNXbGQsVvuEivSDlkgeCL/cyixOl21mZ9uIfe0FsnRbFCwuJL6?=
 =?us-ascii?Q?aceP49VQ1XHHtIL2tq/rfIGvLvQZev7pmWKJY0hOeNzcTEvSKTKLgzWTPM5E?=
 =?us-ascii?Q?ZyRRo9YJRIJXJyVhQCLlVBTqoZ01JnXx971+BpfYr4u1eoGAYMQtWvp32Map?=
 =?us-ascii?Q?CpWgfbNZf1S3NbYo4zRFSGfJTnBINwa8bp4kk0O7/oE42htkjCkBp8MP2f6x?=
 =?us-ascii?Q?rhnmX6c/gcC74XiEMC6s6Chhcx8TTkNducFW/GDPNfZz+Z6l8e8T0EvwovZ+?=
 =?us-ascii?Q?8CB67LdzbaTbl8pToI1/X6vL+kLhUAqvE+D2ZpbBJzWLG/uAwIitx9Ip54hy?=
 =?us-ascii?Q?BonCsYFpFXNjklrR6zbD6Nh0LrMpOfngwxa1CHfc5FkCfoxGCYAqPYcRjuHi?=
 =?us-ascii?Q?1GOsskeJE4SI+8LqwQMUDdWTPD0ErcjhBSTn7xDJ8EQ838+XYps03CaZJeiU?=
 =?us-ascii?Q?yAqdil2P9tduqcb8L7VApD4fTolvIksiN+cLQgmC7rd5a5iUvmnjDPnL05HG?=
 =?us-ascii?Q?Z/igVe3IRp1ILHEfuFzqDpo32YnJsmidtUoumP2W/ARZuXz+KCKkarMDMDhn?=
 =?us-ascii?Q?N8O2+txYC7NlVrpShnLLrKxFAkVIk63yAPLyg9zCbP6nM3KrOIeGJ5/sl12N?=
 =?us-ascii?Q?YFjyTWFiyz2TtgNam7f5D//2bLd2sCQdeT5n8mZqqVB8zDYxIuAWKkCe2COf?=
 =?us-ascii?Q?c9UIUtVZoO2w87r6rIRF+UhaXCA0+SMkDZEGVaFEuTNmtDAgosbRgDV3vVo8?=
 =?us-ascii?Q?z9wzIhBU1W/WOqqarQMU4qRSH3zWhcRvVi32zXMbU5H4a1zZ+UXPOZURrwj8?=
 =?us-ascii?Q?F1PijbUj4hefULGe/UXPqaDJb7W5JqU7nmbXQ9BquzvA7W0SwiP92t4bmVKb?=
 =?us-ascii?Q?f/33blXKkCvQsIfTtKaGqm8v4aK1ae94qCodhOWd9Y2hHxt74qkDBBckl/jo?=
 =?us-ascii?Q?vJSidTldReL2uLH8zEhB0WEauCVTmzN9yC9AjUFhNYsKwsOaROUt2+VBwNKY?=
 =?us-ascii?Q?uOVWf0nRw6VEdVd4eK4I+OmLbBSXVhCiLZDZ7OfwZFFER9ZXI0++37+VqzPb?=
 =?us-ascii?Q?ElOaXVAWgdnPBVFJ9LHzhMgZrseo9zg2HjepJkDZQYO0UkBag5MTA5PXefa5?=
 =?us-ascii?Q?kxR7J2ttuHiUVv6UPxTXkISUUAKPTJ+JRAsELHvFkkngqr3LbNcwTlZsG0Kf?=
 =?us-ascii?Q?Yrl4XPeZbrQ68WAzk/RNgbOJOgMelxJbImB1OmbgrfcQVerRl62PkWvPCL+L?=
 =?us-ascii?Q?0+pF6k7Fzp/pvP0x152BWBJLH8QDQjwqCGmmB5ldcDoaPXiWeKEEn79MXnEz?=
 =?us-ascii?Q?WU4TwS3JtnDAlaG8+X8lp1bTHVS8Sx1jlMArbZ4dAr5v/wRMestW6yijlhqF?=
 =?us-ascii?Q?vwC6aNuOEgdB7jvI62tW+3J9ChuL7lPAxkahsyiA/AdhQuU+vz4NSdBFLMs0?=
 =?us-ascii?Q?A8ow2riCpEX9Ag/3eWp1sYVc7FDWKJYIC8GaEo1QcLBMIneteMNL0Fu4PTbE?=
 =?us-ascii?Q?12KrLHjwBGe00vvjaju6dgup69cX9rTGagfRjHRXTrNLjXpkgwg0aWX/JUcn?=
 =?us-ascii?Q?iGQB5ga0ZRuv8B1wU3o=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8040.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af5af821-2a0a-413e-4ae4-08de0a73e0d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 16:16:34.2548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o4L/YCoLuHbpXKkbEZpU1/nzKyuffNmfVI9zjcocGdR5y3YsGqDZXMJQ/vlzIs8XtKo2AICy9Yi3szdYEQTZ6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7843
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

Thanks, Askar Safin, =20

intel_pxp_fini(i915) line is needed.  The error message can only be seen in=
 serial log,  dmesg can't show it.

-----Original Message-----
From: Askar Safin <safinaskar@gmail.com>=20
Sent: Saturday, October 11, 2025 5:49 AM
To: ville.syrjala@linux.intel.com
Cc: Zuo, Alex <alex.zuo@intel.com>; chris.p.wilson@linux.intel.com; intel-g=
fx@lists.freedesktop.org; Yao, Jia <jia.yao@intel.com>; piliu@redhat.com; L=
in, Shuicheng <shuicheng.lin@intel.com>
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit wh=
en en/disabling i915

Also, I just tested opposite thing. I. e. I tested v2 patch, but without
intel_pxp_fini(i915) line. And the patch worked.
I. e. intel_pxp_fini(i915) line is not needed for fix to work.

--=20
Askar Safin

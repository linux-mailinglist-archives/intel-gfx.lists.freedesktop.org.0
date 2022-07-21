Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4685057C9C3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 13:32:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B0838F883;
	Thu, 21 Jul 2022 11:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E77B48F887
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 11:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658403136; x=1689939136;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iFULFBxFjBa760YX8sc3T6zqcWQAvyTsb9oZbEEc/Eg=;
 b=gzGjD0TvkLL+pjB0uZH2bHIEhQDekcaejWCYgpZNrfU83m5ZQyU+qvmf
 rWb9F2izbuczpWAcYlQWltwh14Ci6a9gKfTFtZkiX0T1ueKoFAm067joL
 gz+2IKx0DoLZWE9odDx7synsQU9BCAzWpdIRxCiJzeWb6i/v2R1sx8veF
 o3w5JAZL0cw5oTisR5DMcKGS4QAaFA0bXvPQDTH1bdViXJEw96ujB2TCH
 HdwQ3sNXo/LDSFOTlFDMcV7vpHOa46qs+3qRR6yPue8TtX7CuBScRzobp
 MalZYogsil3oESNi1zH25XIBePGw8NMxYIi1P6VbxDvkurN/ddN/U9jT1 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="285783077"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="285783077"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 04:32:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="656705632"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jul 2022 04:32:16 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 04:32:16 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 04:32:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 21 Jul 2022 04:32:15 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Jul 2022 04:32:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T2PG95hOz/z0LSRaaJtY2OUseAY5nmx9NxHBK9ndUP8rrVMEjOFp/cIL5sXuXFbmbShuJHF9aWxd+SjZBO3eEoqz1iSFlstlqjl/R3V0Ik27v3c8dV7BFGECiepFvcl59g1W8cv7qX0NxMvq7HzOG4hIyrRYGGmEYLnw9TViqlXldiF0wwNs22Rwudx6mXsYMmj9xOnf8BhzvsI3LX8t3Dad+0E+DrU3Z8IglYK+nB/ZydxHot4/YxhAvHAf/eCsa/2xelxsxINd7dIxLMCpSWHwGRDK/2KtTNpv/aXET8m4n2e7Vp/2ET2fuuRnq9v9nPsgMsH9Uy6wM79/5cMo5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gMFcNnHPm7pPpyyK33vOX0u6P7OiiDD2pI3amLYXFHY=;
 b=dJD15GchzUtv4OpBIPIamfP85TRlXwaekXkH+bLkSdVuDlYeDJcod4bNOQnpHJg9TNdnkAcvkecbs84ETv7RlU4rCK7eBDOGjMQ8Qpx3dym/eUxyD3dXmycNnkl9858I3Qk1AMY1yc+Ax/Pw70pQ3JbkXajN70BTHURXmy4SFw0iTORb8ESwsuu+8mO8bdp54SieIj7xPWuhw9eP9PAEUC+aolTgb0gx/LZHhBsbNcE4VMw4Lo4BhQZ4BZF71iZrQeH+tyjC8/vgtvLqdOT9GBb1MY7+ncGYPrkY/fJq0Np1a4UtQs891oSX3BXqxwLprSdkrXcIwmR570658O3tfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5248.namprd11.prod.outlook.com (2603:10b6:5:38b::7) by
 DM6PR11MB2812.namprd11.prod.outlook.com (2603:10b6:5:c4::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.20; Thu, 21 Jul 2022 11:32:13 +0000
Received: from DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::1d6a:825d:5ca3:34f7]) by DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::1d6a:825d:5ca3:34f7%6]) with mapi id 15.20.5458.018; Thu, 21 Jul 2022
 11:32:13 +0000
From: "Tangudu, Tilak" <tilak.tangudu@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Ewins, Jon"
 <jon.ewins@intel.com>, "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Nilawar, Badal" <badal.nilawar@intel.com>, "Deak,
 Imre" <imre.deak@intel.com>, "Iddamsetty, Aravind"
 <aravind.iddamsetty@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 6/8] drm/i915/rpm: d3cold Policy
Thread-Index: AQHYnOcMWNabWVwZt0CSxR4/bqyrDK2IsJAAgAAARgA=
Date: Thu, 21 Jul 2022 11:32:13 +0000
Message-ID: <DM4PR11MB52480802064C6864BCDE63B3E2919@DM4PR11MB5248.namprd11.prod.outlook.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-7-tilak.tangudu@intel.com>
 <CY5PR11MB62115D47EC5757DE9863DD0495919@CY5PR11MB6211.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB62115D47EC5757DE9863DD0495919@CY5PR11MB6211.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02604ce4-e43d-4e26-69ce-08da6b0ca870
x-ms-traffictypediagnostic: DM6PR11MB2812:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: opM06ZrlDYQjfazbpsma5vLfJ4QsHZELb5vGmeAK6YqpstBIk+oCmvsrK2YactQCG7UhrgWYn+Dvayn2UyFxE8Sgv9BGZFOh5MppG5LGnjfIZqV3eEQOlEWKI+Re3R2x4p+4YuwTB4gQ+YqVgmiFKeODdmMdllYSTKyZIYreqckxv4affRzJKlHdVgnxTxaZHCFKN+qc/Trgv3xn9X/a2bbcS9gC/zWGdN365lFfdb8xANqp77AJ6KCgVyc+K/te3dR6oyX8ceKV6TSzMw7OH2IWZhWqa5TArvU2uG+Zx37MuOfsD4naC7RAeIcQ6usVyta3CkTYg/5ECd3tmpr3Joh8I8SgQzhjWWOr18SvRXiW6+heT3vOy/L0mRyv6+qOpfG0J7xJaqwDu0Ui14FuNnte9fvW3lTJYzvqFwvaaTWeBuVpxPmQ4YmSo/db1L/EhdLLwXKmyBdO7+y8T5a8jBOUxuPqLwRoONxALpUKBwZaSQHkiuChkvXmzEtFg24LuMIo9xdoUzc53Da4XPBNpYI6Wc8YxFORhhx7mkyCJhv7mGfY/eAlOuFlsY4AgeqojOm0j/w7TPuUXB7I7Z24frFBv3sZkaKLMYHYJm5NWKVPKskPI0vthHStBJk3VgJ+g/xrwSU78WGkI2C5jjWmXw7K8t+VnXMGqKPQuCHW6neC13cZOtyjZltCNSKAjNk0nFJnr6L705Qcnv8yY9EwaClb7Z4raMyHszVckyzcRvkE7thNWEq0iqTpogggLIAlm+Vd4y+kThkmHNOgYJXuPJlHfICzMtTzzGB7tbyT9+jW42x0nwmVARFGgv/4mrz7XAtA4TGvTMyg5NjSUG/MO+P0Nk2RWD0TlWTGVPHOdV6erS9rjwIT3A/bYlhW0Ycu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5248.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(346002)(39860400002)(366004)(396003)(921005)(71200400001)(82960400001)(2906002)(55236004)(478600001)(83380400001)(38070700005)(9686003)(186003)(26005)(66446008)(7696005)(86362001)(6506007)(316002)(53546011)(41300700001)(38100700002)(64756008)(66476007)(76116006)(110136005)(8936002)(8676002)(66556008)(55016003)(33656002)(122000001)(52536014)(66946007)(5660300002)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qsmHZkCbJgErl8YycIie8IDwmnzdR1QgrMKPQH36IorL+BWcHF95vjjSVupQ?=
 =?us-ascii?Q?GtGkEyyPLwZLEmxkcI5iJKJsQluOS8Fm0CjGDCMESHJ274vsbrv+/6xB1nkf?=
 =?us-ascii?Q?xvqu6VOeefPbSsuIPh/PY6D+UM2jDjipqrPUGYYmBf0kMeg/7FGPHXkFpINU?=
 =?us-ascii?Q?2yAykA3DqQDEQcAI6Oaz805vxUOoRkbGA1ylIE4vObv02Fc+TAuFWUw+JlZK?=
 =?us-ascii?Q?CIuUtMPlWEQqY0hapaKyTeM91sZHiywitBdLwzs9BfElrNGU/s14gAxrXytp?=
 =?us-ascii?Q?72jtjzAVkkCHnzIoOdXNeZkTyyO4gmngt50ZixSFRmXwqkqOc59rnfs61qRp?=
 =?us-ascii?Q?M0GPqbIBcQNO8f1RQRAOiqZuYFAq0/YA0rGAOF1fgdlPve8fZI2oztdW0VlC?=
 =?us-ascii?Q?X7BR4uBzCYXU+5UYIOkbcfCDN/hf/U9gkh78Zl/1vKT6ygOeASKWeqXm4b4i?=
 =?us-ascii?Q?IEdAn+NM3luYwX+Celal31CL2a6ESt3WJ/O12BLFBf0f4hAhD0z1PqHGqjk1?=
 =?us-ascii?Q?Wm9VnzHbMgY0sTRNckH8zq7fgvK9U7QYVfnhD9svPvo5vLq8YMxZh5o1jOxF?=
 =?us-ascii?Q?Qd7zOEZvma7MBPx3R4XN36lkZXO/qTZ2JL5PYaGEsXzec2bzB7PyIxpf5nxY?=
 =?us-ascii?Q?YrkAw00qXqpaQfK1JLUvRgrRAZkFK5MPdQNvH/VZ22mbCPBE+61T+9FczPmP?=
 =?us-ascii?Q?JEMOp5mQVMDkZgvnXpKJSMpjjMIX9Tr2BRBQkY3KBrTjGH4eNLctqjiK/qKI?=
 =?us-ascii?Q?gBV7BdRtJhg+ji6IGIfy1QWFr8w0Ew4dUyjLtdgw/mtSQ+DD1cs94hUjntef?=
 =?us-ascii?Q?qtWdy5drOjwQnhTQfcwQdEwh5tAdwfJuvFcQDg/LQPAPYXzi0zFfiz6GbDJL?=
 =?us-ascii?Q?++qZLbI4UzpsIPkYXrDOBpnavDTqY12ABvCBigcaB/SIk89Sr436OPdTv2SZ?=
 =?us-ascii?Q?7OtCfK1aQZyb4Q31U3bu23cnJHJPhaO5tJKGke0EejMQgNttA/ZGVY80jIyx?=
 =?us-ascii?Q?c0NLfIdKyyRo+VqDZnQD4EDVz85/j9LrcSjHbFPCIVbtgxW4/q65xzMYzEQ6?=
 =?us-ascii?Q?aGKgfbYxUkzWeuktjb5+AeMM9lGwQApPmTQTRshHbyBAZVpDs6j+ko8KyT1i?=
 =?us-ascii?Q?ic46eyBn5WjyaWAZcoI3a7iG1Xxfhnmup0RBuK4WVKSN8MRaMlsLAQmykQz9?=
 =?us-ascii?Q?UTeAaB1HbD1amyKcbmqQa0ts/U/vdlOZpKdre0Lu+besIe5AUk5xYs9jmLc6?=
 =?us-ascii?Q?jHmUQ36W5eESU3RjK8tGXYrtXJ8z5HHN89vHIDsZPfkjOpe9wHpBMNrL1+fV?=
 =?us-ascii?Q?qw8bNBMi/0K502jBw/C7SocEJvAgmbu04jGnDfW5givfCUogVVYgWhwEUGeE?=
 =?us-ascii?Q?ITyPBfYns0AFnuBfaHpotZBg5IvNne7Y8NRm8vfmI8O33WOnEfsvmjRDHSsy?=
 =?us-ascii?Q?z4YLM3YlnvmdXrvwS0jYSch8dB1UxCZFfbSO2uFoNZ3IMZHR6pytiCLBM9Oo?=
 =?us-ascii?Q?KhIlYhfOOxx/M4dYoj0bJ5w/fAIHmy6IRvmadzEh6qCaLKLAhpjDMOTXgGhy?=
 =?us-ascii?Q?HgdvC5YP+saigFIIwRQ6vQHFhjbco+7AT9iCxi7G?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5248.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02604ce4-e43d-4e26-69ce-08da6b0ca870
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2022 11:32:13.5440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Th8xKBl3B5reGUF8dWxawjlE1IOB44AHtmP8v8MTSWyjLJnZJYqEu+lPBhf9iq9xdE9eFenCkej82ROyZKan9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2812
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/rpm: d3cold Policy
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
> From: Gupta, Anshuman <anshuman.gupta@intel.com>
> Sent: Thursday, July 21, 2022 5:00 PM
> To: Tangudu, Tilak <tilak.tangudu@intel.com>; Ewins, Jon
> <jon.ewins@intel.com>; Belgaumkar, Vinay <vinay.belgaumkar@intel.com>;
> Roper, Matthew D <matthew.d.roper@intel.com>; Wilson, Chris P
> <chris.p.wilson@intel.com>; Nikula, Jani <jani.nikula@intel.com>; Gupta,
> saurabhg <saurabhg.gupta@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>; Deak,
> Imre <imre.deak@intel.com>; Iddamsetty, Aravind
> <aravind.iddamsetty@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCH 6/8] drm/i915/rpm: d3cold Policy
>=20
>=20
>=20
> > -----Original Message-----
> > From: Tangudu, Tilak <tilak.tangudu@intel.com>
> > Sent: Thursday, July 21, 2022 3:30 PM
> > To: Ewins, Jon <jon.ewins@intel.com>; Belgaumkar, Vinay
> > <vinay.belgaumkar@intel.com>; Roper, Matthew D
> > <matthew.d.roper@intel.com>; Wilson, Chris P
> > <chris.p.wilson@intel.com>; Nikula, Jani <jani.nikula@intel.com>;
> > Gupta, saurabhg <saurabhg.gupta@intel.com>; Vivi, Rodrigo
> > <rodrigo.vivi@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>;
> > Nilawar, Badal <badal.nilawar@intel.com>; Tangudu, Tilak
> > <tilak.tangudu@intel.com>; Deak, Imre <imre.deak@intel.com>;
> > Iddamsetty, Aravind <aravind.iddamsetty@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 6/8] drm/i915/rpm: d3cold Policy
> >
> > From: Tilak Tangudu <tilak.tangudu@intel.com>
> Please don't change the authorship of patch.
I have not changed and at the same time I missed to add author explicitly=20
I will make a note of it

> >
> > Add d3cold_sr_lmem_threshold modparam to choose between d3cold-off
> > zero watt and  d3hot/d3cold-VRAM Self Refresh.
> > i915 requires to evict the lmem objects to smem in order to support d3c=
old-
> Off.
> > if platform does not supports vram_sr feature then fall back to d3hot
> > by disabling d3cold to avoid the rpm suspend/resume latency.
> > Extend the d3cold_sr_lmem_threshold modparam to debugfs i915_params
> so
> > that, it can be used by igt test.
> >
> > If gfx root port is not capable of sending PME from d3cold or doesn't
> > have _PR3 power resources then only d3hot state can be supported.
> >
> > Adding intel_pm_prepare_targeted_d3_state() to choose the correct
> > target d3 state and cache it to intel_runtime_pm structure, it can be
> > used in rpm suspend/resume callback accordingly.
> >
> > v2: lmem->avail stopped tracking lmem usage since ttm is introduced,
> > so removed lmem->avail usage in policy.
> > FIXME here, lmem usage is not added, need to be added by using query
> > functions.
> > FIXME, Forcing the policy to enter D3COLD_OFF for validation purpose.
> >
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c      |  6 +++++
> >  drivers/gpu/drm/i915/i915_params.c      |  5 ++++
> >  drivers/gpu/drm/i915/i915_params.h      |  1 +
> >  drivers/gpu/drm/i915/intel_pm.c         | 35 +++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/intel_pm.h         |  1 +
> >  drivers/gpu/drm/i915/intel_runtime_pm.h |  7 +++++
> >  6 files changed, 55 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index 4c36554567fd..2b2e9563f149 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1581,6 +1581,12 @@ static int intel_runtime_idle(struct device *kde=
v)
> >  	struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
> >  	int ret =3D 1;
> >
> > +	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> > +	ret =3D intel_pm_prepare_targeted_d3_state(i915);
> > +	if (!ret)
> > +		ret =3D 1;
> > +
> > +	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> >  	pm_runtime_mark_last_busy(kdev);
> >  	pm_runtime_autosuspend(kdev);
> >
> > diff --git a/drivers/gpu/drm/i915/i915_params.c
> > b/drivers/gpu/drm/i915/i915_params.c
> > index 6fc475a5db61..4603f5c2ed77 100644
> > --- a/drivers/gpu/drm/i915/i915_params.c
> > +++ b/drivers/gpu/drm/i915/i915_params.c
> > @@ -197,6 +197,11 @@ i915_param_named(enable_gvt, bool, 0400,
> >  	"Enable support for Intel GVT-g graphics virtualization host
> > support(default:false)");  #endif
> >
> > +i915_param_named_unsafe(d3cold_sr_lmem_threshold, int, 0600,
> > +	"Enable VRAM Self refresh when size of lmem is greater to this
> > threshold. "
> > +	"If VRAM Self Refresh is not available then fall back to d3cold. "
> > +	"It helps to optimize the suspend/resume latecy. (default: 300mb)");
> > +
> >  #if CONFIG_DRM_I915_REQUEST_TIMEOUT
> >  i915_param_named_unsafe(request_timeout_ms, uint, 0600,
> >  			"Default request/fence/batch buffer expiration
> timeout."); diff
> > --git a/drivers/gpu/drm/i915/i915_params.h
> > b/drivers/gpu/drm/i915/i915_params.h
> > index 2733cb6cfe09..1a86711038da 100644
> > --- a/drivers/gpu/drm/i915/i915_params.h
> > +++ b/drivers/gpu/drm/i915/i915_params.h
> > @@ -75,6 +75,7 @@ struct drm_printer;
> >  	param(unsigned int, request_timeout_ms,
> > CONFIG_DRM_I915_REQUEST_TIMEOUT,
> CONFIG_DRM_I915_REQUEST_TIMEOUT ?
> > 0600 : 0) \
> >  	param(unsigned int, lmem_size, 0, 0400) \
> >  	param(unsigned int, lmem_bar_size, 0, 0400) \
> > +	param(int, d3cold_sr_lmem_threshold, 300, 0600) \
> >  	/* leave bools at the end to not create holes */ \
> >  	param(bool, enable_hangcheck, true, 0600) \
> >  	param(bool, load_detect_test, false, 0600) \ diff --git
> > a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index f06babdb3a8c..20b0638ecd5c 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -8287,6 +8287,41 @@ void intel_pm_setup(struct drm_i915_private
> > *dev_priv)
> >  	atomic_set(&dev_priv->runtime_pm.wakeref_count, 0);  }
> >
> > +int intel_pm_prepare_targeted_d3_state(struct drm_i915_private *i915) =
{
> > +	struct intel_runtime_pm *rpm =3D &i915->runtime_pm;
> > +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> > +	u64 lmem_used =3D 0;
> > +	struct pci_dev *root_pdev;
> > +	int ret =3D 0;
> > +
> > +	/* igfx will return from here */
> > +	root_pdev =3D pcie_find_root_port(pdev);
> > +	if (!root_pdev)
> > +		return ret;
> > +
> > +	/* D3Cold requires PME capability and _PR3 power resource */
> > +	if (!pci_pme_capable(root_pdev, PCI_D3cold) ||
> > !pci_pr3_present(root_pdev))
> > +		return ret;
> > +
> > +	/* FXME query the LMEM usage and fill lmem_used */
> > +	/* Trigger D3COLD_OFF always to validate with all tests */
> > +	if (lmem_used < i915->params.d3cold_sr_lmem_threshold  * 1024 *
> > 1024) {
> > +		rpm->d3_state =3D INTEL_D3COLD_OFF;
> > +		drm_dbg(&i915->drm, "Prepared for D3Cold off\n");
> > +	} else {
> > +		/* Disable D3Cold to reduce the eviction latency */
> > +		rpm->d3_state =3D INTEL_D3HOT;
> > +	}
> > +
> > +	if (rpm->d3_state =3D=3D INTEL_D3HOT)
> > +		pci_d3cold_disable(root_pdev);
> > +	else
> > +		pci_d3cold_enable(root_pdev);
> > +
> > +	return ret;
> > +}
> > +
> >  static struct intel_global_state *intel_dbuf_duplicate_state(struct
> > intel_global_obj *obj)  {
> >  	struct intel_dbuf_state *dbuf_state; diff --git
> > a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> > index 945503ae493e..7827b0c1a2f3 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_pm.h
> > @@ -31,6 +31,7 @@ int ilk_wm_max_level(const struct drm_i915_private
> > *dev_priv);  void intel_init_pm(struct drm_i915_private *dev_priv);
> > void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
> > void intel_pm_setup(struct drm_i915_private *dev_priv);
> > +int intel_pm_prepare_targeted_d3_state(struct drm_i915_private
> > +*i915);
> >  void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv);  void
> > vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);  void
> > ilk_wm_get_hw_state(struct drm_i915_private *dev_priv); diff --git
> > a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > index 99418c3a934a..568559b71b70 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > @@ -22,6 +22,12 @@ enum i915_drm_suspend_mode {
> >  	I915_DRM_SUSPEND_HIBERNATE,
> >  };
> >
> > +enum intel_gfx_d3_state {
> > +	INTEL_D3HOT,
> > +	INTEL_D3COLD_OFF,
> > +	INTEL_D3COLD_VRAM_SR,
> > +};
> > +
> >  /*
> >   * This struct helps tracking the state needed for runtime PM, which p=
uts
> the
> >   * device in PCI D3 state. Notice that when this happens, nothing on
> > the @@ -
> > 52,6 +58,7 @@ struct intel_runtime_pm {
> >  	bool suspended;
> >  	bool irqs_enabled;
> >  	bool no_wakeref_tracking;
> > +	enum intel_gfx_d3_state d3_state;
> >
> >  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  	/*
> > --
> > 2.25.1


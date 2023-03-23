Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F18D66C600B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 07:55:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C636310E307;
	Thu, 23 Mar 2023 06:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C14110E307
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 06:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679554532; x=1711090532;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XyB1i96FinOZnA3xcuzRyf+nvzxh/fVwRgc6loM3gOU=;
 b=HznWGgI+Hd31HB344/iDpPg6PqFYi9PNmaBpASuDBGFPUS6UyNo8sgtK
 Vs+M120N6vvg6aYYJK3aHFd8M2L5NQcI4+guw7y/dmfuO2T3mm3NWCAoF
 C7ASlPgFzhbbcVzOpb52tijElAw7pZq8Rnf8FKywHasrohBcVUuYxR04I
 HWGq/orJPFHp3oThi07cB1lWJagSJG0fJ2KaiOV152yX+NcblnEICUwyP
 nLweGxRGO3sb5ao6tddNzJIWUi4jeVdo5DZr788uakAqZm26n5AWVtQ+r
 HipLEQmxbv+kVWW6Q5oaJYsCi2fLpjvyO2LOSiu+p+CEwmYFvrs6eFuFh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="338132367"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="338132367"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 23:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="714687651"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="714687651"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 22 Mar 2023 23:55:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 23:55:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 22 Mar 2023 23:55:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 22 Mar 2023 23:55:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ioL7cdPcV7aMESgF9nBa/e1umwlkS+0c9XhlRF+1eHSomp5vvG85uEK64zTEeWdgCBRApKEKy9R/rjVRlwI7FMLBf7VAeBfsdoMC8Vso4sI1/YghF2/tpHSQXNx/jpCJsrFV0DT9wZhes/FMCqcNY2KoVPY4R5i6SIlPoRQqpOgl/Yo1UDNHKwC5Y7cundQTp0aH/6l/f/n4zc9lwgb7G7/KfLsCdvgjIgUr/gf/Fhhu/QEShpzoUXYPIosH2kVe0cPPUyk5DE6M5LXN0b02BCBTApf7qsoYhQfvfEodYbPNzSLUTTFb5vgqZVd36AfnnXzEQpUHJYi87VT1OhkFAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WkuOErAefDnB9zNsAmoAQZpdRUQTbkXHgMIOt4vcvdA=;
 b=I312iDgq8TmeBguJZyri2ychEBKmWhtVYybCLpxyFk5lQn+RXDh3KaxjbncYoc1VVIYuH5FxsUjFTgsVjV5drbUSIA5RDtXTc66dP3u1qSyb3/SP9LllQyS/oy2pOhjkxufJCkViz2OmHTDiD1Cij+PvKpus2Vj/u3lepHds6bopKM4A087bEZ8YgfhoKBTRHrg2Uk8DQLPVIfBMF2BNPrrtUaR87QctBrdVG56tllqg/qQWNsEjB/JSZ3n6CTIffNYos56uPKACGt5ZA0lOkkoVSP/CiiAtdndbaHXfOaH4QuMc1n0EsvQbcv3SThcM4ino7RBAnf2c0uPKU8wJ1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6119.namprd11.prod.outlook.com (2603:10b6:8:b0::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.38; Thu, 23 Mar 2023 06:55:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e%6]) with mapi id 15.20.6178.037; Thu, 23 Mar 2023
 06:55:20 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v13 0/6] Enable HDCP2.x via GSC CS
Thread-Index: AQHZV+nyD8ZkYNxCPkmLycOKMhbHgK8H+HIA
Date: Thu, 23 Mar 2023 06:55:20 +0000
Message-ID: <DM4PR11MB6360B7C8D2087537FC0FF6D7F4879@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230316092927.668980-1-suraj.kandpal@intel.com>
In-Reply-To: <20230316092927.668980-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB6119:EE_
x-ms-office365-filtering-correlation-id: cb0f5742-2a35-499f-5e3c-08db2b6b9150
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kBQTvnVmH46+A3++lPNe6qnUSJwhiKRsLlFSXenCTHNstmzkrWPiAtv8VnTf6okw0uMKX8qdZ12+mTJj9lwaY/yivYTX6OdnRtLcPSe9717Fa1ySyb+ryrAmRHn7IK2A7YXlzYC9q2Qy7GH72fuLuJqGrdkxyEGBmRbEA0Jn5PqBZaEemtk325QlY7e26o7PgrzBISPIyBa/1nFeauPxMVIXhxR9JOEHeGMD/TYvmd49BloNrmsAXjyCjIByxNURJniPKA2FZaAmGh3G9x0VX67W9acbHD0ntPf9tToLmvDKMNed+M+fKK0X5TuLpKVuRfqqKAXrJCO6R+zQMBfkhbWA8C8KSqqpXFewET3h+pROOx0b+dUfOmnyHolCY+0qu0Y/MUNbwklYsXs4/V3PjFSiGWxeAt/K+jFYodjFljAYrhvhqFruE1hx9X8SYColo6iQZ18Dd5WEC+PqoRvc62op02YU5BPpBOGL37SJsFP0o0+oBM+r4mZ1bxooU1hZev3bf8CnTHIjsCzZ9MdmAaAso3Qkf3w/Uq4O2nAfIazS58tZBZopGbQa44bQYx7MMlcPRx7WzjjaCCXivMTfR9ohQTIaQXKZvXDJlGOYGMn3BRhnum/4uUNFsF5g2YUdu61ooECRiO4saZy6N76t6Bs8lZ3Ndy8RDciX5z6gXkBkmPkMKr+jg42Ht7tL2AVIhJpVJq3SuNkSUWV8ZEwMTw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(39860400002)(346002)(136003)(396003)(451199018)(33656002)(86362001)(82960400001)(38070700005)(122000001)(38100700002)(2906002)(52536014)(66446008)(66556008)(41300700001)(5660300002)(4326008)(66476007)(64756008)(8676002)(8936002)(66946007)(55016003)(186003)(9686003)(53546011)(83380400001)(478600001)(76116006)(54906003)(110136005)(316002)(6506007)(71200400001)(7696005)(26005)(66899018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L/zmwTNKBpVuEBY5bvOzap3YmLtTc7BzgZm4gJRxvow80y3BvDyb89Pss2qP?=
 =?us-ascii?Q?vbOqjBi6s/1cZ6nqDVDbitykzyyT1ZxXEoRz5PXi1fusINZTHftwCYJFRvcA?=
 =?us-ascii?Q?+ScpDXq4DX0o485lkeshwUR3z9MMXj70YnayMJNT8DDBj/9H1zHGbbprwXkj?=
 =?us-ascii?Q?+ZMZ47wwpxQWY1+RKwE4VjTIZ7AkRsiYbxOz6UK6ONtKtcUuUxJDMwXZT2w/?=
 =?us-ascii?Q?QjugyentI6HHbS/j9NbBSuS67N3YqpmoFt6BzmqydyrZ6qImEDleSb4B1dZG?=
 =?us-ascii?Q?Plo/lqJQ54+vD0FyXxiTkxtQ/2CEi49cZeS5qLtLm+HKva5VEuDeNGZHtdOp?=
 =?us-ascii?Q?/heE3/wBfJQiG4fsXW6CVWDGgbQFU2Cdg0STgEKolEm9h/YGcl8MxB0DmXT3?=
 =?us-ascii?Q?l8GFrq0PEeNevzMxlGc9BnfKow82J9hyl7G/UurkiiGPWyZGKLi2rGJZZeHl?=
 =?us-ascii?Q?ELOXcaNGdtngA2HTKPr+Qyl3ErNxzJ96D3hSpRFq8+n8U56WdJL2wwjB+okC?=
 =?us-ascii?Q?vvOt7u9INVRV2BTQUEwDgGbAoMnkP2Hx8zfKypsOM9DvGusXFtCVClYv+jRY?=
 =?us-ascii?Q?9IJMfLoQt9fbamwYqGUCt2C2hAt59XYxc+Yy4IpUn4tBt9TEeQlYci15D6I+?=
 =?us-ascii?Q?pk0k3mG/4IO+sSlKwyhryMxm3MFHkDL3ilfRxtGjP9W9xMeFYFWHv+rPHVK6?=
 =?us-ascii?Q?OpADLH4Fkr+Z3bKG8gObNxzjMvlhRyCMVGZOMUXWWGORIm4z8VELRal7E1QO?=
 =?us-ascii?Q?PwG5FIr0l29lentTO9rhb/UK/oPXULVIrQgmtjBHtjLUBdmlTa+MV1Kixf4r?=
 =?us-ascii?Q?lZyX1BkrCFRHiQzg7RdrnC3zDUgftmTia3Cku5LbzOU5/aN9EAjv6XNcORVo?=
 =?us-ascii?Q?P7iLgrc/LTOwM80WLCOo5/PXt2kp7pc5qTB4UwV3Pl6aN7BKeti2lU3MEh/T?=
 =?us-ascii?Q?+snnC40R8uwzqcClLDbvtq7C9hEOscmYhVlDT4FJ34c4yMx4kJ2VRUxEPRrk?=
 =?us-ascii?Q?zv/LsR18zk4KUBDgINRDgsTBnSLIQmmPXq+AVly0H4BWURAOyFBBYKsPn61q?=
 =?us-ascii?Q?hYFmLgxcneihsl2/9HyO0uh1RljP0l30IrPuCJXhrOjKHcxTHDTX8ws887vF?=
 =?us-ascii?Q?yRjYCizpwn9HCToYYuact1bLf+nP66SBpnLSYBBzgDPEotR6xi7sK1NUq/aD?=
 =?us-ascii?Q?A8qD6z0IcXibMjipyj7jpULXyxwCfJjOdweUVJGyobA4S4EQ2AsvrPtgwTfb?=
 =?us-ascii?Q?v6H9+HrH+S120eBtVBdx4P2hSOilRuLEUtA0djceZ/3ZfoXE7AQiuQcbynNz?=
 =?us-ascii?Q?OtSZ9TvsJ80e8FlCVhpD4lO7psPkj/QmkwKG18Z1ULLgTb/fVcMyKNCFNWQ2?=
 =?us-ascii?Q?95WXJ8ZneqdDZGcHnMNtVb81sIwoAKgbL+G+GnMqJld9pEhcEM5OTZ/WPjuW?=
 =?us-ascii?Q?Kivng3NHZHzgYu0hfVAXyJ2oz72DamdMxKDFE3OVbyRR/ejGyPLKpY1D0rpu?=
 =?us-ascii?Q?TnVOviCJezy4VkJfWaz3q2Q9xJ2XhRNhPB4WcNOs4PfZvxOLPaCWCeUJXPXT?=
 =?us-ascii?Q?1BK5aV43/mk7J7NErMGaQCdSwOqqfb21y8+Rx5Wv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb0f5742-2a35-499f-5e3c-08db2b6b9150
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2023 06:55:20.2359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: feIqOFbgtea01UWuFpSyvsGgREiJRXsH7pylxSHMoGL7QuHt6UgHuCoMfucuQnovW+AIH/c9UIa7YWoo4RmX1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6119
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v13 0/6] Enable HDCP2.x via GSC CS
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, March 16, 2023 2:59 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH v13 0/6] Enable HDCP2.x via GSC CS
>=20
> These patches enable HDCP2.x on machines MTL and above.
> From MTL onwards CSME is spilt into GSC and CSC and now we use GSC CS ins=
tead of
> MEI to talk to firmware to start HDCP authentication

Pushed the series to drm-intel-next. Thanks for the patches and reviews.

Some follow-up work is expected, which Suraj promised to work on along
with community.

Regards,
Uma Shankar

> --v2
> -Fixing some checkpatch changes which I forgot before sending out the ser=
ies
>=20
> --v3
> -Drop cp and fw to make naming more agnostic[Jani] -Sort header[Jani] -re=
move
> static inline function from i915_hdcp_interface[Jani] -abstract DISPLAY_V=
ER
> check[Jani]
>=20
> --v4
> -Remove stale comment P2 [Jani]
> -Fix part where file rename looks like its removed in P2 and added in P3 =
[Jani] -Add
> bitmask definition for host session id[Alan] -Seprating gsc load and heci=
 cmd
> submission into different funcs[Alan] -Create comman function to fill
> gsc_mtl_header[Alan]
>=20
> --v5
> -No need to make hdcp_message field null as we use kzalloc [Alan] -use i9=
15->drm
> instead of gt->i915->drm [Alan]
>=20
> --v6
> -Make each patch build individually [Jani] -drop cp_fw stale commit subje=
ct [Jani] -fix
> the date on license [Jani] -revert back to orginal design where mei and g=
sc fill their
> own header
>=20
> --v7
> -remove RB by Ankit
>=20
> --v8
> -change design to allocate and deallocate hdcp_message only at enablement=
 and
> disabling of hdcp [Alan] -fix few formatting issue [Ankit] -fix stale com=
ments [Ankit]
>=20
> --v9
> -move allocation dealloc of hdcp messgae to init and teardown [Alan] -rem=
ove obj
> from hdcp message , use i915_vma_unpin_and_release [Alan] -remove return
> statement from intel_hdcp_gsc_fini [Ankit]
>=20
> --v10
> -remove unnecessary i915_vma_unpin [Alan]
>=20
> --v11
> -commit message and header fix [Uma]
> -comment style fix [Uma]
> -add line gap [Uma]
>=20
> --v12
> -rename comp to arbiter [Uma]
>=20
>=20
>=20
> Anshuman Gupta (1):
>   drm/i915/hdcp: Use generic names for HDCP helpers and structs
>=20
> Suraj Kandpal (5):
>   drm/i915/gsc: Create GSC request submission mechanism
>   drm/i915/hdcp: HDCP2.x Refactoring to agnostic hdcp
>   drm/i915/hdcp: Refactor HDCP API structures
>   drm/i915/mtl: Add function to send command to GSC CS
>   drm/i915/mtl: Add HDCP GSC interface
>=20
>  drivers/gpu/drm/i915/Makefile                 |   2 +
>  .../gpu/drm/i915/display/intel_display_core.h |   8 +-
>  .../drm/i915/display/intel_display_types.h    |   2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 158 ++--
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 831 ++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  26 +
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   2 +
>  .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 109 +++
> .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  61 ++
>  drivers/misc/mei/hdcp/mei_hdcp.c              | 105 ++-
>  drivers/misc/mei/hdcp/mei_hdcp.h              | 354 --------
>  include/drm/i915_hdcp_interface.h             | 539 ++++++++++++
>  include/drm/i915_mei_hdcp_interface.h         | 184 ----
>  13 files changed, 1718 insertions(+), 663 deletions(-)  create mode 1006=
44
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
>  create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_subm=
it.c
>  create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_subm=
it.h
>  create mode 100644 include/drm/i915_hdcp_interface.h  delete mode 100644
> include/drm/i915_mei_hdcp_interface.h
>=20
> --
> 2.25.1


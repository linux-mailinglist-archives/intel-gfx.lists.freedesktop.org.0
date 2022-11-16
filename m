Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E25E562B75A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 11:12:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E338F10E16F;
	Wed, 16 Nov 2022 10:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A110E10E16F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 10:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668593510; x=1700129510;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zqb9umoU5s+frPaNbvHkrwz5P716qpj06MHrY/KszJo=;
 b=bD8vAR8yiQECePnbw7+JPxMSgOp+XxVfIqKsz3YQ4YlBf7jXmD1RTtOY
 +aEBaHbpHRKmG+TQyPbDlBudf323pkzfzktd4EfXzbz7gbb7hK3eNbBgn
 tLK0VRQeeQ7/Afk4EzPmUdt+eDyFpAKWu57MWfqeCmPjLuemgqxsxpt4E
 /hyuWg+sqCx5nj9jwmagwBEh8F0mUVpm7nF/q3WQAQS8OFuKmgNN1T/Bj
 BrrxA1nwRG/nzmHrTn//1Nnn9aG1H+Av4ctsnWnGIBdm87LnViRqUGwXS
 PYAQ3ZY/4LEJgwRjjyiNhI8YMfenoEURFEKU0VybHJMDJDKt57YjJkLMY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="295872110"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="295872110"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 02:08:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="670441244"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="670441244"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 16 Nov 2022 02:08:14 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 02:08:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 02:08:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 02:08:13 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 02:08:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=drU5TCoIz14NBqI+XnVJh6Qvz19fXaAe5P2eaROl09onvOBThw7jdgqGC/IsSJL83dqH5Y6Lp/cDR93usGOVhiHpaL7HfDkdMvq4hs+5XfFdUO21ioYieJTdTT6KTgZOHJNm8hj7xmYCEQQ9n+2P2C2xj3sVUEJufiacbDw1zuWcF4Aj/IQOC+uYQoE+fLlmLZeHHg6cewoVecelDqDT+BR1WjTGshefJJplvAyS+c756aWg1jM3h2PEPuPd8ICTy8rjP52howibQpGMEI+liDmNHFRijontt5kF/yrWGz0SAn2kNz1fZHlVq0s20t0tbhX9ug95satTMCZEgBdfZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LRbaS6Zgnv6bwfoNNYSMGtr+qMwGV8aGjaezrlv6K1c=;
 b=a7FEG+7I0PsJG/pAWNSOV3iXUZdpSk0gSKpzU0oIK7vR1slCf2ONphK6OEyKqCgz9UZ7/haU6XFUSzAhM/OSy3kLzmj9o39M3VRCz2ALIBY4GXWCzAL/L2zyRQ0dDK+KY6V5yBQfQmGh/PbWP+Bk8Qr9tC8pqFgOhh/oY3vF+SBPAtntCPfgQdb4kiw4Pn/KWbQlBE43LWdfb2sQT3mLtNgAy2vxvSeWeAvgMibemxecIZGT5rUJr4/Tl7Ms9qAn/yTQ34ilA1UwL9w3vo3DhXtEfMzyGvptRMg5SPKX37AVEu1dEF6geuZDq17fKVv2gEnG3lYVdiFs5rNTML7LYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Wed, 16 Nov
 2022 10:08:11 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%8]) with mapi id 15.20.5813.013; Wed, 16 Nov 2022
 10:08:11 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs.
Thread-Index: AQHY+MoPF5tYS+FS40KB5zf/NtzUi65BQmww
Date: Wed, 16 Nov 2022 10:08:11 +0000
Message-ID: <CY5PR11MB62110AFEF4C220BD46AECCD895079@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221115080845.1793650-1-himal.prasad.ghimiray@intel.com>
In-Reply-To: <20221115080845.1793650-1-himal.prasad.ghimiray@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH7PR11MB5983:EE_
x-ms-office365-filtering-correlation-id: 8101d6c7-5244-4990-b2c4-08dac7ba77e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BoxHexGZiTKKcj6d+U4CHTwN4K8+LQRjN8na2GKVDdnConwN2Wn9TT940eQPW9n/Dl22GOk2exF9+T5YyhpxtXKqu52Lzgl5g9UyVk4PQVlAr5Q3nFrflXSRcE2rqoPfwHoIM+O8P7dFSUUWmJZguJ0uldwdQLiuOUeZugTBLRXQD+68RaG8N6pjS8KCfIIPKz6eFHF3GMyHB9Ui2dhj34BONls2twXZXzpXaGcwQGspWaSH5GCnpzxuFLxIQSQLoac+Za59sOSMVBiQFIlgTs5tl7fKPDm/t0e7iGW5urMkhajM8rg8jLIDUiSGjaho4O0ipErjocM8fKkxzNCFhOXaDkMBCE2hvx7aQZyLnqpyt15jrAkwWwrzkfGJAu+19/RHBCG1NGmMhbgaDMTez7LCFYY2oz27xayIcMuf99kpFnF2Acaz5sRiLiNMcszMNJKDVeaqDnVlwNqO8bZd4gXNa4wA9fnDX0OsDIEEwZsM9aS3t/36IurLsZXDLm/cntLHR8i0JyqMcGDJGbPJpMu4sVtde8Jr02h5p74yhHXXtCYFza/rLFagnvm1aDGa+vwxlHBIPdFcM/dGYA8OcLo2CI/lAj3Rltv37lIozDbtngmg4+ERi5hk3mN7m5pnl3auBZkf61sWRAF+2S7zfAU98cJaGUHOmMC9gJLzRRzr5pLdweZkJX6ykbJDqdzreH7BcGg1Jkse4afm3RJ3vpNvKu33PJNu3nrgLp4AtqmMugD8EUmu4Ro0Sjf1kaQgqIvbos94DvRcXDDvgkAefg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(376002)(346002)(366004)(396003)(451199015)(26005)(86362001)(55236004)(6506007)(7696005)(478600001)(53546011)(107886003)(71200400001)(9686003)(8936002)(76116006)(66446008)(66556008)(66946007)(316002)(66476007)(64756008)(8676002)(110136005)(186003)(83380400001)(5660300002)(4326008)(52536014)(2906002)(55016003)(82960400001)(38070700005)(122000001)(41300700001)(38100700002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QXfDmDwQQ3/Ww6ud3yYL9OJaZupN/EQEU0mvs1tqfJtkeNCjFtaku4Ca9IuL?=
 =?us-ascii?Q?22PMuKxiClwGBBDP5kfn7gv8xREPZ0casm2Z2za5nkQXFbErHR7egobC498G?=
 =?us-ascii?Q?vzYUDillTkcDYpSUBiBPxzNlHwr/bMeLNwhkK5kX/M55Fbgioh7hN1qxUmVg?=
 =?us-ascii?Q?7jpJQAfePlY1QtEdWWZkJ92K2ujtLJGnfMkUTs6fR/en0PvV6TwlI6bjuYSa?=
 =?us-ascii?Q?bnsIwhrFaEcX+QiHxV6qM4N4R6TkOkcwC+iP9UKt3FabIXhp1hOdt+STKQok?=
 =?us-ascii?Q?6QDGbCAvSG5OkIJ79beLGjcb2J7caOvlm4cmyidYcnMBBrkhsRoUDXaBew8E?=
 =?us-ascii?Q?8BTo6vDzmKQFp8Qi8IZTOi0rJRfsCFPUWXNDiyKs9jUMF0bECuKbMhuA3fso?=
 =?us-ascii?Q?botZqlIWNvH6b1edgDD4e//L5jYwtdtkDMf9k8ECTtEg5cSKremqHAZuplx2?=
 =?us-ascii?Q?1qLS6+TIQmrx4E4YZS6FxTY5bQ/p3T2NHJwFipIWJpIL+zAaRdGydIvJnaNM?=
 =?us-ascii?Q?p29xznCSgUgIgLvq7R6c5yTwWMjpBpLsFxwzTdd7b2OMVwMbXIYYexLtRUpV?=
 =?us-ascii?Q?PgoIhLKHTkIkx7qzQXt+2NPFGWZgQQfySfCs3LTCdPOG3EA5pkkhVrvJ2yY0?=
 =?us-ascii?Q?DIAc9UaHYoJY63AML3bR5wiCQCiBrZcP1bpmLB4k8H1tIWTLUVz9821FkjlE?=
 =?us-ascii?Q?AlTxe0/7+TXS5W3rBNvE0H6XMlnsqTxXxufhZX3Cmx2sSdf3bvOgadTJ5DSF?=
 =?us-ascii?Q?gfpzo6l4U7Y+CTjhd/lHkP7Qz0f6LQFU0EeyiYPltFx6XEm4cBNIDq/FpCSb?=
 =?us-ascii?Q?Z8rHgXmadrZ/qbrarq4OYp5PkA9EnhHcU9rk+i4AK8h/5PoEs37C0MgS7gIw?=
 =?us-ascii?Q?qPee6bEb1nnFGvh2X0gwYgULpb/is1Bwa2Jxt+ijrbtW7JhEY2B1Jrgv/EiZ?=
 =?us-ascii?Q?MepoVrApA15FyhgcSuh/MONYARbkFSRNQxFQUN21yRJr5xazf3s7NbdfQFEY?=
 =?us-ascii?Q?+F8zS1dTBICcdr9BoL5GnWI8HttlsVyFP//3lW3i0zQo6zO6ODnHUZVGXU46?=
 =?us-ascii?Q?Hr3XNqafpjlYKPqp/XPDK+RCJvBLeYX1lYMErfwMWetQ8fmzexpdvSHnhuXm?=
 =?us-ascii?Q?qncHrE3ZO/1nIr+IhPNCStEhejtI60kkUoJriw5zQVhcRcp6FjSMRENJvR6u?=
 =?us-ascii?Q?OnPFTm6kzP8c6tszNXchWONLfDMG3bA/UV9zljNUFwaIsLaJg3P+RORfXH3D?=
 =?us-ascii?Q?gbAAZu5kkgxDw2i19k0HBj3cIZTLz8gmhZQwKT61c05g1NB9EH9M3v914ZHU?=
 =?us-ascii?Q?q1cYAlxvdTnpEnnOgsDvTZHvG4FxoLQIiVJX2dzN2tl+aL+9YLF0TsyOESNB?=
 =?us-ascii?Q?mJce3X+7WU4njJPcyIUM5sLeVB2xfbPcCKm4VMyoZkn4N+XS0Ba1BDvX6YP3?=
 =?us-ascii?Q?IK8R4B4LQJCLx6YOEIOKVwkCCLEvm/ZfQHY3zeFP+JDXg1R1kCIP0IjaHhDJ?=
 =?us-ascii?Q?GnZjxEu7df2/HTae/CkMbd5FskyJZNnjBVMsT1m8xHyiJOul0AcgaSfK1EeE?=
 =?us-ascii?Q?a7xaffMmkym/jBQ/uJHNlnqWg0S1bdbkXA2Nyii/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8101d6c7-5244-4990-b2c4-08dac7ba77e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2022 10:08:11.5552 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GAX6K0dzyT/63PeJJRVK6RXfNRh3N02wvy8570BpZLXlklXDA7b1015in22jXKerFCbqiH5KUMWYyw1Mc2PuiI7AFX+YBBsYCEmUS3hbCuU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5983
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs.
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Himal Prasad Ghimiray
> Sent: Tuesday, November 15, 2022 1:39 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
> bandwidth via sysfs.
>=20
> Export lmem maximum memory bandwidth to the userspace via sysfs.
>=20
> Signed-off-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h   |  2 ++
>  drivers/gpu/drm/i915/i915_sysfs.c | 27 +++++++++++++++++++++++++++
>  2 files changed, 29 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index c4921c9a60770..3ba1efa995ca9
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6603,6 +6603,8 @@
>  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
>  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed
> point format */
>  #define	    POWER_SETUP_I1_DATA_MASK
> 	REG_GENMASK(15, 0)
> +#define	  PCODE_MEMORY_CONFIG			0x70
Please re-arrange the macros in  increasing order of pcode command.=20
> +#define
> MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH 0x0
>  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
>  #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv,
> pvc */
>  /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */ diff --git
> a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index 595e8b5749907..0a6efc300998b 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -37,7 +37,10 @@
>=20
>  #include "i915_drv.h"
>  #include "i915_sysfs.h"
> +#include "i915_reg.h"
>  #include "intel_pm.h"
> +#include "intel_pcode.h"
> +
>=20
>  struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)  { @@ -
> 231,11 +234,35 @@ static void i915_setup_error_capture(struct device
> *kdev) {}  static void i915_teardown_error_capture(struct device *kdev) {=
}
> #endif
>=20
> +static ssize_t
> +prelim_lmem_max_bw_Mbps_show(struct device *dev, struct
Please don't use mixed case here,
How about i915_lmem_max_bw_mbps_show ?
> +device_attribute *attr, char *buff) {
> +	struct drm_i915_private *i915 =3D kdev_minor_to_i915(dev);
> +	u32 val;
> +	int err;
> +
> +	err =3D snb_pcode_read_p(&i915->uncore,
> PCODE_MEMORY_CONFIG,
> +
> MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH,
> +			       0x0, &val);
> +	if (err)
> +		return err;
> +
> +	return sysfs_emit(buff, "%u\n", val);
> +}
> +
> +static DEVICE_ATTR_RO(prelim_lmem_max_bw_Mbps);
> +
>  void i915_setup_sysfs(struct drm_i915_private *dev_priv)  {
>  	struct device *kdev =3D dev_priv->drm.primary->kdev;
>  	int ret;
>=20
> +	if (IS_DG1(dev_priv) || IS_DG2(dev_priv)) {
This seems to discrete agnostic.
How about HAS_LMEM ?
> +		ret =3D sysfs_create_file(&kdev->kobj,
> &dev_attr_prelim_lmem_max_bw_Mbps.attr);

> +		if (ret)
> +			drm_err(&dev_priv->drm, "Setting up sysfs to read
> max B/W failed\n");
Why this sys fs is outside gt directory ?
Thanks,
Anshuman.
> +	}
> +
>  	if (HAS_L3_DPF(dev_priv)) {
>  		ret =3D device_create_bin_file(kdev, &dpf_attrs);
>  		if (ret)
> --
> 2.25.1


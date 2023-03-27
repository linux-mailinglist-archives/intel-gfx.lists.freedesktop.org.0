Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 197286CA475
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 14:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8842C10E5A5;
	Mon, 27 Mar 2023 12:46:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC2E110E59E
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 12:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679921209; x=1711457209;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oFL8Xuk2peGnxrsygZJr60O/2hR/IIxIGXx7qyVAJSc=;
 b=KrwbDqCvzB/JOPjV6kKaotuAFxzJ0cYN3FT2vK2uRTBM4PYZn6bX0P4D
 QjwnoMStTublk2/eGAtf67IWOOa/tP5MuEZq/awRT7smFYoww8ac1PPej
 eVu42w/cz8eVM63/wuxE9aTMIi2cskY6nr6AlC+pCKYYb5pdNI0vZpt6J
 iTnd4vQ1kyAoKW8w/xSTnApPLoKwM6ZRaO5Hcwj+BmqnN8Ptu7NmBF5l0
 uJGWRiSCHbPi2df8UVEToOFaHpJ1ICv2qzc+oYNnBmB+v9plhvLi9iklM
 UaCZA5BMtvexnhIYBldVuXGz9JCatVKwSr+MYpKkUYETSNI0sJGldq4Tn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="342654020"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="342654020"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 05:46:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="716063852"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="716063852"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 27 Mar 2023 05:46:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 05:46:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 05:46:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 05:46:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dcoyHb2FiGyEj4e+G1+Ex+K9vuYqTTJ+qAt7aLJxBtXp8pupa0deTetYDVf3tudxi8kN5ecFEx/dKQ1dyEkQXhcgyo0DjxtsSiicQoTxrpb7TGDb3EhnR1lqk370leVHXl1eJ7McwURjTLIYOqSMzVzf8KMeE1qBKX87J4uxB52fvBYbuuZMgCHzMPFHYpMegVxNuwT/TEKKEjrRB/G/EMkD2DTWtJy8umTDQZ4xZkU18BuyVgClgykdyJ4hAJAcSKWcQgfZOIBHXef/MlxWAdp73nSHwxnH+WcuoOvo7X8RuyjTyz6QuMiNGQu6Kc4uQ5/jbqqBC6JJqJB+N7JiHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pFsvTJvQjyprVHs5nxBHIhyFOuz1A8XJdlVYGE7lI3A=;
 b=RC3XQYa760iHTQvdJko94vj7fRZCRY2JoGgGHtwzpo4D9Y4XhO1ymDPaoFJ/+Mu1n26ruR1/UBBrLTVpIDmu4gUeZInFUPtcZO4bzImpnmQfjGe0bVFfeaxgob06ZnBmOr+nPe9vcY21FJyLfgH+2Ksld/i0yx8aOgevWK2LOZxl5DGCHX024q/DlDWTsRorfQDYrzhkfo0apGMuETUU8v/FZAyeLE/iZCte/lYSoUZKwvNfJmhoFH4DhPECMOpiQgCfkLK9hiY1ZAXJ1E+DA6D0fyysHOWs+qOU/Q0HkCe2X+Nm5MUMcf0OJBelZWfLJeige+dqc2INs8mhyV1CtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SN7PR11MB6704.namprd11.prod.outlook.com (2603:10b6:806:267::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.31; Mon, 27 Mar 2023 12:46:45 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::9b28:6c55:722:9ea0]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::9b28:6c55:722:9ea0%4]) with mapi id 15.20.6222.029; Mon, 27 Mar 2023
 12:46:45 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [core-for-CI] x86/topology: fix erroneous
 smp_num_siblings on Intel Hybrid platform
Thread-Index: AQHZYKVfccI057kqdUOpkZaT1NDW868Okm3Q
Date: Mon, 27 Mar 2023 12:46:45 +0000
Message-ID: <DM8PR11MB565580BCF44661B6A392F0CEE08B9@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20230327121116.1785979-1-imre.deak@intel.com>
In-Reply-To: <20230327121116.1785979-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SN7PR11MB6704:EE_
x-ms-office365-filtering-correlation-id: 047e1674-2d46-4973-13ca-08db2ec152d6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v1X/e22r63IFaYtLM+fBX39s3TXAwZhmNWBf0CS3dUa8XP4vwGjiJM3431b1QVUsqNcAl6acHT0EMjRnvQluUA3oKCruV8enpgvWBUUccqw5HycMAWSxzOCnMU8alelLTtk4BDXw2/kYnbUNOaaOM6ckce5DzxGXB9DQBtcDhYC32tL3QGTmX6z9rCQ8Gfgz1vFQzF1M/L5Crca4Gunu1M0f9rK+bToDT2dNPUgYiR609bEWqSg31lbWsmC4XRz2mveLBnFavWRxe4gSndLOqlHDfi6J1wUwC0svfMt/QpT1XOjhHcTR4yQuN7HcJ5qZIVLeWeXWjK3mFs4oZY5lLToXv1EIqD7Jrw9rQRsEUcz7ZglExMymxLdXSX8G1Umthwl9Ioen+kB15jkmZ6hJsWfNihJGtYPfce8rw6fE432W2vE/M/HVZHfgiqTw32V+GbcugRox+6FnyLHlrgVsgnxJ/xbk7Z9NniO5bKJCEnGJPJTFY3BSAeFzVcmcrSxASZThdX0r4uGYbajrl9Vqgn5DfPmXeL3eDdtflLG/d9OeRzIAdYo0krhHwWDTPds7TKIJuftgUpnP7uXKTUjOds/3QRgcFFWJxx5s9Us3uCs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(376002)(366004)(39860400002)(136003)(451199021)(38070700005)(86362001)(55016003)(33656002)(2906002)(478600001)(966005)(9686003)(83380400001)(7696005)(71200400001)(38100700002)(110136005)(66946007)(76116006)(316002)(8676002)(66556008)(66476007)(66446008)(64756008)(82960400001)(122000001)(52536014)(26005)(6506007)(186003)(5660300002)(8936002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JYy15Ea8w163De9RW4XnNZqtAQclFMwQUAHi92GnmSG5tSTqklr1M4JJKu44?=
 =?us-ascii?Q?/q6rBrhTURvs2t1XjDhs5Ae8vklxkkIOwjMkvCl5Ol62qNZJKDSIKX6mw/l0?=
 =?us-ascii?Q?WohhXEJwsz09M21H7sBldEfeRa8emcAtj9eh3RKNrkGar1VDo7WvIBwGj6NL?=
 =?us-ascii?Q?UiOfhiFXYq3V9Vnz8shlLsooSr586MuMm8QK5IPoR2eXUY8d0WHJ1JF17Rxu?=
 =?us-ascii?Q?BKr5blO2yRIRDpGAzHhCho3Nwc3EJnB81fhnVQJUDisiI1t7C93HQWXkx9mQ?=
 =?us-ascii?Q?FJcPLoiCrVFJJhp4SIuqLLjUHfbrFCVb0NscJEo/c1HBgso0yvCnQ/aOQrH9?=
 =?us-ascii?Q?s2M/lUVwz5Qjh9XaP7qUYzoO0lh8bVoaJQYLJDA8NHMUTKAualiKE0WctAXc?=
 =?us-ascii?Q?34oeHspKl4+DF6Xrsa2QP+Ua4uny00NqIsllBfUte0X+yk+fQV1IbZwpCNHh?=
 =?us-ascii?Q?NoPTpzNtF18K/09Fk5n4MNNz77bf+hRYDuTJHFmitynXT4KhiEQd/Ch1ce4N?=
 =?us-ascii?Q?dK0ppKIk4q1OFVNa8R+fjK0VnVUydK3wNYyIyo9P59/bS4DPeLtt5Wikc/8S?=
 =?us-ascii?Q?OZh3Wce7ImSMp7DDI9VOdm8IR4OAYv0ECTSh9TbSKgVcSwibohEOrWgo3Kan?=
 =?us-ascii?Q?5SdwJASXU1Iq70ht3RZ+9j4pjzLv5XBlMIiH/qmh8Sd57CzVnFlMrhNMgsqi?=
 =?us-ascii?Q?kyQ2TL8axrgtwlh9X6nZDTBEoO2IA3VipzILlkxFaghGEST+tUuWAbVfw/vz?=
 =?us-ascii?Q?ou1B1SsoJ6nhTIn41L7Ek2iD/eI3cGvfQ4dHiEUgj7ZEthBEWE9xNRzsCcst?=
 =?us-ascii?Q?vtDJNxTXEXagcQ958E213CEbbvLeMhxAiIbHAA1ow7UiI/ennVMIhsqXY3qq?=
 =?us-ascii?Q?jJUtA6QaeWfKhx1FCbIn9ukqnqoeMV2WgD5dhOpiUE/9UY3Y/lsSdYdJCniK?=
 =?us-ascii?Q?jGAKdSxqNBxPJWMM64VjCqk2Jnj8xxtPLI4A6BDNyVw0ZN7zG96+1LrGVyf9?=
 =?us-ascii?Q?HyQiLnMlAAyG/z18obecppx+vCoMTodOvcFWPprIXs97kGrjKRkIhCp+5qb+?=
 =?us-ascii?Q?6c2o1xmKGHflffRqVFCNYwyt2DqL1jLQOzaHsYAF0KXXSOo26supZRuEJ6t3?=
 =?us-ascii?Q?i4XaZ6D0ZECDvXZ2xuVKp9ObqH1/fKxXJZy9xWCRrSEU7n77QIGwwYh2gobC?=
 =?us-ascii?Q?URC0pX6mkQ93KEdGNlVPlPKzuUZQtg5u3X3shuRmq5tZm4Qdx6ENtwWvrcaC?=
 =?us-ascii?Q?XO8FAglvCkyiprmorFTL4IUyRxJXoWXvhGTcCiJ2EGPFxNasKOzPapaOjMUu?=
 =?us-ascii?Q?XIZ9MlYzZpUhM8/10ae6IOzlotmiXkCUwqAPPi6h+Ykwsp6s0FSbWEIufGLz?=
 =?us-ascii?Q?900Ozz6K98C2ePox2jnFTjyViiNXG5sKUEYOKb6osUN2SMU+JbGnhSr7qp4I?=
 =?us-ascii?Q?oHu4Ej5LhgIrk5sHLGuxykciSC6szuBRU9QTP9mW2RbUFvQF9wMDL2CmwrIN?=
 =?us-ascii?Q?Ol8VkXf06WwmanJxGNyeA6Tl7lsbEH0kgUTRATAkARSDkM5WvMqv2gwa88mi?=
 =?us-ascii?Q?1jKyRaqBKLVkWocsxXLoenirDynyt+65Y2oHz6ln?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 047e1674-2d46-4973-13ca-08db2ec152d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 12:46:45.6030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dx+8OSUcS32OgIWMGGXnKSHn7eF3ykmKTpgDjmfrNVFteWCMo+Ck4/vce2HsQ/HEHY9ug8kNspuRMwrPKgi8zQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6704
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [core-for-CI] x86/topology: fix erroneous
 smp_num_siblings on Intel Hybrid platform
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

Hi,=20
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re Deak
> Sent: maanantai 27. maaliskuuta 2023 15.11
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [core-for-CI] x86/topology: fix erroneous smp_num_si=
blings on
> Intel Hybrid platform
>=20
> From: Zhang Rui <rui.zhang@intel.com>
>=20
> The SMT siblings value returned by CPUID.1F SMT level EBX differs among C=
PUs on
> Intel Hybrid platforms like AlderLake and MeteorLake.
> It returns 2 for Pcore CPUs which have SMT siblings and returns 1 for Eco=
re CPUs
> which do not have SMT siblings.
>=20
> Today, the CPU boot code sets the global variable smp_num_siblings when e=
very
> CPU thread is brought up. The last thread to boot will overwrite it with =
the number
> of siblings of *that* thread. That last thread to boot will "win". If the=
 thread is a
> Pcore, smp_num_siblings =3D=3D 2.  If it is an Ecore, smp_num_siblings =
=3D=3D 1.
>=20
> smp_num_siblings describes if the *system* supports SMT.  It should speci=
fy the
> maximum number of SMT threads among all cores.
>=20
> Ensure that smp_num_siblings represents the system-wide maximum number of
> siblings by always increasing its value. Never allow it to decrease.
>=20
> On MeteorLake-P platform, this fixes a problem that the Ecore CPUs are no=
t updated
> in any cpu sibling map because the system is treated as an UP system when=
 probing
> Ecore CPUs.
>=20
> Below shows part of the CPU topology information before and after the fix=
, for both
> Pcore and Ecore CPU (cpu0 is Pcore, cpu 12 is Ecore).

Tested-By: Jani Saarinen <jani.saarinen@intel.com> on local MTL setup. Also=
 tested earlier on other CI systems=20
by: https://patchwork.freedesktop.org/series/115601/ trybot series.=20
For this there is https://gitlab.freedesktop.org/drm/intel/-/issues/8317=20

Br,
Jani

> ...
> -/sys/devices/system/cpu/cpu0/topology/package_cpus:000fff
> -/sys/devices/system/cpu/cpu0/topology/package_cpus_list:0-11
> +/sys/devices/system/cpu/cpu0/topology/package_cpus:3fffff
> +/sys/devices/system/cpu/cpu0/topology/package_cpus_list:0-21
> ...
> -/sys/devices/system/cpu/cpu12/topology/package_cpus:001000
> -/sys/devices/system/cpu/cpu12/topology/package_cpus_list:12
> +/sys/devices/system/cpu/cpu12/topology/package_cpus:3fffff
> +/sys/devices/system/cpu/cpu12/topology/package_cpus_list:0-21
>=20
> And this also breaks userspace tools like lscpu
> -Core(s) per socket:  1
> -Socket(s):           11
> +Core(s) per socket:  16
> +Socket(s):           1
>=20
> CC: stable@kernel.org
> Fixes: bbb65d2d365e ("x86: use cpuid vector 0xb when available for detect=
ing cpu
> topology")
> Fixes: 95f3d39ccf7a ("x86/cpu/topology: Provide
> detect_extended_topology_early()")
> Suggested-by: Len Brown <len.brown@intel.com>
> Signed-off-by: Zhang Rui <rui.zhang@intel.com>
> Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> [Imre: resend for core-for-CI]
> References: https://lore.kernel.org/lkml/20230323015640.27906-1-
> rui.zhang@intel.com
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8317
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  arch/x86/kernel/cpu/topology.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/x86/kernel/cpu/topology.c b/arch/x86/kernel/cpu/topolog=
y.c index
> 5e868b62a7c4e..0270925fe013b 100644
> --- a/arch/x86/kernel/cpu/topology.c
> +++ b/arch/x86/kernel/cpu/topology.c
> @@ -79,7 +79,7 @@ int detect_extended_topology_early(struct cpuinfo_x86 *=
c)
>  	 * initial apic id, which also represents 32-bit extended x2apic id.
>  	 */
>  	c->initial_apicid =3D edx;
> -	smp_num_siblings =3D LEVEL_MAX_SIBLINGS(ebx);
> +	smp_num_siblings =3D max_t(int, smp_num_siblings,
> +LEVEL_MAX_SIBLINGS(ebx));
>  #endif
>  	return 0;
>  }
> @@ -109,7 +109,8 @@ int detect_extended_topology(struct cpuinfo_x86 *c)
>  	 */
>  	cpuid_count(leaf, SMT_LEVEL, &eax, &ebx, &ecx, &edx);
>  	c->initial_apicid =3D edx;
> -	core_level_siblings =3D smp_num_siblings =3D LEVEL_MAX_SIBLINGS(ebx);
> +	core_level_siblings =3D LEVEL_MAX_SIBLINGS(ebx);
> +	smp_num_siblings =3D max_t(int, smp_num_siblings,
> +LEVEL_MAX_SIBLINGS(ebx));
>  	core_plus_mask_width =3D ht_mask_width =3D BITS_SHIFT_NEXT_LEVEL(eax);
>  	die_level_siblings =3D LEVEL_MAX_SIBLINGS(ebx);
>  	pkg_mask_width =3D die_plus_mask_width =3D BITS_SHIFT_NEXT_LEVEL(eax);
> --
> 2.37.2


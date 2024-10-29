Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E999B40AD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 03:58:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8C610E590;
	Tue, 29 Oct 2024 02:58:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IznE+bHx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA2110E590
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 02:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730170727; x=1761706727;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2k8rfy0Yf0AGLP/fTPHxikwf1S0OfcJUmTrfwAUbvr4=;
 b=IznE+bHxsUKVBlxkYPs6tKD7j/y/RnjY9yfv1u8TrWD+faRv1Ir/Bjwt
 8hsiJctREhRHBZpmwXKJqzbZGbIrUMZvtZ+0Drgw+M5D0dqn0lhUJUhDY
 k9mxBODa6LqEhwPmaP4lUsifxYB9vpoeS+/4DRNhY8vwXtKxv6/SPAhXf
 CCWmwJHQMC3NTshqEeeuD3louWXLaUCNqhEe+Swrjya+hAON6c4VXuIJT
 MQnWD7/30/GA7k6j6FPkNAuOUYCpzDnMrqHBNOr2UdyRleiHE+sXYhiAp
 YWiLexCmot34SyyTc5Kj9z05XjQZnUcn2REDdK4AIbkqpQF6PasJZa4eP A==;
X-CSE-ConnectionGUID: /nGnZI5qRdOcgReaIlpp0Q==
X-CSE-MsgGUID: h9NtHl9PQC2PyKYTwEOUGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29568373"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29568373"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 19:58:46 -0700
X-CSE-ConnectionGUID: DyXv654aQHOoNu5eG09low==
X-CSE-MsgGUID: LpT8oeY2TQ+z/1ZcTfZ87g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="85770810"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 19:58:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 19:58:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 19:58:45 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 19:58:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sukdubeAuTRAMVoVZN63204YqzJW9a7BQ4cyFUa+FsxnZWJuOqf+lluNjMJAUF+Me1CsHJGxKsAAV5bD/F0exQHNkeAXhfpuJG0E5Hj88B7sMlrccnyG7pwbLxch9IVJMQvnMbY8tKYQjHdSCake18sq7IclcPeqVd2AsGg95mmxhAMN/z9vGHuNsJ79wMWPV4+wg8TbcDn84U+6JG+3dD2jnmqcbi5LgbeBqt6M+40Z3sA2s36C4VodeWY7C4bTJEK/N9tRRqmQKmo/Bi1YrgMzIPm7DHEvTd7OBx/nonkec6qz74nD6XerzW6ZGuEznxoOQDLKiFjFA1QZB0mIHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rqbPErwl3qX6qI+RlIcnrZFyCUMV6RzZTVCoTUvfqw4=;
 b=JPEgZ99U/tPzR5nbjYN2EeCqVsxpAXyH6JkvhE2wKabYG530kx7NwdgKNfWAHmtKoIhZLV7bI7O2P/bWJ/6MaWGiNkGnDZhO5XXDzIkwj+UDhPth0Top2iaIYqxRNrLaeo+L8kgECJGLsFGKUC3ksl0o8gV7w8Cs3j5pDkf4goOOQJvNoPOpfKRFuClvvJw4jDenZ88T7DtHHc0FIuVWA7UxzSVtkgmZumAtOnZcdPqDQ6uT9hiUWNAnafxCdBCDbpotk99CoClBGmZvFHoLcSWsoANgP1ZpjOsMC++szlwqZNT0EHv4tRbTdk0AWlQIxrxX3nsTwyQ62R/2q7pkdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MW4PR11MB6618.namprd11.prod.outlook.com (2603:10b6:303:1ec::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Tue, 29 Oct
 2024 02:58:33 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8093.018; Tue, 29 Oct 2024
 02:58:33 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Golani, Mitulkumar
 Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 1/3] drm/i915/vrr: Update vrr.vsync_{start, end}
 computation
Thread-Topic: [PATCH v3 1/3] drm/i915/vrr: Update vrr.vsync_{start, end}
 computation
Thread-Index: AQHbI6bt+jmumn/qrE2OiluewOhza7KdFKIg
Date: Tue, 29 Oct 2024 02:58:32 +0000
Message-ID: <IA1PR11MB63488C1E2446BA6CECB2638DB24B2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241021105100.2861830-2-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20241021105100.2861830-2-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MW4PR11MB6618:EE_
x-ms-office365-filtering-correlation-id: 40798ba8-d2da-418e-8f70-08dcf7c59331
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?BYFvOiB0Hrair1cdK1CfK4ZdxAfv/9XViuZLB4ApTCX/FThZCh6JPdAB4SS2?=
 =?us-ascii?Q?e82RsvV28iaHiZDB53PdlROgfUgyl0mqNXT4Y7KNbmF6zxjfrViWTsEY5IFu?=
 =?us-ascii?Q?u7ftkMmnkqJThXwqnTjxHtdeZ2E9lRxowk3Rhw0NLV7dQtRTt9wjG7JnZx5H?=
 =?us-ascii?Q?5j1X2qv00P7bw6+miUpN5hdmoKhD67TPYiywGjMo8T0ZpcbQHoeNW3ZjQJ+h?=
 =?us-ascii?Q?ZgMS6j9vIF2lY/IIdkY3d82ys7N1y/Kyu62+Ewya6EfQYBstPhwichWD7GJa?=
 =?us-ascii?Q?gmoPcCFyOorGYsJEjvzZjqc4H00jUCrVzPMrN9d2iDLV4C5dzKEIaGM3GT/a?=
 =?us-ascii?Q?oLr4O/UadqPGZZyAgaVxu/HxEZ8vw6LEXB90a5Tvb+2gQdYxpTkNsfj6Y0Vt?=
 =?us-ascii?Q?ZImOdUwTG9uyovsk/p5ouzQ4Aaq6TkA9BkZUi4dYJSNdotCmGRVdUMGyDmN/?=
 =?us-ascii?Q?kfKPrt/rwkHYcTI3QrjtNVDI+NrCugI81Hn4sd80f1w3SIE8tGTfykNVutVX?=
 =?us-ascii?Q?NyYDUHpYTW8UQSsICnndGDUPgRC7ngCOEiVANXhQANabpifcll7G6EdnGWhq?=
 =?us-ascii?Q?NhMVoKuYNMBUjXUokbNsw0QCrZy/BSeeODeMHoQeX3TDz+m/AhadKoCWmu2q?=
 =?us-ascii?Q?xe8HzPW6q+AIVyVAabmYBkCZSjDg/bXQPfyN3UeOP04DN2gntbiyR8iG4DRu?=
 =?us-ascii?Q?PXrZf80TiQufJ8iAoTHKSb12kJiL3SiafMVEw/38WcxBYBSoB+s2NjI8zcFz?=
 =?us-ascii?Q?OH1nKeeoD0sLuwODq9qBik7HgPitfriSOIkVyfAJBHvsEA/BN3UpVh7CTi8e?=
 =?us-ascii?Q?IRH7AzIYwNShjJn9hA+dUBLAQ9G8dpw83ZffmOgKbpbjZPFUQw7Zn+w1KH6V?=
 =?us-ascii?Q?nwSDHcbGiFbgphs5qw2zwbKtMdDZzkFW0IbM5gJUfuXoOjyHtH1xvzxseTXr?=
 =?us-ascii?Q?NbUQ4Ro4WxF5Ns1Q8DxaLs0VD2rCecfdYSho4AEm8Rt+PmHeCB1BfCZGrQfB?=
 =?us-ascii?Q?3hsto5ZTKy23SD2tFiSkUVriCR/6fmEUXGs7dKm0vqTn/l1KPPDISUrVUcua?=
 =?us-ascii?Q?PaKQYpHAaaX4cvaiIi/iTMFRhJRCl3ixevMuGRD6cwiqs331/Xd4LTLQDUgg?=
 =?us-ascii?Q?ehZDbUsptlOUCTDnehFasrtb7CMgf262O5tC5GdegKJIvs4nNsBNb9/67+cG?=
 =?us-ascii?Q?arsVbFOXtBossV6srexYnID1hpvej9ilXBlQ2asXxVNE/5Gw/HolJ+vKdb+J?=
 =?us-ascii?Q?/UsO0UoBpsatjUva6lh2jZ1L701/u3M5KKp3qGzje22CE7WWfR7EMWVfDBoO?=
 =?us-ascii?Q?936ez8S2ld8V4jG9L8mtba7NeXo3HoaS97Lti7gXz6YRfuQajFfC/kcMXZ55?=
 =?us-ascii?Q?zAfMVqw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TYokamZM0hTetD57xSPNAmDyaJmWItanGzxSB2IHi9zFNju0fjlwIiHK6N+C?=
 =?us-ascii?Q?Rhn7Y1xVQSXsLWYwZJc9AYG0IJTLOlGuBQP+/BSukWla9dJlU4RbsvlbLx9Q?=
 =?us-ascii?Q?SW6PJ7Sk+cB8dv1Wo8g9uqscZEiR5KtGMsowrxvZj6bda6GsNPS1pNCFwLcJ?=
 =?us-ascii?Q?LQ0jGE3gB+E2SYMIp8aP5f+d7QenAsVQ2QnmWWuoP3DsQjA245LiFM/lC2r3?=
 =?us-ascii?Q?twBqiSaPujo8jOOcDquVRp2/98Xv7V0ge8TYRc7wr3tOGQ+FqcNmtxtvmahX?=
 =?us-ascii?Q?rKzhAIBB8RFwnS2trFBCZGbHJn8NxMuSHkP3n8gGqhj7i6ee4EguWA9xubqn?=
 =?us-ascii?Q?oUI3nsMBPemDiiCt/dREtcfysRfVvSpylBll2/18a21MhqWych+o2i0F+Lm2?=
 =?us-ascii?Q?Q+GjGYI4TP5psoKG65IXxPSwBZyxwNASn0eAenMp7O++5d0JAOgOnyOqO6B6?=
 =?us-ascii?Q?Jd3pfsVFCa+5hSwxFlmTPqLd6dOEqmjS7e5BigW8wbXxfb8XffwutKMlKHgI?=
 =?us-ascii?Q?5N5rEyrabWI8VPkeeX52D15g5sG4LpBFVsmUfcSM2O5bxsOL6IAy0LZfK5Wr?=
 =?us-ascii?Q?aEP8rB56QIIGiIRYSwJmGNyp+4jSC24sqmN3By26TqK4ED54kexrxlfxImd4?=
 =?us-ascii?Q?JkUc1WkuKjd+mJqBFLgr6GlVyX0m+DWexBmSI8qEWbKCxiJyoFrPcqyRlNTC?=
 =?us-ascii?Q?tOLC6+Ns5wHC8WUk1O4wQnPfpXuK0SyPXaAggU/eR3NYYTCBCWsl7M4aTkwM?=
 =?us-ascii?Q?xWTgdDQYfH4eQQAnDDstvE0eKZi7ha0n42h6+bVJCd56yIR8Da0aS9k8uynI?=
 =?us-ascii?Q?2ty2teJWCDUpEDHfAjCvrC0+MQk76a4vHhVh9ty+SOOBqCh7+TwiXcz7HJcx?=
 =?us-ascii?Q?Y4HwHi0yuZ5QaJzRXDQ1YRZ38XpnVZIye1SwM5TTCrPLM770pb4tHlNGhzYR?=
 =?us-ascii?Q?ekUchG88ZRGvZhXQbw5ahCcx97uVtCKND5PLuZUOrY5zJQND38Wkl3pzkPJP?=
 =?us-ascii?Q?o8RKoNow8kUD29KHQBZHz4ypPGWKDVeA540aGH8IhV/pq/aOIcSGFCGtotfl?=
 =?us-ascii?Q?PSj56jxKzcyL4jx2E/RMkowlNoROubo8cCyFy6MLH52cCznbNOaCe2uXGSJM?=
 =?us-ascii?Q?HhhB23gIcvkD5HvBK2DwcLKZnwt7Dj+YBnj8B7+bAsk5ZxYBLOBu3035/yVz?=
 =?us-ascii?Q?HFCXJiE0Vr4IooFsfAclQWbqUccMbfj3d/OXMZVYq7g60FtXvCaVzOQfQSK+?=
 =?us-ascii?Q?6EEYcq7BF+oYsVu/FvYy+S5n+vbwxPkn33EGFlYNJKKJoNVNkAsgCiKLguR3?=
 =?us-ascii?Q?ZXz8HffeWHZZhmTuec5JQEmE9ra4Pkd3D3MoFifkoUivOWte6NOCu0w5Hhz6?=
 =?us-ascii?Q?ye/lK0xsMVg0wuIYpu1n3RlQJhYb0Im0y/opWeJQ9pRCD4wm43SB+1IV38eT?=
 =?us-ascii?Q?kqCLh3MfFOIPzV7U+ngsM32ncOAh7QxeQyVtP0vJaLeA3JGcJVEVToGdh3Hi?=
 =?us-ascii?Q?UxQbY6ISumF1pDPdSGSc/C8nDXz7zEf2RJyFFC2LUL6JRewey3YRkqYIHjp3?=
 =?us-ascii?Q?z3pECOYLi+t6lek2mXxUta5U46tkPeorPowa85HAAc4uYHZ1FLrwShFM9nCL?=
 =?us-ascii?Q?fhy6V2pspbcla0ZYsC+z9Jg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40798ba8-d2da-418e-8f70-08dcf7c59331
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 02:58:32.9316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fxTNZqlW9SRwjLjwuLr2OrOex7aQKhZiuKJjk55bg9yiy85nuB0pW2p2g2F6XKCF4mro4nMVVYpa1qb7Cb8Uf/tuSB24/+lyrIlYCULW83RHkBM2SjiL6JR129UjyXh5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6618
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

Hello Ville,

As suggested on Revision 1,

Added,
1. State checker and dump for vrr.vsync_{start,end},
2. Removed dependency from vrr.enable

Any further inputs on this ?=20

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Mitul Golani
> Sent: 21 October 2024 16:21
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> ville.syrjala@linux.intel.com
> Subject: [PATCH v3 1/3] drm/i915/vrr: Update vrr.vsync_{start, end}
> computation
>=20
> vrr.vsync_{start,end} computation should not depend on crtc_state-
> >vrr.enable. Also add them to state dump.
>=20
> --v1:
>  - Explain commit message more clearly [Jani]
>  - Instead of tweaking to fastset use vrr.flipline while computing AS_SDP=
.
> --v2:
>  - Correct computation of vrr.vsync_start/end should not depend on
>    vrr.enable.[ville]
>  - vrr enable disable requirement should not obstruct by SDP enable
>    disable requirements. [Ville]
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  .../drm/i915/display/intel_crtc_state_dump.c  |  4 +++-
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 24 +++++++------------
>  2 files changed, 12 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 705ec5ad385c..296a6c9de1f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -303,7 +303,9 @@ void intel_crtc_state_dump(const struct
> intel_crtc_state *pipe_config,
>  		   pipe_config->vrr.flipline,
>  		   intel_vrr_vmin_vblank_start(pipe_config),
>  		   intel_vrr_vmax_vblank_start(pipe_config));
> -
> +	drm_printf(&p, "vrr_vsync_start: %d, vrr_vsync_end: %d\n",
> +		   pipe_config->vrr.vsync_start,
> +		   pipe_config->vrr.vsync_end);
>  	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
>  		   DRM_MODE_ARG(&pipe_config->hw.mode));
>  	drm_printf(&p, "adjusted mode: " DRM_MODE_FMT "\n", diff --git
> a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 19a5d0076bb8..89696243f320 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -236,7 +236,7 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
>  		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
>  	}
>=20
> -	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
> +	if (HAS_AS_SDP(display)) {
>  		crtc_state->vrr.vsync_start =3D
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>  			 crtc_state->hw.adjusted_mode.vsync_start);
> @@ -316,6 +316,11 @@ void intel_vrr_set_transcoder_timings(const struct
> intel_crtc_state *crtc_state)
>  		       trans_vrr_ctl(crtc_state));
>  	intel_de_write(display, TRANS_VRR_FLIPLINE(display,
> cpu_transcoder),
>  		       crtc_state->vrr.flipline - 1);
> +	if (HAS_AS_SDP(display))
> +		intel_de_write(display,
> +			       TRANS_VRR_VSYNC(display, cpu_transcoder),
> +			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> +			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>  }
>=20
>  void intel_vrr_send_push(const struct intel_crtc_state *crtc_state) @@ -
> 352,12 +357,6 @@ void intel_vrr_enable(const struct intel_crtc_state
> *crtc_state)
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>  		       TRANS_PUSH_EN);
>=20
> -	if (HAS_AS_SDP(display))
> -		intel_de_write(display,
> -			       TRANS_VRR_VSYNC(display, cpu_transcoder),
> -			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> -			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
> -
>  	if (crtc_state->cmrr.enable) {
>  		intel_de_write(display, TRANS_VRR_CTL(display,
> cpu_transcoder),
>  			       VRR_CTL_VRR_ENABLE |
> VRR_CTL_CMRR_ENABLE | @@ -382,10 +381,6 @@ void
> intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  				TRANS_VRR_STATUS(display,
> cpu_transcoder),
>  				VRR_STATUS_VRR_EN_LIVE, 1000);
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> -
> -	if (HAS_AS_SDP(display))
> -		intel_de_write(display,
> -			       TRANS_VRR_VSYNC(display, cpu_transcoder), 0);
>  }
>=20
>  void intel_vrr_get_config(struct intel_crtc_state *crtc_state) @@ -425,1=
0
> +420,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>=20
> TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
>  		crtc_state->vrr.vmin =3D intel_de_read(display,
>=20
> TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> -	}
> -
> -	if (crtc_state->vrr.enable) {
> -		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
>=20
>  		if (HAS_AS_SDP(display)) {
>  			trans_vrr_vsync =3D
> @@ -440,4 +431,7 @@ void intel_vrr_get_config(struct intel_crtc_state
> *crtc_state)
>  				REG_FIELD_GET(VRR_VSYNC_END_MASK,
> trans_vrr_vsync);
>  		}
>  	}
> +
> +	if (crtc_state->vrr.enable)
> +		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
>  }
> --
> 2.46.0


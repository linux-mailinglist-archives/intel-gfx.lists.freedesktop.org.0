Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B51A5D56C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 06:17:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C3D10E6C1;
	Wed, 12 Mar 2025 05:17:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jis9yvp1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C0A10E6C6;
 Wed, 12 Mar 2025 05:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741756643; x=1773292643;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jl6nbIU+IqBi1NPO1VkIG0lgcFdCbuzE6YLqlBZolBg=;
 b=Jis9yvp1lSv6kMBLu2tbEBU7Fq01G1SRncb9igijr1pTY+MA43R8WhDL
 gMzdbLXbteCPszyEfTdh1671quUi8XP1i99xVvhETi9DqJrRSse2HkstT
 uHL0i/CZyXvdF3GCDiUb9hQoL5P4bpDs5ZFpRx0i3DJGsrPdZGwoCX2+4
 Xkz4GLqFqr5ZAdZVAG6xjR1suqgqB2ZYcE5ikzpTcjRwiD9aitNrJeEo8
 BodsMbjVQYS8VmHoJnXP5mK9LSohYbvBHH4wVQ3LwtgCVG2UINqcqH2vv
 ru6Qw48TxoXFi9O8BXd3gs+RfzUII/7ugUgzYRDHb+gUp7t90hk86l9z4 g==;
X-CSE-ConnectionGUID: 7t1EuOwVRryJGT22t7HFCw==
X-CSE-MsgGUID: 823ERtF2SD+lwZ6R9hc11A==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="30398236"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="30398236"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:17:22 -0700
X-CSE-ConnectionGUID: jvv3YSKjRbyiDV/tvCQ6YQ==
X-CSE-MsgGUID: DJvSiQKDTgqYJPp6KA1UCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120746768"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:17:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 22:17:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 22:17:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 22:17:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SBMe8riSOdSgdN0hcxgxbw9HYxazq8S3Vb1zVlPREUAVjCoegOnOVkLnnCshuwflsoSo2wEAOv87eRZxhVZN67rYC3rVsw4Ipfk97EGf8eNiJ0wL3Xhocgfo8sgVqedPqcLnGTY9VFso70EIeYhxIszrgFu6ZcpDK+kCB0EYKGVazX5jLyFPuVL3JSVRp9lBdV2V2TC7seDeHmyZywqd1Bd2M76WLkG0AsMnWGn90L/iaoOsx7TwEmr7bXWjuXOARJZF3zU42cWK0pvlnrIkm6059NskNrorNB8pc2VCEqPJg5D3FEOLlz6RAJAumkVQU6STsf/SFLiamUi9MCicVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kC1mKoPA8vAIK6nS6avJfqCL8S4DSy0ea4sm748kpiA=;
 b=YZpyxUG8BznxqY8Pr+FM1vZCBiy5O84sXKJ0ya3ORUk+VQRvKpzkcz2Gxe/udw+8oFv0TPCkWpe/WGr3Bql+WvUCM8SAy2lRAOVm1KJvl98JMDJcmbz39bZRXp2FvzPffcbRS/50hoOxJzKn8HgXO+FwuY+kOnOuDxEXKlRICkT2gUbV5m/BmQ0OmWZdmRmV1hz91RD+FD9/BMjRYUDNb3DjuqBnxrjSBhmqaHh1LByXsczDUxWIukCn3whLJbFP0E+uPeYwjirHDqPmIFvIgtJobOKNmjJzQNc8YDeIV7BMq/+jnAWR7S8LqFd1Zwwr3HaKgM8W6uM3hmiedX+BIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY5PR11MB6440.namprd11.prod.outlook.com (2603:10b6:930:33::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.27; Wed, 12 Mar 2025 05:17:14 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 05:17:14 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 4/9] drm/i915/hotplug: convert hotplug debugfs to struct
 intel_display
Thread-Topic: [PATCH 4/9] drm/i915/hotplug: convert hotplug debugfs to struct
 intel_display
Thread-Index: AQHbkq+srpV7gAK4B0y8xPn6VB0pO7Nu9l9A
Date: Wed, 12 Mar 2025 05:17:14 +0000
Message-ID: <DM4PR11MB636058038231CEB4494D0167F4D02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
 <ce4ca9d1c23557823179b844d4e7f1756185b8da.1741715981.git.jani.nikula@intel.com>
In-Reply-To: <ce4ca9d1c23557823179b844d4e7f1756185b8da.1741715981.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY5PR11MB6440:EE_
x-ms-office365-filtering-correlation-id: 16abda81-26bd-4082-95c9-08dd6125267e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?274ZDlntuPIRCtd329wpz6IeE0a/H1mt2URRz2avTlGrJiXRkqRTiELTA451?=
 =?us-ascii?Q?KWnEUDARMyYlQc3hlhUmMH5IOE7P+uoB09WVLRL8f/qN6CL6Hdjsj1iAU77/?=
 =?us-ascii?Q?KLAMQ0l1SaTB8NloFxK0Dxn1fwRlk2tVpxJYl6McfN5d2rpPRfbiEhX9iCvZ?=
 =?us-ascii?Q?KFjVNwoiMZtEasP1iKn5ueZKuQ2t93L6GFdveziF/Aeq9JHMAJdFXhhOTMLt?=
 =?us-ascii?Q?PUrl5oIbTUazJelmUA5vgm0N15dH5zPW0lEbbyK8cX7EE3h9QlXtC7DMNBU9?=
 =?us-ascii?Q?Hm4cNdEId0cwTDZ/wGmg4oW8BM5GRr2/r1Wn8Zny6EudvFfxXTUw45Oc3zZd?=
 =?us-ascii?Q?mKIKnWVSXsPVWd2Lg8zoRjTBcMltREffDiOEPBcN9DPPJl8oNdmHgYhY9SfP?=
 =?us-ascii?Q?4V3iE8cRmqETzR/dGszehJoxN1vWm0lTTs22NdpaKALq96Dwquvs0h4ximem?=
 =?us-ascii?Q?h47dBociXdjV4kBwbyAExSR+t4IDeVJR8XYS2RiYnr58XP2cHDaljbUhgUgo?=
 =?us-ascii?Q?YiK+NsCmlr07rIV3SSP8CV54lmpPDmYdddrdzx1Bu0zt2kJGZM1aHT8/PWOb?=
 =?us-ascii?Q?z5V6wbJsmIIBoNAzLPfyQae3Sf+RnPb3iw/tKGF+TN/1FqDmN4WzNvf9DitH?=
 =?us-ascii?Q?WXqhPqpLuInOVJX6QU9lBaiAdSqADn+dPfVG6l5dRfaugwhcEb92Ke9fUVve?=
 =?us-ascii?Q?WKOjgJPyf+r8ayAPE6JxrPReVHioj4eeA1KJ+6PqqmNwKSm6z6GYJjyqzeUy?=
 =?us-ascii?Q?WMxQKwNfJGXg8mT/y5Trfsf0lGXrtZlfjDWV9ZjP4dYpnYJ7eSgyxf6/KJE8?=
 =?us-ascii?Q?4CECBowOlv8uM3Rwswsz1SGOUnsuwFt+50yT4luPWS5mgZNvo99Cb7EcvslC?=
 =?us-ascii?Q?zeemsaHfX3jKawIiYHmokBCYA3lnrHoqqDADU79fSozWRnzm6YWP/oM845tu?=
 =?us-ascii?Q?bmK0xeg+/urLV9vNWB+HE43dY+txxF0QE9dAvYTxcF/76Fp8/KHkn7IdQNgl?=
 =?us-ascii?Q?yTrUYPq6qHmedDXr5EVb8BX7VqdbVQOpsepWN07HV7w2ltnYNwtIxU8NCW9V?=
 =?us-ascii?Q?zJxo+aA5hm+NPxyJZ6CnVfCUERg7GOfI9R1KRHoQJaSLC8ErlxnzaDd6o870?=
 =?us-ascii?Q?5+nnx/riYW00gbFHsYk0lieq6wLnbfZorFnVujkwySi2H1kQMQk7rER4Kvsq?=
 =?us-ascii?Q?WLMCSskkf7PUt3WCls6j4HKCdVPEpWCMJPp3kzjSD7QBmhMzaK7EQAGp4GwF?=
 =?us-ascii?Q?BfxpVkzCJA/LWhuwJEmkZd+q7nskbbDYdZh6KH06qg9ZruuF2w0vG7Zow6oF?=
 =?us-ascii?Q?MQt8lnFpjFDQtgcSW0iNRl/DrwhCCHkPaEn65XPxsdUAN6yajjvOKOryxcUb?=
 =?us-ascii?Q?2hPoj0jQxWyWauvYscewk9GHXN73dPCqXPYhEJZ4Jc5lme6wD5ka99uNPE5Y?=
 =?us-ascii?Q?wqqG7f2sxHIcgisCM4JWLGlENsnMmqbx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bh2rb8F35Yww22lHciHh6Lb1T1rNxXNUVyZZpAZezNItBB8NRnR4vf0ZYJpE?=
 =?us-ascii?Q?x7hjOMLh5BYsZmmCWhojhcdrZRpRnz9Fg0FQRZ1W4JBhU3fCPywtiP8Lb123?=
 =?us-ascii?Q?cuwkrO9lTiSVBAovTNP83uMdnt5pBDX1I2yDmmisV9ggBtJSCIdJ3GZcxryF?=
 =?us-ascii?Q?woeCPFvHcwQLjlwW7wdeBJoDIcWoglc88qkhHY2gIoV12mCBKO6LlPDwvUKy?=
 =?us-ascii?Q?KByLE6G9Cz19c2zFKcD4L08NIvwnDhIpnJBKGupMrTqbOX0FWKjvX4pZgASu?=
 =?us-ascii?Q?CxunFXEv7dhAa8gNc0W0s3AFKY8GPbuqBqwYV/fK9y48KOi0AKWzi1TLP2Jb?=
 =?us-ascii?Q?P7aoHoMEdWnPJHILdmeEHflTfUDRvRjSWuxxUtmabCbFUMfSPXo+HUO1DwgU?=
 =?us-ascii?Q?0WIdn6x5wdZp1mFG+gaUHQwV6Giq7voynAD/sBKBf1hLeV2Bc7PpjdwWg729?=
 =?us-ascii?Q?Moi3VdcYWI/7ySLXVLTLclUl0f9Sk6lKSZqCeQDU5t89LjiX1NRirD3ngbKo?=
 =?us-ascii?Q?kSpYBZBn2OAM4Aru7r+bqe+a65pkmmEQ885TGy349BHc1aI+25eRpwpkTyI2?=
 =?us-ascii?Q?WVYsIRulmJtuiY4W4F+nBRxLq5+eW5ypJBZ3g3q50nZV5uu9YEL4fnJcH9VT?=
 =?us-ascii?Q?qWGTy2dL7pIuG0jwfZ2lOfixMP2LFPxJdxYgAj0StFUNfDmKKl49/oiIceW1?=
 =?us-ascii?Q?/DQXgulKoXdjNX0riR/w6AeuUY5O5sRZ3HiIESpURWspnRu5dM/RFBEh53/c?=
 =?us-ascii?Q?X+sqva5itLZA/h672BqOkTh7s0cQAzLo59/E6cmCtHk/zKLqkvj1B9RLBa7C?=
 =?us-ascii?Q?eHiN9NT41O1jw//rok66TeyEX3A78JziMBl2RWh+/3QlWd3xk86sR4zWeAXm?=
 =?us-ascii?Q?Zn81t5CyC+Ykn5IzNKFBJgQQizy5NPLGve87Hu/cfYwS6IK4YRwUFkiG4kAF?=
 =?us-ascii?Q?y0Cvqex9+QiZuIIkAwh/s7mj8tEi71SZ8d/WY3xind6s+GwpxLrstMASvnor?=
 =?us-ascii?Q?ZrgWRvygnIzISZYJGgTPP9FRjpKRFKjK4OGWQ7s+8ccKMeVYhgkBP+JcJwAw?=
 =?us-ascii?Q?fDhvnLmLdJ+CBPEQJY9TiNzzQPg2GSfBdGsMAuQHfvcjHNcVa7eT/QVk7F7m?=
 =?us-ascii?Q?n7Wsh6IJelOrPl3OQkjKGZs3RjQnkiQEQSlsoWyngfEUL472RKJV0qa8ABkU?=
 =?us-ascii?Q?cet7yBlJIg0wJk7GaynwdPz1DNhsm8P2ObdFN9GHxl71yCmJ3mySsC4XqBua?=
 =?us-ascii?Q?ozVj3YTYmNZd/RZwpZVur8vzDmweY/d4Ism4uCVi81zSK5UEcBBzUHzRW8Dn?=
 =?us-ascii?Q?eQpx3m3jAq8Fw5AymddniON0wyH99lmhJ6iCC9Y4GkHdGSCOhXMYpPqUZRJO?=
 =?us-ascii?Q?a5pZTPgvzzfn6DOMylZqmArkk/HhlCNpS0k0A+tQyJR3UrbZLAbYO/ZRmLxv?=
 =?us-ascii?Q?+mBsunYeW/qA4vaYKVMXGHbtttj2qY7Mx97PQEEcJix4P+3zpQRRrTPvITM5?=
 =?us-ascii?Q?T80d/AxVuffrpQMvXa3YbjriB+y/+YBObw0QJQKAtVIj3+AMHVmOilSpau51?=
 =?us-ascii?Q?QjAuzG0dR1q1lfPD/gBxd5UhOgK9CUQF+iYksp2I?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16abda81-26bd-4082-95c9-08dd6125267e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 05:17:14.3578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7yr45ZwaK20M/q0Ut3hH8jmZXR7rOaLYGMMdoELHtHgVA7EF7xDkr8dPsA0ldcQQxNVQC40uKQEtL/oEq4I5MA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6440
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani=
 Nikula
> Sent: Tuesday, March 11, 2025 11:31 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 4/9] drm/i915/hotplug: convert hotplug debugfs to struct
> intel_display
>=20
> Pass struct intel_display as the cookie to debugfs functions.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c
> b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 9bde28ce1979..7683b3ce124d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -1202,8 +1202,8 @@ bool intel_hpd_schedule_detection(struct intel_disp=
lay
> *display)
>=20
>  static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)  {
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct intel_display *display =3D m->private;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_hotplug *hotplug =3D &display->hotplug;
>=20
>  	/* Synchronize with everything first in case there's been an HPD @@ -
> 1225,8 +1225,8 @@ static ssize_t i915_hpd_storm_ctl_write(struct file *fi=
le,
>  					loff_t *offp)
>  {
>  	struct seq_file *m =3D file->private_data;
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct intel_display *display =3D m->private;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_hotplug *hotplug =3D &display->hotplug;
>  	unsigned int new_threshold;
>  	int i;
> @@ -1287,8 +1287,7 @@ static const struct file_operations
> i915_hpd_storm_ctl_fops =3D {
>=20
>  static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)=
  {
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct intel_display *display =3D m->private;
>=20
>  	seq_printf(m, "Enabled: %s\n",
>  		   str_yes_no(display->hotplug.hpd_short_storm_enabled));
> @@ -1308,8 +1307,8 @@ static ssize_t i915_hpd_short_storm_ctl_write(struc=
t
> file *file,
>  					      size_t len, loff_t *offp)
>  {
>  	struct seq_file *m =3D file->private_data;
> -	struct drm_i915_private *dev_priv =3D m->private;
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct intel_display *display =3D m->private;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_hotplug *hotplug =3D &display->hotplug;
>  	char *newline;
>  	char tmp[16];
> @@ -1363,12 +1362,11 @@ static const struct file_operations
> i915_hpd_short_storm_ctl_fops =3D {  void intel_hpd_debugfs_register(stru=
ct
> intel_display *display)  {
>  	struct drm_minor *minor =3D display->drm->primary;
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>  	debugfs_create_file("i915_hpd_storm_ctl", 0644, minor->debugfs_root,
> -			    i915, &i915_hpd_storm_ctl_fops);
> +			    display, &i915_hpd_storm_ctl_fops);
>  	debugfs_create_file("i915_hpd_short_storm_ctl", 0644, minor-
> >debugfs_root,
> -			    i915, &i915_hpd_short_storm_ctl_fops);
> +			    display, &i915_hpd_short_storm_ctl_fops);
>  	debugfs_create_bool("i915_ignore_long_hpd", 0644, minor-
> >debugfs_root,
>  			    &display->hotplug.ignore_long_hpd);
>  }
> --
> 2.39.5


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3748B99ADDA
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 22:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 164BD10E2DC;
	Fri, 11 Oct 2024 20:57:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aLvq+Utg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD6F110E2DC;
 Fri, 11 Oct 2024 20:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728680270; x=1760216270;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hNyKKZKjU/V6aqUscc9ZJp14q81f6qzIhq7Jlrz/au8=;
 b=aLvq+UtgyGTDJBTK7tLEEb6rkQLc7d7hFLf2JrKOQYbmke9PsL4Rq7y5
 fP8tRNoPA06AUab7uG7LzV/+khXqaXT3z32vwHqqI7b3a+Ey7Ertk/ecB
 o43Xafv2iDROcSVVWU0dqSI2q2KhsaMaSuDnOIL3gneKHCLEN9FNgYyPS
 O1+oVSA+H8/q/ccdOGZMFNR0+S3THuUjElM2P5I9iOyyJfow2ljtLTXSu
 VbirV4UR8h8xqbfjxzE/CXg+yReCniXLvsHaqNqat3GsqBMzyOY8sJjt7
 sZES5e+1vgUaJtL+gdqt+a2GyMDlO4iwzCcyVXoB6Gnnb3P2lLfLsjNX5 Q==;
X-CSE-ConnectionGUID: 3awq921tTUS/D37XMrChCg==
X-CSE-MsgGUID: LlebjdS0S2KCVRmV42n/ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28219299"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="28219299"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 13:57:50 -0700
X-CSE-ConnectionGUID: 3v6Vb0d/S+mz4nFAIoRMfw==
X-CSE-MsgGUID: oSj8TYf+QzugG62z28SuYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77109832"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 13:57:48 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 13:57:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 13:57:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 13:57:48 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 13:57:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pn9G+07hyIfjWfM9D7pENBfL9t7exqGT62RfpUW9sOdD+P1GYPs+0RuHkmlakDWVQeRTYM/m19L2khfXnSKkOw5RofrrcyCTLumxbyIre/rUWS8OivbiV9J0NzlxUZFZQru75eA51W88C/mLv8gUW+x6jsiK2TJ2+DSRkdc/JtTFYDVX6jfAt/lR5Ek8RWbtNqA9s69kzPTuHAYzKb9adff6Fuo8jN03NCvomBd8nSnWSzKZEkxFzAz32l76mVhWV+mEOGlYjtvkIsgZpaIoQPoRLCoDj56eWUC38o3aSFXDC4IqF4wF+SonG64fMpBMkGILmAYifDNoDBIp33u2dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OAJyocBEhVQbDg5BDEnk/BQwDjyk+QWUBIhl6qTw03U=;
 b=CqsBQUN41ZqsEEi32n9RKdwOvTOnR6H0ewXYak7ZOI0g1c7wg2phFfJD2BDotf/RcSVfvSyciMUqT5f9geRQsTK0gJV5jHXptayXqXIEWrJRQ3JO7rS/bA7AZdHso4dfxThRf+q4/dD0vWPnqRDnGFj//TthWZSfTZEXvaT8osPrkmKNrEdg/acdzXMzVRFIuxO94KeB3Rdm4lvk+POprowPr+vDvtZQ0tGN8fligj4mpMUDDl6XXUnPc8cTFzg0L53FEWiM3orAsAl+RJ2wjtjuC8iXCAui8O01DVT1FP95nK3eYL+tDpEU++qSOgAujGO3xGMRjAsnyz/kerhrUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5456.namprd11.prod.outlook.com (2603:10b6:5:39c::14)
 by SN7PR11MB6701.namprd11.prod.outlook.com (2603:10b6:806:26b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Fri, 11 Oct
 2024 20:57:45 +0000
Received: from DM4PR11MB5456.namprd11.prod.outlook.com
 ([fe80::b23b:735f:b015:26ad]) by DM4PR11MB5456.namprd11.prod.outlook.com
 ([fe80::b23b:735f:b015:26ad%5]) with mapi id 15.20.8048.017; Fri, 11 Oct 2024
 20:57:45 +0000
From: "Lin, Shuicheng" <shuicheng.lin@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp: Fix memory leak in parse_lfp_panel_dtd()
Thread-Topic: [PATCH] drm/i915/dp: Fix memory leak in parse_lfp_panel_dtd()
Thread-Index: AQHbGzHPv23+qMu9vEarobPFZQjnE7KBOIQAgADQfVA=
Date: Fri, 11 Oct 2024 20:57:45 +0000
Message-ID: <DM4PR11MB545670BF1099467FB0FA0EFFEA792@DM4PR11MB5456.namprd11.prod.outlook.com>
References: <20241010155552.994880-1-shuicheng.lin@intel.com>
 <877caf6o3f.fsf@intel.com>
In-Reply-To: <877caf6o3f.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5456:EE_|SN7PR11MB6701:EE_
x-ms-office365-filtering-correlation-id: e108f52f-ac81-4584-fa60-08dcea375b0f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?JrnmN3X1OT6APWk/umd/cGhslbxNpbwxolV/Y967HQ5GXdYfVQtBq+jB6A+K?=
 =?us-ascii?Q?/r0bFb/nZNoMRolAUapGpnxUpz5pjuYQi5tYkSa69UH11cUZfRsfIT0jmBqI?=
 =?us-ascii?Q?aCZ6UtZ4XbOn3f92SXZ1KjPTkjrwUozpYtO0vu+XYXnQK+HleWrfLo3BSKKf?=
 =?us-ascii?Q?xqwebZQ1En4EI/g/Z8itCoLY8CPphO9xZbYV9wDnKmYr/BDctSm3cCnij/DH?=
 =?us-ascii?Q?xqbo1m+Q3sSug/2Sbs6fpyWf27ZbIr842CnMFXbhrCt3I38JGbnQWeJlGzsn?=
 =?us-ascii?Q?9l3P5LKlLuYAJeAtrCo1ALlaXYSE1EqBoeKasj9Yxq4QZFvKAl6fdSz/5xJ7?=
 =?us-ascii?Q?qRd1q0UEbM1L1+4KImhWanEyS0kWKes7lEdQL9zMJ8M8xIpij951NqZujQOl?=
 =?us-ascii?Q?yLxQhOovFc3R1i9biwQcoRjB1fVFUaywXXqfOJGZdBVVLuIjI6nWVQBMBDln?=
 =?us-ascii?Q?n/YcuSosT4bgyI8kBFZ5CJAVqytnGSrDs6KhCXfVf/wM9X9bpEBB2TzUj2Fr?=
 =?us-ascii?Q?m3t4TDsCeZWYfNXFHnOuMIjz1/s8LO7b626Ux60Q4eJ9PwVBhM8eEyjRlsdu?=
 =?us-ascii?Q?9RXqYSTd1rU6UuHoD+tA9IlJh9qphltR1HX2je571EbAgEz3WHHfDOhq9WrC?=
 =?us-ascii?Q?atqUGwvgh2xTNoBnZ8w4glj8LzQ5zjjZ/PonknGFJpJ0uQje4KOESEtdDomJ?=
 =?us-ascii?Q?6ZgbJpoyjBwJNNlrUG0ahcTBG4AZLTsRr3QSF76LbY3Z1lZIbdkMWI2hmBs5?=
 =?us-ascii?Q?fRAi2HVCZpFt6RHr7uYPFLXbyHE2oZv60LN5Pr5zDn2e9GO1cTPI6odDDX9j?=
 =?us-ascii?Q?NNgKUr4+jRHRUNRh6N0hjv94SWlHfXCjtZPb3E7cVF3eCtfsdH2MjCp9bW8h?=
 =?us-ascii?Q?0lXi7lCHL1HDEpFZBNkGm1P9wbA9j14Uf5CaNXCahAT7BAZ/bAdVV9/EMS0F?=
 =?us-ascii?Q?8T21H3m4/mzrPxS9U7MmXj5dY3lrPhJrWiV7QTy+aHGKfaaG1fC1en6Qps3W?=
 =?us-ascii?Q?uCaoK7Vrj9wJ+uY+mGwweQxje2Oci34DSryNsjoudqn1DpRdogQjC9fd844Q?=
 =?us-ascii?Q?CDlyINKozhxk1HLhioKaoVwYGDZ6N5HhrW3B6hmoZ+kj1Riz3vs34XgB0Tm6?=
 =?us-ascii?Q?N7dB6EbLcKgqZahF0bO5bZK6nfVPHLfIWQNsTxTMdGkdyhlZFGAM9UILaqP4?=
 =?us-ascii?Q?CmjdpS4J/prv6ngrJ/Hhu4giKzflGvLpDpDz+UelRVeqEjz4UW8TiaU0vp63?=
 =?us-ascii?Q?zi2oGpdYij47HNscZWdIjrVyjFw6m7EP/dz9SROPDwFH7ccA8mqDnWA7pa0d?=
 =?us-ascii?Q?hHI2ySfRph0wHAMWpdF19/R8Dn7Ieb1ejpmVz59auntdBg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5456.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IinXZO1BIlX0/LMGtXL1d0SGD0PGC7ZtCNikFeLwn/EJCKpy4UYb/TVy1/sS?=
 =?us-ascii?Q?MCEmGDSLkEX0fqvbZoc/FyxrDtvr7EHuA9QJAn8RsXQdfJidXN6A6/r9pxbv?=
 =?us-ascii?Q?bp3o70u4OCg0kavpoUamBNBwBZdM0MES5f11Nxww+f+qm0U0yCsr6rqPulq4?=
 =?us-ascii?Q?6J8XL6wpKXIUxwIciC5HgtO99ncVgutOp+GCXEbszXtDkXljNkuz6OlYbjcN?=
 =?us-ascii?Q?qkXhimusFgT1/N3xY+lBFdB0ylLv3XWevcrAzokZx51IrUzcBNinMwtoBwdz?=
 =?us-ascii?Q?zcq60R5UdOPPHAOXSleVyO7Ida8OiehfwG7Ul6oitZpbZy3tFyIWmMG2twf/?=
 =?us-ascii?Q?EVTSXytT5r4OO545TYzeFXmvahny0cjxcX515p6SdGtin58bqnaYBV7I6QAS?=
 =?us-ascii?Q?db7UEK48Lcd8ODSZ5fRNdRmJQi7TRGImeREG8rIoPIpnD7nrgbZHA6yZdqe6?=
 =?us-ascii?Q?34waNfxSvI0Br3ooOWT/FmcInsjJMJbBDcZcw5KWi/Vx0e7MEjI+hn2hTjds?=
 =?us-ascii?Q?TA4kouI50lX6Jnlmn+LPfmYmfF8tryMVU4e3HtYVhJd7a4gEd5rB2UJc2la5?=
 =?us-ascii?Q?h0esxeeQNY9ZtQM4KWfJ9i7+NLmGFyIibyhIkIfhTQ/OIcYMqYesPIsa2oXX?=
 =?us-ascii?Q?EO09HEGNl4TyjJgnIH83Y8ai1lBh8Cdvq6T1AgwXrysQAn1hX+0kGY1GfkcP?=
 =?us-ascii?Q?1M71bxoDypLaeabpZd2KzyKHU3lsTAEpnRJLS8tW1wM72ZrxoM4G4NmoZqo2?=
 =?us-ascii?Q?yXORWCkCzVVThoE/fMp64RWElUSFKoQtR1FSIrF2wjeNqBkeQL8Gr+uD7KdM?=
 =?us-ascii?Q?H80CHT09jyeI0a9dMRxqIDVe5yKixAAVtki6WJi3Zkc+2FAnGNsDXlOnBXDm?=
 =?us-ascii?Q?xFP6MDCf3ayP4zBKSs8B4zf6XLcT3+H2bElKIC6/W5JDitL5FNpu2E73H4+W?=
 =?us-ascii?Q?pcS5WRtgln7MI6J1k7Nno4zGESL1zuG5uDkkARZjSNkUw6AuW+VyecUBuFI8?=
 =?us-ascii?Q?RRVIGdPsZ+HzC96J3YWvEZNwQFpCfsr4yEzwtjtf7zPEQLsoekyNCTcCNxII?=
 =?us-ascii?Q?GmxktssHmVDq/UmBMlT/LFxEppQGIfWW02gKeSM4zvdhzzUL86kJmDvEP0zg?=
 =?us-ascii?Q?DTAzjGfYYt1m32kRsTIY/HZbPRiGIx9b65HkO1aJ2SFEOPOAbgVHNr7Y+rvk?=
 =?us-ascii?Q?yahMyA+gKAeXztC7WcP3WvF54+o9yrEvxv+5ZyT8HwB+B+nZbFDGwZ0vlDl9?=
 =?us-ascii?Q?h02U8fqUlvouBZ7BXETi8F82RizpMxIpsjq5ydsf2+6gHWDAPJzq5coVje0f?=
 =?us-ascii?Q?REOFqyz/3r+ga9pIvQ5QQYYCXCE7E1wT6ehrsQ4BtjYD+hGK+5nxXwMlFVft?=
 =?us-ascii?Q?GXy8fTsESohTSa1tl9N5uZogpeqzYEo50AJ+589aR4IGrFx2MC3m1UKmuMoQ?=
 =?us-ascii?Q?F88hePHd+F2SaLmj0nnWiBX+/rrVTnDdQcA0w2oGZLqhvigJw95fdwadmOu4?=
 =?us-ascii?Q?REIy9270G+cZBrrZrC9TU4nzSYB9gTIIKTioEwphbI9UaqyafVe9O5p1JgvJ?=
 =?us-ascii?Q?V3D+CEUt5lxMx8+brlL765Vwx7tcFehZlXyGYnpSFUfBx5Jp5TT/VGg/PQws?=
 =?us-ascii?Q?dkwhpsFXr3A1eweC3f18lMhqZ+u2amZGUiD+9GkOVLsr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5456.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e108f52f-ac81-4584-fa60-08dcea375b0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2024 20:57:45.1571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qrKWUij+kgyeIPPDCHkQZ0/a8oeHqKvFG/2cOr6OgCO18YfR4CQfqPQvKotvrEsWpf/otjT4jv/FWWOa/TQzoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6701
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, October 11, 2024 1:28 AM
> To: Lin, Shuicheng <shuicheng.lin@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Lin, Shuicheng <shuicheng.lin@intel.com>
> Subject: Re: [PATCH] drm/i915/dp: Fix memory leak in parse_lfp_panel_dtd(=
)
>=20
> On Thu, 10 Oct 2024, Shuicheng Lin <shuicheng.lin@intel.com> wrote:
> > The function parse_lfp_panel_dtd() is called when the driver attempts
> > to initialize the eDP connector, and it allocates memory, which is
> > recorded in panel->vbt.lfp_vbt_mode. However, since no eDP panel is
> > connected, the driver fails at intel_edp_init_dpcd() and follows the
> > failure path. Unfortunately, the allocated memory is not freed in this
> > case.
> >
> > To fix this issue, free the memory in the failure path.
> >
> > leak info from kmemleak:
> > "
> > unreferenced object 0xffff8881252f8800 (size 128):
> >   comm "systemd-udevd", pid 192, jiffies 4294896880
> >   hex dump (first 32 bytes):
> >     e8 fd 00 00 00 04 18 04 a0 04 40 05 00 00 00 03  ..........@.....
> >     03 03 09 03 26 03 00 00 0a 00 00 00 00 00 00 00  ....&...........
> >   backtrace (crc 7448f6b4):
> >     [<ffffffff82475c9b>] kmemleak_alloc+0x4b/0x80
> >     [<ffffffff814bb50e>] __kmalloc_cache_noprof+0x2be/0x390
> >     [<ffffffffa069862c>] intel_bios_init_panel+0x1c4c/0x2720 [xe]
> >     [<ffffffffa0699123>] intel_bios_init_panel_early+0x13/0x20 [xe]
> >     [<ffffffffa06fceb9>] intel_dp_init_connector+0x2f9/0x1080 [xe]
> >     [<ffffffffa06c370a>] intel_ddi_init+0xbba/0xf50 [xe]
> >     [<ffffffffa069b906>] intel_bios_for_each_encoder+0x36/0x60 [xe]
> >     [<ffffffffa06d7bd6>] intel_setup_outputs+0x206/0x450 [xe]
> >     [<ffffffffa06dad33>] intel_display_driver_probe_nogem+0x163/0x1f0 [=
xe]
> >     [<ffffffffa0680fc7>] xe_display_init_noaccel+0x27/0x70 [xe]
> >     [<ffffffffa05b30d6>] xe_device_probe+0x806/0x9a0 [xe]
> >     [<ffffffffa0612f0f>] xe_pci_probe+0x31f/0x590 [xe]
> >     [<ffffffff81b41718>] local_pci_probe+0x48/0xb0
> >     [<ffffffff81b432c8>] pci_device_probe+0xc8/0x280
> >     [<ffffffff81d5dde8>] really_probe+0xf8/0x390
> >     [<ffffffff81d5e11a>] __driver_probe_device+0x8a/0x170 "
> >
> > Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
>=20
> For future reference, the commit message and subject should indicate this=
 is v2,
> and what the changes were. See submitting-patches.rst.
>=20
> No need to resend for this.

Thanks Jani for your guidance. I will follow the rules for my new patches.

>=20
> BR,
> Jani.
>=20
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 90fa73575feb..7141e3ca0d83 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -6801,6 +6801,7 @@ static bool intel_edp_init_connector(struct
> > intel_dp *intel_dp,
> >
> >  out_vdd_off:
> >  	intel_pps_vdd_off_sync(intel_dp);
> > +	intel_bios_fini_panel(&intel_connector->panel);
> >
> >  	return false;
> >  }
>=20
> --
> Jani Nikula, Intel

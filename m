Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 080A89F38C8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 19:21:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FEA610E3E6;
	Mon, 16 Dec 2024 18:21:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hFbE9cro";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0CD10E3E6;
 Mon, 16 Dec 2024 18:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734373284; x=1765909284;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GUxJab5RpMwmov81X0fHGiCjmN/aBMnyLVjkOsNQzes=;
 b=hFbE9crov1cLlaZJ28ad/N3MN0EzXVE7AklGIjzZOu6llA5Ul456/lJf
 ZQaic9QV0WVnORfzYWT6G47v4l5UyFIDv9pkJHLzK5XiSH03hYtvZYD5r
 WZawK5tfu2xRdFh+RrvN4CnTtpZ2gdD0T8O6WER4m3lOLHIpkksf9vbiH
 mNQ2NVUzCTQd9LuEiAkp53tzH5sU1NdxcabVYlLadt6P19MkReN09WmI6
 aNov0icrunrONPzvN9HkZyLwZc1cWRnviCF1uHHXHZxVMSHpLeutnXemS
 50zpPYvT/Yvt4rAjqdEidJ6rBhkzrDOoO3V+FqzeRqXfLYjIOSUztB+Qc g==;
X-CSE-ConnectionGUID: qlJ7zbW1T6S1h8dRZHAanQ==
X-CSE-MsgGUID: uUM18UFCT8eraBAcshWYBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34907767"
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="34907767"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 10:21:23 -0800
X-CSE-ConnectionGUID: 13lH+YsrQ3iIgJiux/mgSg==
X-CSE-MsgGUID: YhYCgHTgQKqD2zp3/wjGvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="97847020"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 10:21:23 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 10:21:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 10:21:22 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 10:21:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yD950tKfIdOiozfwtCmImBsmd/IMIuHErAzgFnNhg9woplOD6IGz6dSB2l2Czh9+aUlplYA0qdoqLmZqu2FZTVjXhZuN1z0gFZeSBbXrbq1+kTOFtNd/o7pyZWBOTBMNbTeKAFuofuQV5LXRGC60kcDVDGWLkcXbDA14ZD1pTgphWlNInlm+RMBEdaZ6XZBvbF0UYhQWIekJ/WOnZ3Y39WWRuzKNcfWQCVW82laPV9oztI6maF9c4aMTInvf2AvnvfNoaokvc/nf3BTOVewHh4O3GQFx+UOqUXEUTYwhD2gROTrbPEXCIuimv87/fFNwSaO1qTKLOa648cOe5fX8gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g1XoZ4arTNG04aa+sVlobINafXFeyqQAlKRQh/m6psU=;
 b=L0ZDJ3Rn5JF53t/LydqtJcn8gYtSRYcQViSrwuREckVY7dWIgjymHfmGFEYPKvNGaN3BB0avZtJZ2r9y/EmxONzgwna7uPT1U6Y2j3uawL55Tad2Fp0vkAQxGjmPlY4ablXuc+AjZGUFiSJN9oERFbV5iJdX+51+UYID8w8rEAv0vu/IEhwCj3YGLJAOoA9dATe2C12eQPF1AdRQOu0B9KdsQdHxmQ4zQlG0baCFw07P2RPC4zXW6/g7ROy8Lmel7kknk8Q8ecQTbZSLd9M3m/5T/5Kj9kMS9dsgnz0NibZlgAngbxPhFKUuRpDzt6za/+W3P5u8U3nbMVJiU7Fp9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW5PR11MB5786.namprd11.prod.outlook.com (2603:10b6:303:191::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.22; Mon, 16 Dec
 2024 18:20:52 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 18:20:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Sergey Senozhatsky <senozhatsky@chromium.org>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 4/6] drm/i915/ddi: gracefully handle errors from
 intel_ddi_init_hdmi_connector()
Thread-Topic: [PATCH v3 4/6] drm/i915/ddi: gracefully handle errors from
 intel_ddi_init_hdmi_connector()
Thread-Index: AQHbTWmgRPKV6SQcV0CnFHS++ia3q7LpM4AQ
Date: Mon, 16 Dec 2024 18:20:52 +0000
Message-ID: <SN7PR11MB67507D34F9DDAC898BC06F60E33B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1734099220.git.jani.nikula@intel.com>
 <e6f582986722bf3187ddceb8e31dfd9fa5fd1d66.1734099220.git.jani.nikula@intel.com>
In-Reply-To: <e6f582986722bf3187ddceb8e31dfd9fa5fd1d66.1734099220.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW5PR11MB5786:EE_
x-ms-office365-filtering-correlation-id: f0e976c6-de0c-4668-3373-08dd1dfe6007
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0EwKGiPTtVAWlJJM09PhcttZszCIzE6STtO8bZjPFNDsIVVjh9xfGOy/t6YJ?=
 =?us-ascii?Q?wo4AT/g+jLJNii7Sng/4v5TQGwPOPvjSMOLRvwAPalP3u8v2VfUFNsxTL5r1?=
 =?us-ascii?Q?ppZJWXCdlgIJ5N7qddLWxJtO2w5LAaqKa8tYVfOAbnd2g4HaJptjQobOJkqF?=
 =?us-ascii?Q?wQ5rmraJ3lLtU8t1XGKLURe1q0qHn+mkO9F/eTBsDaJKGmjba6REqqevkAba?=
 =?us-ascii?Q?sOCROaB9f/3eXwize5jHDOJ8DYPskm4hIenGGGB5TIhogbHkSZNQoNNTjvv/?=
 =?us-ascii?Q?Rp4xMV93ozFHTa44kq8R4I3BxPcSkBMKhjA0GQuIOivGHwkkvkeioDSlmu+n?=
 =?us-ascii?Q?jUAUlax/cY4HjuulkVaCZMKA9676B6yaXPHNXa1imUVUvvGwiyH0W3msEqRM?=
 =?us-ascii?Q?nlP5H9NuaDbr3xbGt7zIH7MT0/0sSsVVW9iuCQghE4dnScCKZ8C/I8aRIG4E?=
 =?us-ascii?Q?etCb+2u55/udsNtb8wn3qZKyObzKEYj886iSZyfeTEiMAD2LVAfJL7xIt2I0?=
 =?us-ascii?Q?gViQjjqAypHYyb+ThneShggQKYNh+nQcD1/Br2liPiZak7+Ze+gR5ttHS3TK?=
 =?us-ascii?Q?gW0TBTOoIY8BbDK8QX5h2QhwCQZC5z4xDKeN5vNNUZ9OH8PjUdTiphsmMj1V?=
 =?us-ascii?Q?JwVJGwalfj0VjNrLzkjDMXDQlXUj5qlhdllETyvkBxgZIEBve+xqvVjs9fh8?=
 =?us-ascii?Q?NSLd0It2DZdNCPnmLLgaEj3wSZ+lCqYma7EoPPOK8xUVTVgTOleKN6gGlx3w?=
 =?us-ascii?Q?wrLSppuBJWy0xau7ETtqDpUrZ5tj7CtZ1sDbrfjZC6/+r0A++7RWPnJ7Dr8b?=
 =?us-ascii?Q?8gyVdo1FHWMsa1S1yOT4nGlWjaSZJBQmZPhLW9ukWHjH0X/uJhaI35lzhHaG?=
 =?us-ascii?Q?+durJ+D9r8wdnrgxxSXPajvPyV7YoioK4Kfifypj+uz8ftLAXgwwKlGTNcfZ?=
 =?us-ascii?Q?prnO1O/gfHRR7wCGN1z7XlwGNFSsZ0Zid1GAIoNOr3uRMaZl0g1UjkGbXQEF?=
 =?us-ascii?Q?BGSQ2z9VDcnTXzXqHpk16TE9YxLkUW4DdV1xSZQs92nmvovDhM8gKhjJPV7r?=
 =?us-ascii?Q?zMSFgwdWcTa00/nbGFF3+oA2kSbUouFN9/9g0HUX7iVkNQRWdtjKc6tWReR7?=
 =?us-ascii?Q?eXb0hod8Jaqd7/MVcU+fUFUwtIr+hhNYmI0OL5oML7THiiZGHLlmDN7uLZc/?=
 =?us-ascii?Q?qWeTRyr/EgvVTW9LETTeLB+00RrkpqRV5Ey2pbAYuwtlRY/+DdGZu+ahFqq6?=
 =?us-ascii?Q?xnfVKPWHRFv/Ht+NO7wGcXE/CmOMOvtRNwB7PYKlp8MC1DTmT4Q/dVFC9vHJ?=
 =?us-ascii?Q?XNZSeL5ZXXfmbWdM2LcQDyILJdZ80ILzJkZD3M5hYXX6q1oV86r8uaEfUWQl?=
 =?us-ascii?Q?KNmry1i4Z0qlxB+lLtoveec03FWryKrZTeDFyjc3fUuGO9RWMCHHZTxcb+yI?=
 =?us-ascii?Q?+H9U3uNeBSmdN/ItZ71dvRxR2fOpil5t?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aB/I6wM6U9h9D+6ZBvZVx1/CtZOJB3KOmDy/B4FTsANWf548Ysz9hgj2ghFm?=
 =?us-ascii?Q?zJGwbPRfEZ8QbOg6GQ7CPxsrnqB0BD8j2oj4B/TvpvO10/pvIbuSM/ForVL2?=
 =?us-ascii?Q?6bPxrs7t5HrGRNB8rcFQ5iMor8gz2HHiQ9TzVLygjq3eZBgxx1nZviBsiV1y?=
 =?us-ascii?Q?sa/78UP+pgQMVFI2ui/nv0VI8YUk3eZT5l5G4OzuxmHML1IAGkhiRxrZPOJ4?=
 =?us-ascii?Q?ixYxRizXFTN1OOV/REXi3Ij478Zp9P03s4gvw12UCsxzWB/x0KgzO8PfRP1V?=
 =?us-ascii?Q?uGOZuTjrcZ0z33ABv9Y/HAEX0tN3sFb8Lqf/MFmXPAq7srfsZuh3IggeU0Vz?=
 =?us-ascii?Q?hQ/hg99SNq4n4Jk8oS2DJYO24MIzqe9x7edMSVQ9xgzKFAXvpLfGb8+O23RP?=
 =?us-ascii?Q?sDGks8VEWZODIjUxtB749x/iSOWZSTRvLtqf9t85s8nF0QMcoELiX7GR/19Y?=
 =?us-ascii?Q?X3b70EvmmOYS309V/JfddjXkOVSs/prT30Xl+PBoUXI5Qi2HYMkGvQwFg3uA?=
 =?us-ascii?Q?2SCQ1AWdsITiC99u1SwOm9VluIq0rtrFaujr8prBBxBePLUKB/YPJroLUCeV?=
 =?us-ascii?Q?Am5XFvcnuOsv8rWglYIffSGAXZF0+JVItcuThBIXG7Ev7A0cExQ2MfqxvaH3?=
 =?us-ascii?Q?aKJcgoOMVDIRjsw1vzjzFKKZ6RuWoTXMwpqhHMoLbXec5RLN/Bpij0cxF9Ah?=
 =?us-ascii?Q?9MwYr/r+jW03jeaJiSB4ZrykGmasB9vZcBi7Y0tYABZB7md+8C+QV4Epqqxs?=
 =?us-ascii?Q?SZzjts90KNVixtw7Xjk0xhoMixPoIaiFLu+45UOn+K65aYYZ2nK6aSmQKGEG?=
 =?us-ascii?Q?vCFuhRMID0pXojbEjBOPBzjiDgMhKvqQEH0EJh+31qQCASuHpZhU/ugqKPxF?=
 =?us-ascii?Q?UU3wtR0UEuMbvDEiizBx6ptfVi5TLQeESg2V03jmSWHOf/is3cOBwuxWSHp9?=
 =?us-ascii?Q?ALuvB32UlTM69aGxg6o6CAFs3J+SCUxRzUUJ4t8TXKsuNnSMRaPgyh6jtynR?=
 =?us-ascii?Q?rYHIfdH0tUu2knFN3bxGrq3M4E/iscXUzJw/8HS96PGQnk+Y438Br/kIj3Fg?=
 =?us-ascii?Q?KJJrSenF2wVDhpS1yzbZH7rlBiDbIu3Ny9gf9UjjXejKd8RrpIDAOM5HZoMe?=
 =?us-ascii?Q?iuet1lP55rzt2DVWP0m2AjPuKWIgbP+fOM5JHFbmM6dPMBS+O5HAI4KuasuK?=
 =?us-ascii?Q?lI5yzQLYUgncLHYCMlI/2RhQJEXWUKsuXGbCdEhCH3xZn2a2NYJI+G3uMaTI?=
 =?us-ascii?Q?lsejid6g5QVP2cIlFzWpAhhBYI4NE9c+nPUyH3rT+RjemW5GEcMsMr3EBAIe?=
 =?us-ascii?Q?pXE42wmQH6mkfMgpnidmBYVc3eHSb8tOONe3PcAYPRczLmpCGi/u2klctOX/?=
 =?us-ascii?Q?LPTW/3mbc7JQg3YsBWNR1E2FHte4NhpbtVa9hIUdHWUSeztLOOjwpKu5pwo3?=
 =?us-ascii?Q?Ll09Bw6rpK+9jkTL86gHLaJOly6QxiFiMvF2ssY91IyrNQEO7DKmG9cBdl2f?=
 =?us-ascii?Q?C6v6YQBR+nT5pvVjPxt/XptI+mau2YKDVBK1nt1o508qOrUaH5HrOfdasiCh?=
 =?us-ascii?Q?pNFUbSXBTXdPJIP+uQ8jteWdORl0vh7LCbc3cSUc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0e976c6-de0c-4668-3373-08dd1dfe6007
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2024 18:20:52.6421 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EWd6Z7EXvgD2/+5/ZJkbaWhcufg+UNMkRnF8dGNekq1m0d/k2QXjGDMOPd59xXdbvGq7SnVvDMN+fQiRHc+TkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5786
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
> Sent: Friday, December 13, 2024 7:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Sergey Senozhatsky
> <senozhatsky@chromium.org>; Ville Syrjala <ville.syrjala@linux.intel.com>=
;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH v3 4/6] drm/i915/ddi: gracefully handle errors from
> intel_ddi_init_hdmi_connector()
>=20
> Errors from intel_ddi_init_hdmi_connector() can just mean "there's no HDM=
I"
> while we'll still want to continue with DP only. Handle the errors gracef=
ully,
> but don't propagate. Clear the hdmi_reg which is used as a proxy to indic=
ate
> the HDMI is initialized.
>=20
> v2: Gracefully handle but do not propagate
>=20
> Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
> Closes: https://lore.kernel.org/r/20241031105145.2140590-1-
> senozhatsky@chromium.org
> Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org> # v1
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 21277cf8afef..2c4308506435 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4757,7 +4757,16 @@ static int intel_ddi_init_hdmi_connector(struct
> intel_digital_port *dig_port)
>  		return -ENOMEM;
>=20
>  	dig_port->hdmi.hdmi_reg =3D DDI_BUF_CTL(port);
> -	intel_hdmi_init_connector(dig_port, connector);
> +
> +	if (!intel_hdmi_init_connector(dig_port, connector)) {
> +		/*
> +		 * HDMI connector init failures may just mean conflicting DDC
> +		 * pins or not having enough lanes. Handle them gracefully,
> but
> +		 * don't fail the entire DDI init.
> +		 */
> +		dig_port->hdmi.hdmi_reg =3D INVALID_MMIO_REG;
> +		kfree(connector);
> +	}
>=20
>  	return 0;
>  }
> --
> 2.39.5


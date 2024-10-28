Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E0F9B23FC
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 06:00:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A6D110E16E;
	Mon, 28 Oct 2024 05:00:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QFDMJluh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0A5110E16E;
 Mon, 28 Oct 2024 05:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730091646; x=1761627646;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aCumCUowU0LVJVPMkyfT6BYFjggUBba3bB3/LgE+AQ0=;
 b=QFDMJluhIkhKKYShdwbQFaKjTxuBT/YStGI8rVFuRd5bWMGasgmuMtUy
 O1pjey1jzkoKMaXBLs7bRbR2esvoAOGgfhSly2yIvxOgAuHuqlKgKyzUV
 OpBYwO4PEEsG6/mIQSEd+CvZvCLNyOzw9hQmM71NgSTcGU8IYTEtHuK+Z
 nfMbmbYpo+QjLB9hDTpo28QD5hU4cofASwNY4R4XosCSgBPe71nR7giqr
 p2KVesJ3bIecQgXM3jr/YwvTLgbukDcHQN1TU2JBWU77f3W0WRyXmbMJx
 7Xu8z+TByVD+66lyI+BPE+VyC4uReuNQwbAf9gJs2GEGv7c0QqG4SBAc2 Q==;
X-CSE-ConnectionGUID: 08iM8mOYRL2NpOBJcJMCAQ==
X-CSE-MsgGUID: NQRFFYgyRSC+I+1Iuop8wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29788575"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="29788575"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 22:00:46 -0700
X-CSE-ConnectionGUID: jKzf7lAyQ9mwZhaPumRtoQ==
X-CSE-MsgGUID: t9SpFvUmQ1G+gkYKqoVL9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81612375"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2024 22:00:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 27 Oct 2024 22:00:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 27 Oct 2024 22:00:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 27 Oct 2024 22:00:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vvRBjuKPQ6Cp3ZHhQUI3YY6kAYQWhyHpjNzC6Q8+ezZEJk+J/lHz7DzavjGs/xpreMJTq6YK45r7jEGLfPHX4iKBxDVXKSfeGI8DZrphrIWrDcL5e9ge9His2D1anpRIyZzGGxmoYzbpLz/e5v4pE8/7VqovTcRPUOFEqFXNj4Qz3TCuhstvH0UM5rpYKXHTAbHTztxJ5M97TzuwtIu0u4loBuZwcYGWB5MCOiYQvJ2CwTVCwYU6AeGHW4SiRwQYGZWCfdRseh9XlXWtoXPtDQ5PqwU3yiEBmC2Z2HPK1OLVWl7O7ZyVt5j8/sinltvsN6glLRfMeByGn4A2yEsB1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bhTaUkiAGjiU/lXek8XuB4bNvC2v5MknNmC1RME7hdk=;
 b=Q9gJ8dtYWLlBUSZZMdE+c1DNqP5O521xB6TJzwoEdjz7+M7VK3wZ2vbnWcqZRXvrkOo6wdmSVbOnF4i7nUT2s7LEe5X2DJmJ5tizDa8s6lOBc1GOXjyf7yKFSvYM8mKPWJ0hkVWilgLfAzt66v0jsdftNPn24ZTlSt+yE9g38vYkWVtbcnP+hM7sgf0S20LcMfvk1iYbwVzOP6awxh/q0ulN2IVXRIAD9pEKCIuuAbaEmhb1++vAJ3RjL9FWAoltjzVkRxplP1m4J0jNLexFSMV2FDBFhiKyYEwEIIjmzE1NBvYpgSVoA/58UeURpvtk8ZFhngqHkEA71Ssyqv93oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY5PR11MB6116.namprd11.prod.outlook.com (2603:10b6:930:2b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Mon, 28 Oct
 2024 05:00:42 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.014; Mon, 28 Oct 2024
 05:00:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 3/5] drm/i915/psr: Increase psr size limits for Xe2
Thread-Topic: [PATCH 3/5] drm/i915/psr: Increase psr size limits for Xe2
Thread-Index: AQHbJqNpPfmY220ckEewB8URHGiWxLKYBZWAgAOZIvA=
Date: Mon, 28 Oct 2024 05:00:42 +0000
Message-ID: <SN7PR11MB6750094081D40CBA2F84B0BAE34A2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
 <20241025060136.9884-4-suraj.kandpal@intel.com>
 <20241025220123.GU5725@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241025220123.GU5725@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY5PR11MB6116:EE_
x-ms-office365-filtering-correlation-id: a3a8c97a-df2b-4f44-d4ab-08dcf70d796a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?eAUGnvE9BnyA8JVUtOAg3JvfgokUqIrV3BoeMZw/KEbofIsT8HrIzgKxLUU3?=
 =?us-ascii?Q?0zbYK8hkD9ZO3IkQqt4/slgddsMfgcq9S1fFOeGJZEhHUN8vvwaLLF5DNbvv?=
 =?us-ascii?Q?3FPr8yTvrOm3JBTWbEspvaPUBv3/d4ADA0M6nZ/yDAa524RPyaX7M7+CNOLd?=
 =?us-ascii?Q?qCC5Gwsg4yehrPG32vka8reXliVwlKXPzkoPoajwSmjpxs1xahtjpQNgv0oJ?=
 =?us-ascii?Q?vmorq1KLQDf8/RURuBlQf7i/B5j9kSe+63Gw9PdqCTMb956HeWjtYALfJS/0?=
 =?us-ascii?Q?8e7quMQn3TcfH20PnhSzOhA5mzsEbtyY5V7z94a3kq0oRJ42pf8BmGfNaWcD?=
 =?us-ascii?Q?naMEhNcqDr6nkNZ5AMPyVJ1F6yBMq62Kbj3vtg5svJQrEi55Rlac/z3hN3O8?=
 =?us-ascii?Q?MJmKRxD1sc+fOO/cds8EKfx2gj2XDHnN4fUBtkX6fwEIa3948VHABVN5b7rG?=
 =?us-ascii?Q?Y0Bn+P3P+Nm/qvlo0Ln+1iX6jWmex/JCKbFYNwGc7yJs4ZpXDxb5NNLYzrBz?=
 =?us-ascii?Q?zusNtPIQlTqn0L0Q8wDL9Wk4YRxhV5Ro+mEOjsi/owMj8cZrMpUxW42vXmfZ?=
 =?us-ascii?Q?PrOhNuUw6iCCyhK/3tB0Xl6H9587nsbVRlrTlDzyZ0CNaz8FmvfvByVTUivZ?=
 =?us-ascii?Q?r2iNKzRB5Oz30hWpUQFAxpaAusqMy8xaajfx5runLg6D03q7uXhvL/prgss8?=
 =?us-ascii?Q?DXAmEaes/NuIZjlHAq51H6iqt+Pnt6GB/B4eTlEN5jSDSUUg/Y2lxU09SCf7?=
 =?us-ascii?Q?hh0VGWGQ4WRrKJEK4lDBzvYfGyd2qTN2Z28IXaXnxJCEGK6rGSk2hdyuqpU6?=
 =?us-ascii?Q?dLdDXV085INUk6KdTZ9mtRAeJFnY2gPIOYcA5CShn206rYm356a9t0R7R09k?=
 =?us-ascii?Q?8xeJMAguQTlPSUUTxQdLsZcBuqM5zgp/5FI8NNIy9gqF3GTMUjsYyGnKh13z?=
 =?us-ascii?Q?il/6C1/S7o7CaTrXNGtB1SCskNH7Hgpbct8uHlDsUxFQW6JUE6JhHoDdRp/y?=
 =?us-ascii?Q?U9DxBtMy3+EcN5Jc4PtWvuNQf+UulflpEUe5TbUmGyvZAvMSYiWEIHDqGHmh?=
 =?us-ascii?Q?wRniSPXRI/gHDpX5qE1Pcuwy8z8n6Pz956/z+ZUfPQdKYI8k/frz2yoRIZUe?=
 =?us-ascii?Q?zFBexv05uZlOEIa6lvbeKmK06ZLYy+Q6vp2keNXJfphCTeZPqR8i3lPvlTqL?=
 =?us-ascii?Q?cUDA25h7UwvVxOSB/gFLjStpRNfAOY0sTI03I3j1qY4+Wo8zSRFwOLOj9Erq?=
 =?us-ascii?Q?g827ICyx6jc0VnaPQZgfznoXhMZpnmTSwONWgA+zigB+eZohJC4T33nk2lG2?=
 =?us-ascii?Q?mQKx5MnewcXqNIm3TRGPV2hG6zCN8Hx0RKQUe8v2ituID9fyYkmZ+aRH+EDx?=
 =?us-ascii?Q?tdXg9DI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DpIDbGIS1aJezLDBb8q5o68KK5G6abpRZhNNJ+lTl7U0NHQOWXH2XAQqafuE?=
 =?us-ascii?Q?7rbVB6qo/XYXhkkrpGluU6j0P22RVc/gnTjGlAKmBMv7BPn4+LEuyNzrM+kp?=
 =?us-ascii?Q?vkica/xNrCsWEXir1pODg9J82zFa2E587rUocpiVLfhZ7aM7L6uWf5YsL3Db?=
 =?us-ascii?Q?5i4JJRfHkUZc3zEyRNAD+HnmXpvP2+HXOazK55emjWnUm0r7sfbENfRCCdYh?=
 =?us-ascii?Q?TGrwLVYIWNyqCzcdDSc1oNSEFXfL5qZg06rHgRbjpRotBqj0oNwiGK0k6Rf3?=
 =?us-ascii?Q?CANznHTH8PJWMEliHmnUsCvS3+swUKhksb3/OnczQplwtBqQTfv6/RX98PAz?=
 =?us-ascii?Q?KPcXOdEJ/svygU23C6X216E4rKjDvz6QqMHOkj2sV30o1GwrgiNYpq44WXKf?=
 =?us-ascii?Q?QFSsOD0d6mbY/HP//TCeLzYZae9saw0fIudx+x8j9JtFKH1Ps2LFo/MPXn2F?=
 =?us-ascii?Q?dGs9ybesm3f8FPErN2gc9pYiVeXjNtmRuMI/n3SNCjS9gbSb3CHqT79YFCK+?=
 =?us-ascii?Q?7pQr4qOmdbD8fk5Qtl65HHGmRb+v/jxcFBjAF9Dod8qZsta+RLM2D+SSAjXe?=
 =?us-ascii?Q?igGPSumfH2Is0xTw6BQ7EKqM3eSEtRLpVQ3AG8sY6w0t9wDjYHPYauObQ7W+?=
 =?us-ascii?Q?GwKcUMPV+I3DSfhhv3su+wBJqtTeCLxXbdGlSgOMo/cHiQAwriUg4ht70Iky?=
 =?us-ascii?Q?MXAVT5/FAshOIhK9QRKYPi89vkpsBiN7vKSxySsxaYPy7Tp817MnhqTj/NlV?=
 =?us-ascii?Q?zuq4ZAsEUCEY/m5tfrNVTh3eUlX5pEd0h+i9xvP/aVPSLFd3Et89TvtSJA6u?=
 =?us-ascii?Q?CHT99iucTbHuNUn+TmKlrXTfVhURCoADr59RuGc8Qb5YJpK46wrSAT9ZT3/G?=
 =?us-ascii?Q?iFfPs9UeaNrED6l3eAP77j23g9DWmr+S7rkbiNfTdOz0vaX7/GonVmjDYKb2?=
 =?us-ascii?Q?e/bsplteDTkrInd/sTCtYmD2NLdtEPsabIb2n6PdaJuABQh0lIZ7zTE+9NNy?=
 =?us-ascii?Q?twopCPBoXzhS3Yaq3KO6QisP2p7aDxeVKvfuQKLttQo+NSZ/w2OD6x3NaZ8y?=
 =?us-ascii?Q?mURIpZYrTCLWmFP/E/XLFfpF5Ts+Zvwe4eAApKHB4TOZToi3EYYdGG/9hlju?=
 =?us-ascii?Q?2XNn3kwez/ak8x0GxMNYyNXfCBATtxkXgYXSizPHZ1aXgppKRcAolaGPdluP?=
 =?us-ascii?Q?N/bfk00B1OSgzvm11Rpz/9BDbYus8jg0Ah7wRSjLJTcAjVq470/AuQpJtqbQ?=
 =?us-ascii?Q?tdlbfWl0i7fgnzQL9ddlOysFOVcP0vM484CfognVt+3UPT8Grc/+zldJdenq?=
 =?us-ascii?Q?1xdvuoqM4sdmBh1jL3+w4n0aO5Tw4XKMCGamY37ECbst2dNvxv8VTVCdTs9k?=
 =?us-ascii?Q?QXNZJ8BGIJ4L1I7noCCfu2fI7YBx3aNXtpux9BhqzE3smPc+U9x9i08NQZze?=
 =?us-ascii?Q?Y/PDaB2oKo1qFqj3rWHRdVXwyuomyTH7zVFNu36H6SCnwN1ko4UwUpXURU9D?=
 =?us-ascii?Q?2a8m+a4lUV38WKy6BR5IjztTyjY01VjB4puMEl5wGjfsq9x1eC/qOm6m9D8U?=
 =?us-ascii?Q?caf77sjIJJhC4Jm8RjpG3t+1EORAOIOLkD9tllOD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3a8c97a-df2b-4f44-d4ab-08dcf70d796a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 05:00:42.3224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eZ6AtI6+ush3mnCIFf3ZkYF2URTSTMS7q4hC90LRqEG37PcCtse0j4+xFciLa60/T6eNAevqTkcxj4XKT8bq+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6116
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Saturday, October 26, 2024 3:31 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Naut=
iyal,
> Ankit K <ankit.k.nautiyal@intel.com>
> Subject: Re: [PATCH 3/5] drm/i915/psr: Increase psr size limits for Xe2
>=20
> On Fri, Oct 25, 2024 at 11:31:34AM +0530, Suraj Kandpal wrote:
> > Increase the psr max_h limit to 4096.
>=20
> Commit message doesn't match code (this should probably say max_v
> instead of max_h).
>=20
> Since PSR2 size is supported up to the maximum pipe size now (for both
> Xe2 and Xe3) would it be simpler to just make the check on psr_max_{h,v}
> conditional to pre-Xe2?  Then if we don't have any truly PSR-specific lim=
its, we
> don't need to keep duplicating the pipe limits in two places going forwar=
d.

Also the reason we may continue to need the ladder of checks here is that w=
hen we check
The limits in intel_display we check it considering the num of joined pipes=
 which not only changes width
But also the height to 4320 instead of 4096 which means we need to get thes=
e limits separately checked here
As well

Regards,
Suraj Kandpal
>=20
>=20
> Matt
>=20
> >
> > Bspec: 69885, 68858
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 4176163ec19a..c22386a31a63 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1453,7 +1453,11 @@ static bool intel_psr2_config_valid(struct
> intel_dp *intel_dp,
> >  		return false;
> >  	}
> >
> > -	if (DISPLAY_VER(display) >=3D 12) {
> > +	if (DISPLAY_VER(display) >=3D 20) {
> > +		psr_max_h =3D 5120;
> > +		psr_max_v =3D 4096;
> > +		max_bpp =3D 30;
> > +	} else if (DISPLAY_VER(display) >=3D 12) {
> >  		psr_max_h =3D 5120;
> >  		psr_max_v =3D 3200;
> >  		max_bpp =3D 30;
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

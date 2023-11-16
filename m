Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D68B7EDAF5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 05:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9480910E056;
	Thu, 16 Nov 2023 04:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED5710E056
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 04:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700110005; x=1731646005;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uTCSxb/NuzURl6AIuVlGRb30LaA/+jnSGG1lE9P6UTY=;
 b=TS5w+gxsB9YTgmHpgTB8aTN4VS2F4NYxRQWyVUe0o2ThL0TmD7WhcvQd
 pf8e0W7MiDr4MU2OGUg0BNjcO6Ry+iEq2R/N2Mk8Bx7F+4Qy+9q/Dgk2X
 /hP/GPBbZa3YCqn2H9IdB3MwECRkPiUXKeVjl45K+loj3mHi7VJr5s/C7
 KdaGqWOojrLhrLpQRLx6zJF5X3NqSSwlQ2G8FDdlj+8mAmmPHjYJLHrjw
 oQk6SIah+IIEJ7HU5OcfagTOtf0vGlcHPz5O6kDVN38FKPUHIX4qR/RE5
 WTBD3emLRs6l9lsJ+FE/eLHDYfbRaNJcfTSC5/bby7BR0SqzDWg2Ju0I7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="376058691"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="376058691"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 20:46:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="800063348"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="800063348"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2023 20:46:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 20:46:44 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 20:46:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 15 Nov 2023 20:46:44 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 15 Nov 2023 20:46:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NtjIvugkfkTiOf4X8tineC4wXmHMfhJ2y6QwHwvpOJx24E7Xqppvr3dg5QgYlaS37NzDnqTL9K+UG6W51IW40q4kOJxHCT8YZx68g93Zux40TXF+nFmeMlIq0pYcQ+KnTtnLZV7JrzogW1tH/8NaoX4Sji76zfmPs45Mm276qXgsgWf00m38XMnJdoJtbV15U5jjtgU6RFWEB7XB1CXg/AxbC6ALyxAsa9bGG/z00Jw0pfm35zmMaU00MO9UVEdwSVJk7O8LMPjpse278eNL01lqgJqrpayHAfIMp8GG2UOcUUNuWQ7/+anXen44m2gPCTOVcpa+BCUR9vGPyyHraw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VGjsb9gjiYBDD3Z7Sxnem8lIUHB4+g777324WVs/R/o=;
 b=eFsrPdkqt7a+t/jV0ko33jMTaAR0hsC5Z9xWNfhKMowHYeyGmwnr2VfsETmbmTYJV/gIAWJcH1tzNsDoat8q1wo7+hAgQ9J7uaB8/3EdA1PHVdh0qd4IRIVDHVwL+qxanZoJWMAEuK0YhVkvFqDyoxI4wR1bBE5OnkcdDkaihZFdIewCsLNDadUfuzo6lRcLxeR1siB2U2dxIbKmv3WaJuyR9Iu+BRbWYTM4lmxM3GzmQmAKMJeg8s6wHt8GmclJJYPiwL+dsR4kV0r/qUt0bA4+ofp/XY1alSlY4WPBI3U6JgkpOMnfNaoFJo/km0rxpSrwcCWSvTuVgNojhgc6jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SJ1PR11MB6156.namprd11.prod.outlook.com (2603:10b6:a03:45d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 04:46:41 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d263:5be6:37e:bb45]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d263:5be6:37e:bb45%6]) with mapi id 15.20.7002.015; Thu, 16 Nov 2023
 04:46:41 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm: Add drm_vblank_work_flush_all().
Thread-Index: AQHaEyJipuuU87QdYU+zIDiU8Llt8bB8aQzQ
Date: Thu, 16 Nov 2023 04:46:41 +0000
Message-ID: <CY5PR11MB6344A0C8F1671A27C72FAC55F4B0A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231109153450.142185-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20231109153450.142185-1-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SJ1PR11MB6156:EE_
x-ms-office365-filtering-correlation-id: 36eb8f76-0aa7-4a09-854b-08dbe65f06ed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wd9BWsbA9+ltz5Cy+WXvrmlmwYEaQ+FJikbQ51O+3R0tNFe5oZkH+rkjl69k2rNpi8eGQyBMwt3cFq29GkNV5FoOKo3yudWBhP/11IMYDmkqnsswaK7vtkYrNrWN0uPiZh4BiMEQUtvij+dLGdeLBv+2ddHBK5ImpR8bTksDWgYRsQjIVUNTpHAoYs5gGtxIkWw4vnNlAwYyEqxISIljn/VngYOTKFa3EcJfySx9q5X8Sbw3LAvuzxAFnjVX62RML3rz1zcb2F4v/weLpImaUosZ+pzQju1ywWrtpmmsi4PK34VsxiHH+eGTubm+BbhEMxR5xLxbfxBX8LntNCT2fVD7u0KALNI1RMNRQnm9iec+CEiUwy1TWiDgnweDatMbE/76dJTFCyA668m+ENA/YNyrXVVwEzK3drV19bYUiMHb3LgG7OwIwHG3uMNSDLjz/K/oXu/BJk39YlX5RyoTuYum8Cet4OzvmWKVwYe8G6wV/PThtyahB9gcz6IJdRE8PmT2QdcyIgwxnnsGthOgZV5VksK13XQoOYbVQiDV6o2XV/53Mex45345LvmllZBSexsSjm9gkwaPDi3TxFyjBWuYcmkeamkaHBlthChlquz//cNMy+rOjA4y2VzqRf6K
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(346002)(39860400002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(26005)(6506007)(7696005)(53546011)(71200400001)(9686003)(83380400001)(5660300002)(8676002)(8936002)(52536014)(41300700001)(2906002)(478600001)(316002)(110136005)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(82960400001)(86362001)(33656002)(38100700002)(122000001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wCIvr6hnXn2Ol9iz2NGm/SBO5hDUljnYH0J3aFoUPQLcdUCWHwRoyKuN0YM0?=
 =?us-ascii?Q?pFVpXjQlXW4IvMO8wXspYhH7ghXmkU5ypY+YtfV9UZNfpPJ4H/8Riqha1Sik?=
 =?us-ascii?Q?BftzMj9sQQpLpTjEDnn42Pq5Bi3/HhJZmn/Zim2BW0saO4I+KbrJHutVhWek?=
 =?us-ascii?Q?gsGxsuNJiQmwWbFX5OjC+8qfSTRBWqHLjOyauLS30tC+dQQOq+f4BVhCXpV7?=
 =?us-ascii?Q?uMDokSSwcuSgD5IYJDw6s4PJlym14TOO68DfOhz5S2FsnXafyj8nscHsEJML?=
 =?us-ascii?Q?/u0OPSDovj9KNh6FHRnS7ySBE2DoQNvKiVf4j38o/6Mt33M/Y0BgNhteigCX?=
 =?us-ascii?Q?LAXMU8JwOkVfVYHbz8L3EGgmEsu6TQxScyewKtBDPzZbzAgiPgIBmPewSIFL?=
 =?us-ascii?Q?wo2NHHO1ws2M6xTuP79ufw895yIV9CxGxVU92u58Qd52awyyk3uW9k6quVv9?=
 =?us-ascii?Q?1XupHeOtZxues+i8VMCUACAlq1CN2CCW55RRz4V0X947OKA1YcUdlMJ3q1PM?=
 =?us-ascii?Q?aJtRs2HsvgEGs0MKKGWEq0p1npZddjc1/eKXtm9faf2Zp6YDkqwsn8oWUJYc?=
 =?us-ascii?Q?EVdQXTEY5/9EgxMjiKqJeWcV6J2x/Ut1xoLX0OZ9Tp8LHoU+lfFlzYHCakL6?=
 =?us-ascii?Q?Guhmq5xMXlOqnZ1Li2ZFj78pGAMCh0wVKgJ+z3GC49XZyQWdkScCYhHtSguw?=
 =?us-ascii?Q?W5wkVvr2XEPdYEAKcMil/LEcPhWAC+q/GzW+uRimLkApxzBFaAeXdw4MfVKU?=
 =?us-ascii?Q?obMm5iaSQh4QzpF8k1SuxYSQbn28VRQ+tbx6MKY5yhKyWj0txcytHpUN1BDp?=
 =?us-ascii?Q?uMrv8Lqk7WU6GI3EI3P1Rz+qXvKZl0nj3Xkj8zfMJYRVjvenReGOwB2VSOeF?=
 =?us-ascii?Q?LW8ajtrBu/l5njGDcUanu2Kd0NJLaWB1/Q+pBO7aC+w7CweylLOZVvew8Ix5?=
 =?us-ascii?Q?N02ekf6NLCctI94GeiCSkmioxrijlkMcHXidej42xMO+I+lUzxuUWB1jAjpA?=
 =?us-ascii?Q?b7mNYFL78yFHL63ZCWIsVgUCQWZVvYDNt+KgB0LYnDjcjB1FESOSOykk2l/o?=
 =?us-ascii?Q?lsWVlIeFNRJKAPGkG+u96AFORoT7BWETJh3ItQFRdHoMpApGr2XyrOnkYSpT?=
 =?us-ascii?Q?y0MZKMJ75+9wRS9jgJQeNwF9fpmuado3pqd3G4t7P/EmuKaonZHBKREx+n/s?=
 =?us-ascii?Q?M2NcpgV+vPHxmHIzmSLekYI6Lau+/9gYaeUNKXhSFrpAGbESWlCiolUJ2d2Q?=
 =?us-ascii?Q?z4jY/6013o4vApG/FZPe00s9xwr46WzkRlEte4CdAz1cevbPxGcRwpbX3tPh?=
 =?us-ascii?Q?jLp0W6XVWB5O6I2ccirZbDe1DppS3Fk9pqzoCG+cpwrLq7+tAOrJm6UNttOc?=
 =?us-ascii?Q?Hk0C38JZxv26o4K52rX1JZV5h1XwMiNnWUNZaDZel+VjDPFBvlavjY3lWJgm?=
 =?us-ascii?Q?uZ7S8WvP+gHtuMr4cCUcx6Bv60GhjgziQH32ydLNAonuFolJQCfbApyfJKZD?=
 =?us-ascii?Q?l3MDWVJVD05vHKiTyRTVdzQkgZvs97jJJ5agzwcu54yncUJjNmyTn5DMIiGt?=
 =?us-ascii?Q?bY1EI2nsQdrvpt99BqkFFQUqKp1motnoagMe3w18?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36eb8f76-0aa7-4a09-854b-08dbe65f06ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 04:46:41.5026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pQhgiwSIIi7ceAJBnqA/HRQg9WN8RpIjVxspOkv+Hi+vN/HICrAHosMc/2s8ggDsVnXQkiNSRqYa1OiovrT1pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6156
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm: Add drm_vblank_work_flush_all().
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
arten
> Lankhorst
> Sent: Thursday, November 9, 2023 9:05 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/3] drm: Add drm_vblank_work_flush_all().

Drop the "."

Looks good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> In some cases we want to flush all vblank work, right before vblank_off f=
or
> example. Add a simple function to make this possible.
>=20
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_vblank_work.c | 22 ++++++++++++++++++++++
>  include/drm/drm_vblank_work.h     |  2 ++
>  2 files changed, 24 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/drm_vblank_work.c
> b/drivers/gpu/drm/drm_vblank_work.c
> index bd481fdd6b870..27c8646a79c8e 100644
> --- a/drivers/gpu/drm/drm_vblank_work.c
> +++ b/drivers/gpu/drm/drm_vblank_work.c
> @@ -229,6 +229,28 @@ void drm_vblank_work_flush(struct drm_vblank_work
> *work)  }  EXPORT_SYMBOL(drm_vblank_work_flush);
>=20
> +/**
> + * drm_vblank_work_flush_all - flush all currently pending vblank work o=
n crtc.
> + * @crtc: crtc for which vblank work to flush
> + *
> + * Wait until all currently queued vblank work on @crtc
> + * has finished executing once.
> + */
> +void drm_vblank_work_flush_all(struct drm_crtc *crtc) {
> +	struct drm_device *dev =3D crtc->dev;
> +	struct drm_vblank_crtc *vblank =3D &dev->vblank[drm_crtc_index(crtc)];
> +
> +	spin_lock_irq(&dev->event_lock);
> +	wait_event_lock_irq(vblank->work_wait_queue,
> +			    waitqueue_active(&vblank->work_wait_queue),
> +			    dev->event_lock);
> +	spin_unlock_irq(&dev->event_lock);
> +
> +	kthread_flush_worker(vblank->worker);
> +}
> +EXPORT_SYMBOL(drm_vblank_work_flush_all);
> +
>  /**
>   * drm_vblank_work_init - initialize a vblank work item
>   * @work: vblank work item
> diff --git a/include/drm/drm_vblank_work.h b/include/drm/drm_vblank_work.=
h
> index eb41d0810c4ff..e04d436b72973 100644
> --- a/include/drm/drm_vblank_work.h
> +++ b/include/drm/drm_vblank_work.h
> @@ -17,6 +17,7 @@ struct drm_crtc;
>   * drm_vblank_work_init()
>   * drm_vblank_work_cancel_sync()
>   * drm_vblank_work_flush()
> + * drm_vblank_work_flush_all()
>   */
>  struct drm_vblank_work {
>  	/**
> @@ -67,5 +68,6 @@ void drm_vblank_work_init(struct drm_vblank_work *work,
> struct drm_crtc *crtc,
>  			  void (*func)(struct kthread_work *work));  bool
> drm_vblank_work_cancel_sync(struct drm_vblank_work *work);  void
> drm_vblank_work_flush(struct drm_vblank_work *work);
> +void drm_vblank_work_flush_all(struct drm_crtc *crtc);
>=20
>  #endif /* !_DRM_VBLANK_WORK_H_ */
> --
> 2.39.2


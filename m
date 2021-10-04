Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FD6421286
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 17:20:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0ADB6EA3A;
	Mon,  4 Oct 2021 15:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E0626EA3A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 15:20:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="248727380"
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="248727380"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 08:04:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,346,1624345200"; d="scan'208";a="544333147"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 04 Oct 2021 08:04:05 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 4 Oct 2021 08:04:04 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 4 Oct 2021 20:34:01 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Mon, 4 Oct 2021 20:34:01 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Sean Paul <seanpaul@chromium.org>, "C, Ramalingam"
 <ramalingam.c@intel.com>, "B S, Karthik" <karthik.b.s@intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Thread-Topic: i915 MST HDCP code looks broken
Thread-Index: AQHXuQ3RWUOlebNYx0qBcd6MMk1Xm6vC7bqQ
Date: Mon, 4 Oct 2021 15:04:01 +0000
Message-ID: <9078bb70f03e41738043771fb1d89ff3@intel.com>
References: <YVrctgdJ8EYdW9i0@intel.com>
In-Reply-To: <YVrctgdJ8EYdW9i0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] i915 MST HDCP code looks broken
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Monday, October 4, 2021 4:22 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Sean Paul <seanpaul@chromium.org>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; C, Ramalingam <ramalingam.c@intel.com>; B S,
> Karthik <karthik.b.s@intel.com>
> Subject: i915 MST HDCP code looks broken
>=20
> Hi,
>=20
> I took a quick peek at intel_dp_add_mst_connector() the other day and not=
iced
> that it calls intel_dp_hdcp_init() and passes in the SST dig_port. And di=
gging in a
> bit further that seems to clobber all kinds of things in dig_port->hdcp_p=
ort_data.
> This looks rather broken to me.
>=20
> So has anyone actually thought what happens if you first use MST on the p=
ort,
> and then later switch to SST on the same port?
AFAIU there shouldn't be , when the last connector of MST topology get dest=
royed  and it switches to SST mode on same port.
The base static connector of same dig_port should get connected and will ca=
ll  intel_dp_init_connector()->intel_dp_hdcp_init().
What is the specific sequence is broken here , is it the connector destroy =
path ?=20
> --
> Ville Syrj=E4l=E4
> Intel

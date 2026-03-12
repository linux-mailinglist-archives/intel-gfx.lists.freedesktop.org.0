Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFq/FWRMsml7LQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 06:17:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8339226D5C0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 06:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B74E10E184;
	Thu, 12 Mar 2026 05:17:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="blihnWx0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1AD710E184;
 Thu, 12 Mar 2026 05:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773292639; x=1804828639;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mLNvUKROP29dmsr1Y+gBRNd4CTqFXtEo2Xqfw2zWkTg=;
 b=blihnWx0ubtijjQaEEBh09XnKoJa4oH4o5ApMGdF3PNVfYagNYmTaO9E
 5/qWHPGL0RtY70r+biXCTvZTIc4BJORuijWDgSqxtdLbTJ65+50JI4HJl
 8KEgNvsCJirTn8ThJTObg91I1orRpvBrEag9kmXOIgw4F3EldAqyAlVv3
 BXLshCr6r3/SF3dPLv/XJhC2rGObE+rkXU00QPUtZDo5safLUn3KiTE5h
 0We5l8htsu9ypjEXE1P+7Qz61dvUpjr2aiLeB3xAqpMu9JHaT7Q9ZhFC+
 56Ozbi37I+BookjT6dI9hF+kLosWxLWUwU1tJEAPHaClLgJ6WGay6n1SH Q==;
X-CSE-ConnectionGUID: 6caxIvwsScKhOzTI/Eyyuw==
X-CSE-MsgGUID: Qkvz05s4R9uk03j1AJ5vDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74491208"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74491208"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 22:17:19 -0700
X-CSE-ConnectionGUID: qMUkbAZzTtCRRRcszqXKAA==
X-CSE-MsgGUID: Lax+FW63SRK8kH+OoKsDYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="243718970"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 22:17:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 22:17:18 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 22:17:18 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.8) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 22:17:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bwW5zIiBeIGfeHKXP5bnrBQrCCvHX4Bduc9qBgGPnSbyqdLUXM7GE3dUH/ZHctbsdiYOK7n+9Ims2o7d9p8DVy5zm4Cioiz3ZhIY8e6VHhxWU+vWFgGbuvF0IvJN32kHxB7fK8Csf+rCUWD4imomPf+WL43KI6KWYRhf8jy6DmIUJDDff3UhXfp0/+YeiUd0tVBaN1QZr8952+3DhFlvG4URSMC0uZTVqVdi3GUwZGO7mPw+AwIZRB9fTVQR/uW34M5v1tqmWkmp20GQ7xeh1n8qt46SnQzKHl8U5d0kt8NI1jyER1WlaudNsSjq0DzeytC4ow1dIYs8Dssu/omkag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Om7/ZZOsOHmWTyt2Lk2BnEgZ8iEMn8z0pMdpHBzYYHo=;
 b=OZyj2MG/oSbAEFDLiPnuh8duKQnoOE2JXK3HLxnaMneaHbRL4Aw38USESDCyYSP4N/QMyVbiy0TDp3qBThfaMpE0yJQhYoSiBemM7CiBhC5VxR3ajjTulkQx4DvBbOvlD09de3tiilm8F5Ltro/wMUfTjeuw42RLIq/8VXjG4tlwLxOkIkRVKA00J6qWZRTBHs41T5Zmq1gyxqSl8jp7izO98YYEbHBoSF7mNXK8D9+oamWK1EkN7ljuTyKKy3N0f/gURnl9rqJkqSjNhe5TTe9jIoTWzJPSVggNlvQVydj6gVk5iyRm7lJZyo69m4naZC0ztn0KoCE3c5XeO4nlXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY8PR11MB7922.namprd11.prod.outlook.com
 (2603:10b6:930:7b::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.12; Thu, 12 Mar
 2026 05:17:11 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 05:17:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/dp: Simplify forcing a link retraining
Thread-Topic: [PATCH 2/2] drm/i915/dp: Simplify forcing a link retraining
Thread-Index: AQHcsWygI4A12aVPE0qlNOEoANQd/rWqW+uA
Date: Thu, 12 Mar 2026 05:17:11 +0000
Message-ID: <DM3PPF208195D8DA3D2B681D39BCFF449C8E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311153152.133744-1-imre.deak@intel.com>
 <20260311153152.133744-2-imre.deak@intel.com>
In-Reply-To: <20260311153152.133744-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY8PR11MB7922:EE_
x-ms-office365-filtering-correlation-id: fecbb92f-f9cd-4dc9-2b9d-08de7ff69dbc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: za2RikKYes3U9NDWS2oJoW/JMVBciRFIH6XRtlN2cDQJpV/0gFjmftAi1pcBiidAvOw64jpfyiB5ni3T46oDuuX+KqEQdMrMSwDCmbD7+t32KaKfWBF6o8S5pDjNwPS7FXq/J+VmjXI13Mjm64SDdfkze9YZi+TZDAXkzkHfyQHEdoxBW9QoI8NKO8HnJmVwGiEYn3gEDdTQVM8Yfyx5Kme87h6reEJZyRvJIpgWehIfXEUa1WHYYa2tN/xVD7xJSTM9pTUN1B86UxnHQgkWndEJBDfiPTsXP6aipaMlZm9582dTv/KszXwiHyfI3mBdBxC0Zm4Vx7xbHRR69hscBOuIKy4jO3pkiSOAmq9BySnEyjjfe6ZaN7v4feetusAkgMHZsV/Cex0cwPpRml2jK94c9kGQo0XhxsICtmZBF4hRibo4Yw6nASRFOboSUF172r+GmoJnX2G94HF3iUV6WP3rofzgy3KMkG5uI078EBooHrzTQKzVdNVivTZHG4I8tBz5YDwKAoP9xBHNsFD50yaet4tfoe0Hxw0jOEi80u4mAyIHoA19nf5KG4s+i5/bCCucEG1taj8ZYiwo5uHCZPzeRJv/LvvDs84C3mx48HilMCqOfwFI/qWR5aP9niJBs6qv3bwnp7p+iEjW+rqi5zzbtrYOn1ygjKG5TVjcCHwy5tOSwOHCHyQaYSxeXs2gZ6hhFzyRu1mzE7DbQ+Yws8eYj8d3KPcPhhrvzuK9w3RbzV1i2tgWaa1UguvrO1O9Yfz0HOHvIV4/gR8vTQ0Y/sXUuXcOqDmTMlZzNJzAs9A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QvAinzJtjEYrmUjLdYFto0qtj+IvqT8nZ3FUqH9hWfpF6VTu+9QGXXdXNEoq?=
 =?us-ascii?Q?paYLsOxyS2sW5djJ5rwzj1jaxrRlrvNBiUFRtMopqdTMjpQk3NgJT2WBS1mm?=
 =?us-ascii?Q?ci9TAdkPVvMQ9aJ0bq0eGv9hfOHWmXeutiGFAnc9x7yCam8YG1oPr/xFbuQB?=
 =?us-ascii?Q?8BILu9YdWgBcLjIMbBWVPnY8QLzVj8ZFDCY/187oQ63mT17hJyOHaAnsDLgB?=
 =?us-ascii?Q?mbV9ykKuwOgG/ltqSw7jhzLMZ3S0RIqukxS6M2NBVIheUswb6zAKOQlgNtG8?=
 =?us-ascii?Q?2hnr3hQIDbrVnmm0kcV0qj06rMDRa/VDHSFuD/3CWQ/DYboFW9zj5axDEJsi?=
 =?us-ascii?Q?SMl8B9qs/IpiB7r0simmFVjsp6tYm+8wwCh3AbghzutfumfZDE2E5HTn+ikk?=
 =?us-ascii?Q?qCb0bU3Q7oKCqb9GnVngUE9KcOuzm1WaW655ORf+GQ+R0HASgZMMVb2loUPy?=
 =?us-ascii?Q?LOvMmPaY0DBSP2VpnQ81m3PmWngRjnS+jQxX1zZasxZjL8BRSvObXLkRqdcY?=
 =?us-ascii?Q?oNgGpXh/gQNIRlDMLj2VmnaxLEgIwjokKWYzUwVfsdEOkPNk9WTLxki8Zfxv?=
 =?us-ascii?Q?TpwWVyTOTxmSm9k58r5Wl4M3Yw4ELMn37dJxi64VSBcB96fVsLfpZvRgHetg?=
 =?us-ascii?Q?F90wI43MOgSSZg4narn1g13HwTHrEnMARLP173EH7W+kL7V/nfSkdw08D1L2?=
 =?us-ascii?Q?hXX5s0EhUjoEeBF8lhHShQCDWNOVuc52kSsK3TGrkA8fgrledeXRkSE38zEX?=
 =?us-ascii?Q?Yk/neFfJoHRHILEkc5usyDpCEbdZqMj07jAcq6xEF/2jZfqYptn8+qBZxoVH?=
 =?us-ascii?Q?6MXg6gpOwQjnBhYTH6ejOPfE/u1FNWv7+hPDdvRMgUui5nyw8Fo/YMbZZ7uz?=
 =?us-ascii?Q?GjIck4mXLjz4DP4Bx7x7FyTObtucbLqPVVrSNSRRMtT7mJRearOwORpNFGB5?=
 =?us-ascii?Q?nGs9IDvIhgYX6xjApk0lFyyij7fZ6C0xCjrTUnA/ftTtqmYFC/LM88LVWsrm?=
 =?us-ascii?Q?rQHPAQLRIo2oqWEDpsJ1l4WDR98eSk9AGcgSYnMg0j/4i6bpjiAF0drOsKef?=
 =?us-ascii?Q?dZdQbN8n6ah6zuZdWLTXI9xf+nj0muVrhrFR6hIhgR3WzapRqp8L8vxe1DFy?=
 =?us-ascii?Q?YpgP4ITaT7tDSdaB88Q/cpne3Q9fkimt94FC4FT3cJPjY9ue8PWrgJ4v8h2X?=
 =?us-ascii?Q?BEzBJJjYtb45+D679fNeqDSXh2rF1eDPHT8X9YPoliND0rsqO3WiPzJ0nfhH?=
 =?us-ascii?Q?4N6WpiCiVoU1wFqwWJmDVoJkLMuPzgmzSClufZdFIDhVVtNKJ4VrdZ9ibl7G?=
 =?us-ascii?Q?9UgMDyKWC388g/TA6Je8t/PRHmVIUFK8mZ8q+d1XWU4W9abOJH6gaU9klzH0?=
 =?us-ascii?Q?3jff+2ZW76wUUvZCBOkFvH7mMcknzpRiG2PEYa1y/y4wEXleZEUWgr188d0e?=
 =?us-ascii?Q?GnbbAR3ngZ8LFem88zPEgp6chu1G7juhiS5XH2Ly4ddwOQ3Afx7quyxwRfmC?=
 =?us-ascii?Q?MojFiFRW8POe1i1swJDY6P1GkJV9o/myvf4fn4k6eR8YE+oJTMpfQ0wzsQSm?=
 =?us-ascii?Q?7h8dsTL0p2gDd4pVoSA4RvZdKjlUnia1CGCJFulGofmKKf0VQlO1s8UeC46Y?=
 =?us-ascii?Q?7+DULM+8UaeSlyMnj3JIt3EsNtHj5+/+fTg+Myb3MDDMtiymhipeK/gx729/?=
 =?us-ascii?Q?R6uad/MFxRfTDFJYam8StJZbFYb8vV5XUDa6T+SFQb349IErO1vQvTVpkfYE?=
 =?us-ascii?Q?EYaCdJN+kw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RAfeQM6nCp44gVxkXI5OgPtQ6PYt00fqvx00xDw/N8Z1GWO08yxOjZeNrJziT4ctuA9rgEsWjRFY1tMesyeyiUIdvGNO/DGdwOZ7sQbgb3qIww8wNDtA7FZnSFeldX0ZWL4tn4eYrSk8ZH6gbsHw78Fb/e5KooxoRFUKkEEEp/zq9tNjRvKpy1P3iw+8/GHjToJynNpREE7UG4qGJQkaDI4f05egDWLAbRgt2qV52PtGg2Hl6Y1F1G6VtFTxiM4E2OKBEfniSbZGibuxO3olmCDlXJvx9otDuWjCRRtZ3WJkgzG/Bu+v6qj6ZV5hyBCmFHq96UZNST5Ib/06VHvuBg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fecbb92f-f9cd-4dc9-2b9d-08de7ff69dbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 05:17:11.7764 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pdGCzYuVWEgqLDm6p+FlfX0owlJBQGoKp8u3yNZZQYULz1BqxWAPqZYCpWk1VGOfH75ERxD+B0341TC2zOt9hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7922
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8339226D5C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH 2/2] drm/i915/dp: Simplify forcing a link retraining
>=20
> Since both the DP SST and MST HPD IRQ handlers call
> intel_dp_handle_link_service_irq() with LINK_STATUS_CHANGED set in
> irq_mask if intel_dp->link.force_retrain is set, checking for the former =
flag is
> sufficient to determine if the link status needs to be checked (which inc=
ludes
> retraining the link if this is forced); remove checking for the latter fl=
ag.
>=20
> Since LINK_STATUS_CHANGED is currently set unconditionally for DP SST,
> extend the related comment to note that it must be set if intel_dp-
> >link.force_retrain is set (in case setting LINK_STATUS_CHANGED becomes
> conditional on DPCD_REV).
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2ae030eda73ee..4955bd8b11d7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5925,7 +5925,7 @@ static bool intel_dp_handle_link_service_irq(struct
> intel_dp *intel_dp, u8 irq_m
>  	if (irq_mask & RX_CAP_CHANGED)
>  		reprobe_needed =3D true;
>=20
> -	if ((irq_mask & LINK_STATUS_CHANGED) || intel_dp-
> >link.force_retrain)
> +	if (irq_mask & LINK_STATUS_CHANGED)
>  		intel_dp_check_link_state(intel_dp);
>=20
>  	if (irq_mask & HDMI_LINK_STATUS_CHANGED) @@ -5984,7 +5984,7
> @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
>  	/*
>  	 * Force checking the link status for DPCD_REV < 1.2
>  	 * TODO: let the link status check depend on LINK_STATUS_CHANGED
> -	 * for DPCD_REV >=3D 1.2
> +	 * or intel_dp->link.force_retrain for DPCD_REV >=3D 1.2
>  	 */
>  	esi[3] |=3D LINK_STATUS_CHANGED;
>  	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
> --
> 2.49.1


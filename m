Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECaGAgiMzGlXTgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 05:07:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 535DD374221
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 05:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC5910E328;
	Wed,  1 Apr 2026 03:07:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z17grB72";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EBCF10E31F;
 Wed,  1 Apr 2026 03:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775012868; x=1806548868;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5ifoPZzl3ywIff4tv3h7Cr6Yt4bFFd/zRwiqjj/KrS8=;
 b=Z17grB72zUAKwuwU4Rm87vH2AbCJAf/Ms4wb3c26CejOrkUqmt5XkMaU
 m3bLC4YiZXMgI4wG20vjjl8FHURsCqvzA/CdsdGW4a1fVRre1+dKOtPWH
 FPF6VMW2eUkLR10JNu3Yk9W+eREooWBs6A955+Rlch3HcrKg6w4cjAgqX
 X0MQA9HBjvhHwudbDIak5AAS5tnxaHXSnSuuaKr9aHuEDEuu3mgCveoAL
 4k6b9yy62K/gtN0UMI3spXSpFauHwoFfvHBsl/0OlNWxRRsAiLDsb0dGW
 JjrGeEFCf326beja4IDQboJqNhPO+B1XT4e1QaaVieOMeFf7hOxDs8FAe A==;
X-CSE-ConnectionGUID: ApHDkaxhT3iAuFwx92FlZw==
X-CSE-MsgGUID: 2r9kmxLlSmeTcZWjgvUljA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75933740"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="75933740"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 20:07:47 -0700
X-CSE-ConnectionGUID: SvCENFJpR4uFKFRlvvwD8g==
X-CSE-MsgGUID: eeL1zfAPSPmxWB/vq6bhVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="225719768"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 20:07:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 20:07:46 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 20:07:46 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.19) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 20:07:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZqFU1MaJRLHitps3XtyC3W2UhfjHsOU7nMHyBfeY5ZDmaRXX2gaHup/2n3JhqGQA18LecjQl/FXwzGVCmp6RxJzP1f9ySE4iXb+UPgLx3xlHygm4WBvvI/FwkbyvlbBCeua/V3S1Txg6gG6pSSz07cdMhezkootFZ61zZzdIsb6UWaDY5OBbcG5lXKrQLktC6KojRdHOTmUSrvXA6UFJnxTeXqTKFHxUKZlkZPipxDIwa89djjXcjFfUbEm2EdhSgeSqupCNLYtH0GU9JEV+qyd7OXK0Fe0F1Ywd9n0fWVrOkebsp7gmtzNccl3oe21NmELRqoqMKvBSvMXayJglZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eLeG1YybxeIVvnjGihZbLPp36Cdp4EAWldVor9kKDU4=;
 b=Y5vlGSU2Zx8DJXYYK77TMVWyOQ12RzAw7xLLHJ7KEZPhnDj4zdzkyWRv4AAsDUap6Ne6nHd1+8JQmoKKqd4N05dbaCoAnOiTrLPRvY9Oeg7GeA18ov99HSElA9TMU+B/Dlk6qpe3ak/gUD6kcaAufkrrkH1yG6/g8KemsNhwOMgYLH0UK3o8q3w6AHGYyiroOOa5X+pdpEq/27b1nEdEmveUj+zzgP6Ypwg9n3iD0yZe9X3eugqRGRX3znJxLColk9CwouIQB/AZgBlK+yjBNWLVR8YL+gtIsNs4lsjK+WU6xXZ1bhkJthhM1Jh2i/MrZ/5Udrp3CQV15uBl0ljWSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA1PR11MB6918.namprd11.prod.outlook.com
 (2603:10b6:806:2bf::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Wed, 1 Apr
 2026 03:07:36 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.015; Wed, 1 Apr 2026
 03:07:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/backlight: Remove try_vesa_interface
Thread-Topic: [PATCH] drm/i915/backlight: Remove try_vesa_interface
Thread-Index: AQHcpTuT0NOVFGlMC0KzEq9i+0VeAbXJg5qAgAAvJkA=
Date: Wed, 1 Apr 2026 03:07:36 +0000
Message-ID: <DM3PPF208195D8DF5D98183D96341A33C71E350A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260224031322.2568874-1-suraj.kandpal@intel.com>
 <acxaN8mUWjRue2lR@intel.com>
In-Reply-To: <acxaN8mUWjRue2lR@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA1PR11MB6918:EE_
x-ms-office365-filtering-correlation-id: d6f093e7-7c27-464b-a807-08de8f9bd394
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: cbyGTi0RNmBcFUEZgAiAWk2A3d2AB7ynpkI7tG6rnfckEokg9o7BzWLib/+eu2DiTXDYBM6wCreBDpLQqArAEYBLOxL2HO91iWkI7qxIhsVzbuwKzm47BBXHA/P2PaSMzRYyBBisr/0T087K241zllvqw6mUEQyQbu+XhuspNiS+96nS+KfIoIPjQ3E2UWuZAFoqZtcc2GUPhIQzy6b6QDKo5HHMB5y3TJjQcVOBEuH+lKVDY22a4xO47O0wV+lWVs/wiu6ltaPDBkUJ2a5bCB5uyZLRwTxxFakNxOWxnaRDSie7qLLr7/kBavkAfOuVFoCqFcUvayzo7gzXM5l+6fWKAKMdjE7nwhRGh+W04mD1LARlOTIVjTJUwoewO4C3ao9IAb0+NailphGNT8IVLqlMA//8eJy1NWgAESVpVMUuUAqOVJZos57fKg0dUPARF6VsYIpM0171tX50hQaL4bHXU/QSJ47tKZJiVZhxBbC+nvv4Nx0n8ASS3q9XFTnYOttXC2WBTr43lA+Ei5a7XHB1P7GNoxISHlJH0tBIYXbnZFcDgIMwSf5WTOdYSRgzTdsU5nsV7qlHQMJk4wCuSbLG/lPuNlc/Oas6xZbr35ESXDnpjD8oUQSVXvlSrw8j9FzCL2EZ9sy+LpNfOEwsPIorvCwgJxzTOKpzWzfyvmSsmwX9eYr3lSWWbTC6lhbOs1cTX0zm5e2SFXq4Drz0Mu8W4LGu7GVlGJbWoMEq19se+ZcyMpjPMB7RQxuRwbvH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?jf/tByXkpOC8wLpyu04GCDbIHihG62Rl/J4DB2bcCc4MnZg0n5tzcYliJ4?=
 =?iso-8859-1?Q?BbqzRfAeQaksGi9EaQJtpEeFtZnVU9XDoDe2IwNx9eaRqg1KXflGJEyEDR?=
 =?iso-8859-1?Q?IVK96ASaIGZiKJi+7dnMI9hsFXeXZRV/Du4zhNEhjYqTQaoFyH8go/1WMd?=
 =?iso-8859-1?Q?4JvY8y7uzE5QdzM5ZFi5EgcoTyk+VyIQwHMWfP5zPYNs8db3TmqClSNSsc?=
 =?iso-8859-1?Q?/MRzG74DcuaGRn8EBx+jBp2rzZEF1XUfz/h7cPlMn9bCXP0+XS1XiamXeb?=
 =?iso-8859-1?Q?+ozvjSdpo9Ws0gFlyItslAXCkOxCU4zZh2mU3HHMc7K4nMhkIGgK7ewHpu?=
 =?iso-8859-1?Q?a9PbKqqIz8pPwn5XJET0GpN53kbZiwPdiWrt7CI2hoQp05B2C9H7bPHmUb?=
 =?iso-8859-1?Q?dd39qNsqFPbAe5W319DcIYajdPiSajegef9sNs5QY8AMUf9iKvC03hlX1I?=
 =?iso-8859-1?Q?iiSWUfUyC4XnoI8Gv63G1005lDFVHA/3q5W+cUXoxR6JhTAPxsdVSmLbMT?=
 =?iso-8859-1?Q?JpaqWw0K/B2/sCq7j3xwsT7Lj+U/qhCFjGD5MJz0GkjdWGZ2AcwuGnLRnx?=
 =?iso-8859-1?Q?TEJ/fvjchK4oRk5cC410+qDYa7cUI9CTpHDzrNiZqjTva6afammVQe9O2/?=
 =?iso-8859-1?Q?RvXbCYaSSyJSGiEPG1bbdQ1aYexPltnkEm+Pd5dvyx9hNc49hlDuy3i8Y7?=
 =?iso-8859-1?Q?1ccMHK2MXGvp9Q1WiqEHHgTT3BxABRvsJgKjOh997otgJQMoJbpOjE0Jzf?=
 =?iso-8859-1?Q?/pDA3MKwswaqTtOzP+6sqb6l2NKZ8I/Ka5vb7i1cvoqHIzQlqJf5sEmKAo?=
 =?iso-8859-1?Q?Wng7pB6HJDsBEoWDQb1/eH2e5PefuK/vAB9Esv7wl1o9b1su3poW5UJiU9?=
 =?iso-8859-1?Q?E3OEQk4XwGJNJDm7bHZWhQpaYLXy6uAEEp9znfsKid23z5oTzUYV8HBYoj?=
 =?iso-8859-1?Q?CAsDGSvvfVMaNjjKlxiD6vqg8cuxj+XjC6/7X/92zpk8tUusIj+o2qu0Kc?=
 =?iso-8859-1?Q?6b6LxQzVKcQf3T5ITKLw/PYhrZF04YCfKaOAuj0y5XZP4WOHktqab0xNUi?=
 =?iso-8859-1?Q?YYBRTbIvpTVWbIKlqQEjVpXMlpogQSMIqEuihS6bbNIw80MLlwsiseUasY?=
 =?iso-8859-1?Q?hAmNtUUGTfqnhhtxqdbVUpAZtXRtEIUReQqNQu1c68su3tlqLstGEM8rZJ?=
 =?iso-8859-1?Q?WnxC+nn+k5Hsfer9iug5MUqA0HH5RwaTL5wpiUJTmw1x2TcFzFnLHezEzU?=
 =?iso-8859-1?Q?gY1uhSkFazNzyg4an4Y0+b71Z/mmkqx2I81fxB7doRwUaTpzZDVOGv/vCE?=
 =?iso-8859-1?Q?10bHJy1keVtPU0DMoNyArqtAyf9jkfC03uMgyx0xL4c5LiGxrYPgzruiHF?=
 =?iso-8859-1?Q?Swvt5p4b5R0XxV8Hd1n2uQHwVRgrMMF7EaQAolJWaNYb4OmKR4xXATEX7z?=
 =?iso-8859-1?Q?WRZIaW/o/B1YRloFL3xTUuL4WkEg9M04WYpOnJJ0luMJtx/UAeIbkSZ230?=
 =?iso-8859-1?Q?iutnz+q5xNZAKSfxkAvX0ne5hSApDhadDDAG7txx6mNWxsG51m48SHFR5o?=
 =?iso-8859-1?Q?o+b/IX68dVD4mZEeWdnzAU2EzcHs7x+eSM8WXeprTxgxObZntqfOjK1wdn?=
 =?iso-8859-1?Q?brrtADPCSlYrcF3NC9Ih6ck1selWN/ywx8Qj1Vke+OhlZR2AlAYX72db8P?=
 =?iso-8859-1?Q?Lp3bvW1Duadvz6d063pVJt/r4hmUoguPH3CaDdTuNW8wmTdM34g9sUFNNX?=
 =?iso-8859-1?Q?0A+z9IINklr9B5GR0P+rhuOitQtvaYJB6TamljQbskBuggmq7nlvc+Cu3s?=
 =?iso-8859-1?Q?+9v87oosUA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lZoWtt6blhkra2uJQ8HwCek2IVl/oQuVOf5AbI/szbOYwiVcuS2/SDezKTShyKOCKJJ6l8etL+jqpwpVE9p/IbQeBNci0cIFeUN8cKqisla7U/SsV8W7YRqJYn2voKkSAXBs/dKRySOjnNVHm5p5aL+LRwqRhT/3UT7jY/I2qHYWawlH/1BQXAJtbjGycypEQaRfSv+jwvDF/DWD6RPTjqcKyN8/amn9OoiB2wIkSNFiNn3hXvDdk9fPUutokAZ+3xdsiSqCnEB152VX8WxDDCjrPmqVyQIWZDcU0EiMjKqCdFIcKlXo4GzIO2MzFihUdSh4tlx+MrJdkz+ANOrQ4g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6f093e7-7c27-464b-a807-08de8f9bd394
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 03:07:36.5036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jhxs2P12cA0YwQ+IeRJ4qWkQ9tQO2P6L3jNnbN0dkvPy3dwWBsYjeE6+viIHAIpGn49kXnZMrJ3y4ZAbEvG46A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6918
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
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 535DD374221
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH] drm/i915/backlight: Remove try_vesa_interface
>=20
> On Tue, Feb 24, 2026 at 08:43:22AM +0530, Suraj Kandpal wrote:
> > Remove try_vesa_interface. This is because we now make VESA Interface
> > as a fallback mechanism for Panels which needs VESA DPCD AUX backlight
> > mechanism to work but have a broken VBT indicating otherwise.
> > While at in sneak in a small comment cleanup too.
>=20
> This broke the backlight on my VLV chromebook.
>=20
>  i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]]
> [CONNECTOR:98:eDP-1] Detected unsupported HDR backlight interface version
> 0
> +i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]]
> [CONNECTOR:98:eDP-1] AUX Backlight Control Supported!
> +i915 0000:00:02.0: [drm:intel_dp_aux_init_backlight_funcs [i915]]
> +[CONNECTOR:98:eDP-1] Using VESA eDP backlight controls
>  i915 0000:00:02.0: [drm:intel_panel_init [i915]] [CONNECTOR:98:eDP-1] DR=
RS
> type: none
> +i915 0000:00:02.0: [drm:drm_edp_backlight_init [drm_display_helper]]
> +AUX C/DP C: Found backlight: aux_set=3D1 aux_enable=3D0 mode=3D1
> +i915 0000:00:02.0: [drm:drm_edp_backlight_init [drm_display_helper]]
> +AUX C/DP C: Backlight caps: level=3D1023/1023 pwm_freq_pre_divider=3D0
> +lsb_reg_used=3D1
> +i915 0000:00:02.0: [drm:intel_dp_aux_vesa_setup_backlight [i915]]
> +[CONNECTOR:98:eDP-1] AUX VESA backlight enable is controlled through
> +PWM
> +i915 0000:00:02.0: [drm:intel_dp_aux_vesa_setup_backlight [i915]]
> +[CONNECTOR:98:eDP-1] AUX VESA backlight level is controlled through
> +DPCD
>  i915 0000:00:02.0: [drm:vlv_setup_backlight [i915]] [CONNECTOR:98:eDP-1]
> Using native PWM for backlight control (on pipe A)
> -i915 0000:00:02.0: [drm:intel_backlight_setup [i915]] [CONNECTOR:98:eDP-=
1]
> backlight initialized, enabled, brightness 7812/7812
> +i915 0000:00:02.0: [drm:intel_dp_aux_vesa_setup_backlight [i915]]
> +[CONNECTOR:98:eDP-1] Using AUX VESA interface for backlight control
> +i915 0000:00:02.0: [drm:intel_backlight_setup [i915]]
> +[CONNECTOR:98:eDP-1] backlight initialized, disabled, brightness
> +1023/1023

Hi Ville can you provide the full logs from boot with debug set to 0x10e an=
d also when you manipulate your backlight

I did have a commit that checks if vesa is actually possible because some p=
anels report vesa support even though they really cannot
0fb03890d182 drm/i915/backlight: Check if VESA backlight is possible

Also what would be the edp Panel model I can try replicate this issue local=
ly after I find a vlv machine

Regards,
Suraj Kandpal

>=20
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15679
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 19
> > +++++++------------
> >  1 file changed, 7 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index eb05ef4bd9f6..a8e9872566cd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -644,9 +644,10 @@ int intel_dp_aux_init_backlight_funcs(struct
> intel_connector *connector)
> >  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> >  	struct drm_device *dev =3D connector->base.dev;
> >  	struct intel_panel *panel =3D &connector->panel;
> > -	bool try_intel_interface =3D false, try_vesa_interface =3D false;
> > +	bool try_intel_interface =3D false;
> >
> > -	/* Check the VBT and user's module parameters to figure out which
> > +	/*
> > +	 * Check the VBT and user's module parameters to figure out which
> >  	 * interfaces to probe
> >  	 */
> >  	switch (display->params.enable_dpcd_backlight) { @@ -655,7 +656,6
> @@
> > int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector=
)
> >  	case INTEL_DP_AUX_BACKLIGHT_AUTO:
> >  		switch (panel->vbt.backlight.type) {
> >  		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
> > -			try_vesa_interface =3D true;
> >  			break;
> >  		case INTEL_BACKLIGHT_DISPLAY_DDI:
> >  			try_intel_interface =3D true;
> > @@ -668,20 +668,12 @@ int intel_dp_aux_init_backlight_funcs(struct
> intel_connector *connector)
> >  		if (panel->vbt.backlight.type !=3D
> INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
> >  			try_intel_interface =3D true;
> >
> > -		try_vesa_interface =3D true;
> > -		break;
> > -	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
> > -		try_vesa_interface =3D true;
> >  		break;
> >  	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
> >  		try_intel_interface =3D true;
> >  		break;
> >  	}
> >
> > -	/* For eDP 1.5 and above we are supposed to use VESA interface for
> brightness control */
> > -	if (intel_dp->edp_dpcd[0] >=3D DP_EDP_15)
> > -		try_vesa_interface =3D true;
> > -
> >  	/*
> >  	 * Since Intel has their own backlight control interface, the majorit=
y of
> machines out there
> >  	 * using DPCD backlight controls with Intel GPUs will be using this
> > interface as opposed to @@ -694,6 +686,9 @@ int
> intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
> >  	 * panel with Intel's OUI - which is also required for us to be able =
to
> detect Intel's
> >  	 * backlight interface at all. This means that the only sensible way =
for us
> to detect both
> >  	 * interfaces is to probe for Intel's first, and VESA's second.
> > +	 *
> > +	 * Also there is a chance some VBT's may advertise false Intel backli=
ght
> support even if the
> > +	 * tcon's DPCD says otherwise. This mean we keep VESA interface as
> fallback in that case.
> >  	 */
> >  	if (try_intel_interface &&
> intel_dp_aux_supports_hdr_backlight(connector) &&
> >  	    intel_dp->edp_dpcd[0] <=3D DP_EDP_14b) { @@ -703,7 +698,7 @@ int
> > intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
> >  		return 0;
> >  	}
> >
> > -	if (try_vesa_interface &&
> intel_dp_aux_supports_vesa_backlight(connector)) {
> > +	if (intel_dp_aux_supports_vesa_backlight(connector)) {
> >  		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP
> backlight controls\n",
> >  			    connector->base.base.id, connector->base.name);
> >  		panel->backlight.funcs =3D &intel_dp_vesa_bl_funcs;
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel

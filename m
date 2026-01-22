Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFgMEvDtcWlKZwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 10:29:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD886488F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 10:29:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B92A10E970;
	Thu, 22 Jan 2026 09:29:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SHi48qlX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D255610E972;
 Thu, 22 Jan 2026 09:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769074157; x=1800610157;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hC2eupRXxCuBv2qJp+JgAZDClTu/hnYxvMrJRpYwd7I=;
 b=SHi48qlXQwbUqhYcHduCquskVookSK0Nww1CctSFU1qtjDpeX4jdwWTH
 qZMPsOOINcqvIh0lNMx02/SUjCmw8qStPvpcpJwvzDo4sDGW/rf05+4Oa
 wbmZ+9ZdQydUMeY0WuKoFrAtJ1Um+IKNovd3P4x3CcvZWWwKoFJ6rfw5O
 axpQ6AzAqGpTHYTJc8ns6H/w7EkG7MrnTrEtAc34Pp+3SGTs3RQdCsTeW
 yv8tAxaA12SG2Ayw76KYSonqMCBqiesXXAp+PQttdVpP4toe2coGA5tVy
 jNsv9MRBoNSWFDc8QpWvybu27m4Ec22Q1ehbMt2rglEjP6wqD6q+mzjuu Q==;
X-CSE-ConnectionGUID: HTErzRXUQfOd7dvJNiiBDQ==
X-CSE-MsgGUID: NbzRMJflQeScp54JmKCUMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70403473"
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="70403473"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 01:29:16 -0800
X-CSE-ConnectionGUID: NxjLEYuySvah2c9eMKT0Zw==
X-CSE-MsgGUID: BqkfWA0yQ5upC2ADP/phjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="206501531"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 01:29:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 01:29:15 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 01:29:15 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.63)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 01:29:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w5D8mERF1fuPadqaQ/j1cVHskl/6Ko+g75BWFz1Oe0UCYyq7EpeQr28hYy1d98j0OTRfGcv2nUl/j9/Xf8jSEO86kdBjDQJz5dtLA9CekEVlwz8xNR52PHiE9jKwZSQx5Ua/nAqrnV2W8vocgPlD9KUe/owPvDlQ+DRTGNP0dJgT4x2FXD+HkXajVlCvdiHl/qIVr+pRcGr4wJC51vboIjWaIHJF9T6cV/dCQYVJYDtVtjUJRFR/NjqHecSi2QUBwnJ7823Vp9YTZwrLONcR1XbD+Zus8DOLl0+imc7V1FuSao99EpY7K941/tUrfL/xBCq6aJxdLfbyByxPJGpfIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mvQRSU6HpXwuO6opUo82fmZoC2shzNmI1XlFZCGn+0Q=;
 b=lW16/6JOoGSM4azc27crLF93Fj9qzC/qMveklySg+j5X9A2lGR+b0zJsJxF0amXTshk8MHjNXzbyj/wb+VObcEclVkAlfFvorBSMgEoNz3NJCe/THyZgoachs3HkNzmbTWWTZ9Knx2pKwwruIa6s5UUk8aMy0wYwQ2y7F/tth/N/KnNvah97SgpkzDk5L2KjYDmKsuragR6M2AVr/ed8U8YaOjvf6a95+TUo06jivl8p+8j/nqbgJFpx606MDCIEePPZqOZfoDilEZU8zzdZwihRSM1DqZwD8QTPo2sZKccYuXC0rRllwHpCALFSzCAs+aEQgN0difikD962mZrbVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by PH0PR11MB7493.namprd11.prod.outlook.com (2603:10b6:510:284::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 09:29:13 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd%6]) with mapi id 15.20.9542.009; Thu, 22 Jan 2026
 09:29:13 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Topic: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Index: AQHci1anE38WPdyKw0GS3exMmNK1m7Vdta6AgAA2dRA=
Date: Thu, 22 Jan 2026 09:29:13 +0000
Message-ID: <CY5PR11MB63445ED88DE77CB216D06F41B297A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20260122041133.757072-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260122041133.757072-2-mitulkumar.ajitkumar.golani@intel.com>
 <DM3PPF208195D8D1F01121C17C996F8727AE397A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D1F01121C17C996F8727AE397A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|PH0PR11MB7493:EE_
x-ms-office365-filtering-correlation-id: 907cc284-3c33-45b9-c11d-08de5998b4d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1v4NPC8RxWuyHv5RMLwwXKNjKYrvwsP2nR9MV7czkzoD1tUGxMz4iJ8XBLRa?=
 =?us-ascii?Q?esVD/es/CBXLGeMm6CR2csOQVaiclUCt7xuBuqdvO+ztm3SWKJVFlCrUEAta?=
 =?us-ascii?Q?QMrSNBBpq5uWcQnxQo9vra4EKyzhwmy9oYEGFIGcIesrwQHgYr+gRVitoXk9?=
 =?us-ascii?Q?Aqn73ADq/TQWUxbJwhmmApfyXMIqS22OhQIiPKlEcLiS8kAA7U6J0O114WwV?=
 =?us-ascii?Q?DK57Vlc38ZFO9nu5TZlbszCJQFs/M0fXgj2EhzHpoOXrKYr4UzPUQDd/o5H/?=
 =?us-ascii?Q?8FVRGu4DvGad5BDj9YRt57CrDK5t+Pnlf+M2yDf6VnX5VVXdWLB164T/Zd/T?=
 =?us-ascii?Q?s5TSmj0E00ndyJPPKDZX9FW4meDVoii7KrH/q8PRH6M+MrdpQSRlm7XPteDy?=
 =?us-ascii?Q?5fbt/9Rsx1s4GUQrJpdQYpPCxLCy6KZeAnNEK7dYVewsgT0xkQxAaZcPzlYM?=
 =?us-ascii?Q?JBbiRVl1yyN7aBdz85O2fqAEGJ8HGYkM2AwWJ0ETupjzvWewlb49Xd8011zs?=
 =?us-ascii?Q?IYwFcBtCq4mWckdi2IRptdvt8D1qxKzVLq8lee4WPphLdNEbwtUW1o9mRHZj?=
 =?us-ascii?Q?+nHlDzY3w+we6z0q1/YrtGfE6uY2FlSJJ+bEcryxuEbeeY2Jz94n8gYEqE9k?=
 =?us-ascii?Q?i83yceJHpa58sGOokYD/J6jnc+11D6HEG3O++X6xnNV4uvAVopTRUOd4Ctzx?=
 =?us-ascii?Q?F08EM4umTtG5lIma6jPQ3L8F2v9uktvQQNqCekH6QqLktWBux4dSfN7GFvfF?=
 =?us-ascii?Q?pDwSpGvFavjTRUFBJTKdIXgg0vtbjjGz5M/WuIrTcnEw7CIFXPmQ2KmJfOdq?=
 =?us-ascii?Q?1NdPBdzYFmwQD98LrLTyDgWcIiYQpm6SqtL+29BtAf9RjfDHWP6GXX0jN5H7?=
 =?us-ascii?Q?H7n3Lz4AUblLb2V/o4X/16jv7ckpcp1UOIyG6rIpWtQTcVivkEY2N/EWkpCb?=
 =?us-ascii?Q?kQf0viRfEgPJ87Bax/Dactz3DgbRrEJCI/C2weQWDTVnh8szZl3epYqAHFLT?=
 =?us-ascii?Q?ZWB/fhse7qLnc1zgeFenw+zz47kjnhK6lyusG0Pldt+3FWb0khw9on4LJZD6?=
 =?us-ascii?Q?V06fWWgWFhdhfOEktEfjJV6QDd86vCX/QyDHH06Fls9pP5yTDR3KWcDAQjtU?=
 =?us-ascii?Q?d06UXaijt/AqqsCTjxsXY2eZyzYmZJqFJGgnD07qglU6fHRA1NmFgdkfXjBf?=
 =?us-ascii?Q?hTwyOnRHPsVOfJDzd9oJ75QLpTBBZESEEnh2JQ6jlsyIINw4Ldx4i/ZLcDOJ?=
 =?us-ascii?Q?/cqYZEidTniVHkAhLTb3BEh6XImm1tBJyzHMMuPBFfgbniRQ5xDNNrVYW2S0?=
 =?us-ascii?Q?5onYaTgxwJUZ8CB5KX2wrNaA1NQogoSd1iCbohUXwq06LywfDzxzkYEI/23E?=
 =?us-ascii?Q?/q5PI2fm9PR+AvWDa15n+ht8iCi/eZCmgr/gSBsdtiBHPhqbuBJHMwYHQ4Q4?=
 =?us-ascii?Q?U24NlGr/hbfBtp/uxbkA0yFVXL5gJQgGRyXhda+ViaDWsrlhhXZlvCrbwVg9?=
 =?us-ascii?Q?1x0mtxOvhUPDSU6gjPmdCqh6VRvCURJLrXkQz9Jh18S2o8ut2LmXqnnaMfkD?=
 =?us-ascii?Q?9Lqsgr47C9o6GOqyEvvlqNdJuDX1dEiukS1TDuCFmnV0geu2xkEeXxjL2Gwz?=
 =?us-ascii?Q?GknGX3ycy0Sd3PVBjClWCcc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bOzSV29ff9CnxrQJgJvebsCrsfb8eL041OzBzEzlGMy8ulbyvGiwnkgS13t+?=
 =?us-ascii?Q?jlsHg7XAk3ArvHPrRPKvsjv3O2KB/GuSAcmKgQsgAYFTXy5DvScPnTnUTERg?=
 =?us-ascii?Q?lqoaxZJbwK/l1yCHBgNZZFxnn6o1igMeg1OM02BvZ3ob0Kb35pkrtJX2AbVK?=
 =?us-ascii?Q?f+lRuesudr6/RCHExbzzNDCiXrBLSPayoASNi++L8iw1MvQHTD7wIPI4FAcn?=
 =?us-ascii?Q?GyzULjRyrDqUkBGP9ddsQ2lNkDylBTxKl5SzG4FJMRCeurdJ4PViu4FC+sLy?=
 =?us-ascii?Q?MIhOjDqCbN+OOBTzkQUqqCGWc2LKUmyrhwYRzwdWQLgihZRjsUVk5N/kMLEr?=
 =?us-ascii?Q?XU81OgQ8tg4JZ808R5GkW/Oj/5qxVhMzbELXk7QWdzAmOtbu1baPWCJk/T55?=
 =?us-ascii?Q?xn3o61YcqmszbqpRSlarvFQq8x4qZ79+pR+lBrfdTHVcRyZs1BsbXAeybPku?=
 =?us-ascii?Q?gHwqYSYAw0NzUKFnYsI1/Q8MIMalMI0FgWRHzjS7h+1qHlrntsDRpn7tW/5K?=
 =?us-ascii?Q?sNHNykwZliq8JP1Yc/xeQI2GlUJpcPNRSBKW+7A2UII0QJYcbeIBgjtUDbB3?=
 =?us-ascii?Q?Mmkm8GHUs2QyuV+1vBKkTwkpsGYBZ7Z3Vv/QHMw53q6MJFlKAI7UY9IBk6vr?=
 =?us-ascii?Q?v1tP2bioHLJodu+VE4338xFulnLRBH5GLFR4tezAMwpJK1u3XR/VhAtEoNN1?=
 =?us-ascii?Q?6FN6u5YyTaBljnCm/VGnp4Z/clKfIoT3kMfRerb3bdTIB93K+v8D2qIV/yET?=
 =?us-ascii?Q?T0NCWBbA+gKrmfWNu7M34ZGzpJqHTVZ41Ohb9OoE18b2q8Dy0h3rsqhwNHZe?=
 =?us-ascii?Q?PwUwp8TwafbzWpIK/AB+41EipYasqmJE0GxdhPMMtu3PcYGYFve/rHwI/m9p?=
 =?us-ascii?Q?yngPGEP5E2nnrQaW4b8D/tMRdnGQsRWtt1/1zp8hssRS17PVqXAJi/9aclvW?=
 =?us-ascii?Q?y5FokOhpkHWTPJSphO/bE1F+DDq6PG3jS/UjbL9h6vQWAyN49NE5DwkhGLhI?=
 =?us-ascii?Q?HEEnorBP25ZLmzGXXYZWN3+PvQiqw3QGM+Ton4WHu3Smq7nvl13RcmWX/OxW?=
 =?us-ascii?Q?VJb2PmdinslqEO+b8qgeBRq9v+nPlCr7WDiu/oyUdrDd+3w+EQ9ZTdeKD8Eq?=
 =?us-ascii?Q?qYMkLdxO0iJv3VkbbgBtwrEgfMwYtDvLGBN2Zdm5qkoEsWpow1ZhL9AP5Byq?=
 =?us-ascii?Q?IbetdX90Qvi9HlCS2c15eLRveEZBRPIApt2fneAjrzsO0kMoLgXJ/KwraFXb?=
 =?us-ascii?Q?2GhZRjCNuToc4w3/C7rp/tSRcBLETHX66EvJGGCrpNJVwGtzz1VqXhNdu+iX?=
 =?us-ascii?Q?WXfpM8bge1ng3CkjDI/v41hFIRMj9U5IwpjYX8yi1mu/1uGjSkdZyfjObb4D?=
 =?us-ascii?Q?mJrw6I8XlXQ/+xnNmuVEi+9Xuk/+qfjAxlTbWa+z/6AmXYPqDM16WbTFSN95?=
 =?us-ascii?Q?5YGrgPvGQ2n5k+recwHUftAPWe2iIrpcKUdtpY9s+TjV36p+PMASi/Apll+l?=
 =?us-ascii?Q?iWgfPpWElA9mCNMK11VZ0ms26aHhLPXCb+v2ZKjVqi9cKdqsMmRdCwk+f5Up?=
 =?us-ascii?Q?aYEJ1Jc6+SoYe1Qg8mcKdp6JeWxYxKK6Rb8Vi1gap4I6P+8bInBT1p2LOGoQ?=
 =?us-ascii?Q?F6vGay1mVcm8vkPkBDKz1ikFM/t9lSPpc6hZV4g7bUKv7xIJHy/dl/IzSCJR?=
 =?us-ascii?Q?FatxoJDIuFMHAuz30V2lDWSOVg6Ar0NxxbdDF2gwyOgPHiEb8qdbwdGwKUUY?=
 =?us-ascii?Q?4B5ynhoj+3HLkooToSI9QTHKD/fgHlNpYcJvN5djbUMORVBdON9t?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 907cc284-3c33-45b9-c11d-08de5998b4d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 09:29:13.6175 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XclPBROlMRFyJ1sjsxgGPAPf0/QKJXFN8gteAG0PBVluIFH8dyEP+Mz3QCAlAbrH8b6ifquns6fBbn5Orl3uVGDJ4TyAJAn38KtOV8zEDNnMmrssI71TVJdW8TGkOzh8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7493
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,CY5PR11MB6344.namprd11.prod.outlook.com:mid];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: AFD886488F
X-Rspamd-Action: no action



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: 22 January 2026 11:43
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Subject: RE: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
>=20
> > Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>
> > Subject: [PATCH v1 1/1] drm/i915/display: Implement Wa_16024710867
> >
> > Reject PTL+ platforms in intel_ddi_port_sync_transcoders, As port sync
> > feature is deprecated from PTL onwards.
>=20
> Instean of using PTL  use official graphic display names XE3LPD here

Ok. I will update in next revision.
>=20
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index d8739e2bb004..be774c6d24e7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4588,8 +4588,11 @@ intel_ddi_port_sync_transcoders(const struct
> > intel_crtc_state *ref_crtc_state,
> >  	/*
> >  	 * We don't enable port sync on BDW due to missing w/as and
> >  	 * due to not having adjusted the modeset sequence appropriately.
> > +	 *
> > +	 * Wa_16024710867
> > +	 * "Deprecate port sync support for PTL+"
>=20
> No need for the ""'
> Same comment for PTL that I gave above
>=20
> >  	 */
> > -	if (DISPLAY_VER(display) < 9)
> > +	if (DISPLAY_VER(display) < 9 || DISPLAY_VER(display) >=3D 30)
>=20
> You need to use IS_DISPLAY_VER function  here

Ok. I will update in next revision.
>=20
> Regards,
> Suraj Kandpal
>=20
> >  		return 0;
> >
> >  	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
> > --
> > 2.48.1


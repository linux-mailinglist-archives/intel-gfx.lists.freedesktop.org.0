Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3940D55F4FD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 06:16:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4FCD10F3F7;
	Wed, 29 Jun 2022 04:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE80B10F3F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 04:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656476208; x=1688012208;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nEt+lKI0+RmY646oZ1Vg5/Sw3Z8vlZ3wOVQyzkIVRWQ=;
 b=Z5JsLo3Bq0O7lYwzs7UJVLY77WcPWeGDVfIcuBpKrOanpXGY9p9PufTK
 TiqxiABwsm+3bQEzKHw/+6Axh8JpOc0ABzs+pEKpsJE4P0lYHg9KUqasP
 nBwf8UY+IfNsqVTiOr+PPlFdsF2rTBiZOfbPUS5bDHCfkUZgtfHn87ntf
 gqBxRQVWRXn82LM9iOTq7uzn9XQSiGXYWFJ6xBp7t1KN1EexiKDXx7UiN
 n4VexEwHcH74sb58s6AEnsuEl8gLAJ8hkcPaW29aLXNZGIIvFXC6JjwuQ
 Von1YD6UFTNNNhATuoKiLxRoIsUoMHl8s8rI0UHfxj2I/QVX33aI4bZaN Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="281950964"
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="281950964"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 21:16:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="540714188"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2022 21:16:48 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 21:16:47 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 21:16:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 21:16:47 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 21:16:47 -0700
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MN2PR11MB3840.namprd11.prod.outlook.com (2603:10b6:208:ea::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.14; Wed, 29 Jun 2022 04:16:39 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5373.018; Wed, 29 Jun 2022
 04:16:39 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hajda, Andrzej" <andrzej.hajda@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, =?iso-8859-1?Q?Ville_Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/hpd: postpone HPD cancel work
 after last user suspension
Thread-Index: AQHYhx+7WMp7/YhG+Uy6Ol6I8r5X4a1lzieg
Date: Wed, 29 Jun 2022 04:16:39 +0000
Message-ID: <DM6PR11MB317759C35525CD97BF5865F5BABB9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220623163813.1990801-1-andrzej.hajda@intel.com>
 <20220623163813.1990801-2-andrzej.hajda@intel.com>
In-Reply-To: <20220623163813.1990801-2-andrzej.hajda@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a9cef0d0-ec98-49cc-2845-08da59862a37
x-ms-traffictypediagnostic: MN2PR11MB3840:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DqCXEY2wpfngBXo3ga7O9n7N5fLyeB4fE5KC9mL347VFAALsl0txpY5VwOPbF7mJm8kGRoLEjkGtF+t+IloPiLkZSLKVZCUAgtLo6C/ySAxcoNtrPqsbjBgFPdi2lmH6W4A/h3V6tGSimujEJRWb+hKh2sqpf+7q22WgXwO9xZAEolTMI1jXCDr7qEJTRhtOhrURqoaCDnvL1YXH2eJbJG8vYfwL9b/jLiWkdFAenRi/vZhN4YToe7WWImNSX/4a5tt1+jksjeGKKf110pYBI5Xa3QzK8yQsKu3B6d+Arhz42A5UG0d8KitfGVV+k0FDzkpCj8lDSUWHJa8I4Gh/dBVZB9cV8YOKQPWwJT9iMj4t4dIq1fNiMSdLzAHRmqv9fSLo1yDBEC+zSoC9xsWVxn6iW3ugS6MCVVOsphxZ/z+tJ9aTXPP4BrX4zIr+fk66MP7gewwWXt2oBwvZzCx9rpVKd1At4byeylJ5a6FUn5jw1xGXPyeQV9ei2CYJFiFwg4GcL6jl54yz+JXJOalGJa7Xd1VVS4zaSUME8F2L8Amo4bsRKFBcvgFizpU2yCg5nTRQnmq6YOtr7vlKj9LoO8u0giWe7nkViujwkwPdS+T2D/5NskF1fXUm+N1oPXgIS9l7mHiYF9GsZuEwbJT9TqulLyoAjXTMC0RLfS6kXtSsNUriI5qC6tJKs8APLUhtSXMcYmm8URpV3eL7I/q8g28f4kXGqufkgtiae4tCeuHtab5is6LHBJwxQQN93+zeNEAvzS8b4gu6dJFoccDDyaw4avQ//Vb+A/hMgnchVVg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(136003)(396003)(346002)(376002)(8936002)(52536014)(4744005)(7696005)(478600001)(5660300002)(55236004)(33656002)(6506007)(53546011)(2906002)(41300700001)(86362001)(82960400001)(26005)(9686003)(66946007)(54906003)(38100700002)(122000001)(186003)(66574015)(38070700005)(83380400001)(55016003)(8676002)(71200400001)(316002)(66476007)(64756008)(76116006)(66446008)(110136005)(4326008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?NoCjlEM0R0SKR/vrZzCQJ2bYQVVBAGKnGM6jGVoQjYNJi7TrnuHyLXgae0?=
 =?iso-8859-1?Q?PMZcOpOxI1b8CCtkfvwHTlBlQZydFmxRDDpLjXgxzuyl6iaJiu8JRhi0tA?=
 =?iso-8859-1?Q?vWdPAD3MtSXm0ZB1nSwVG4uYCPkuldOteDP13GNAB7USCqCIEESUvkweKV?=
 =?iso-8859-1?Q?gKDG+SPn4+iS6aDguGI5FYgfaBKoBHfZnOqzC4xxOQs0Mq3nI/mxfa3YaW?=
 =?iso-8859-1?Q?aWpvhkplqPPSIRCqsb6byMGIkPnAE6bFuti2PqSst7oWY43gtbyVxQm7mH?=
 =?iso-8859-1?Q?zMc6QTql+86jspzuv40/oIslfO0c93iy05b0Od7XgK2YfRacdasdVRPA8j?=
 =?iso-8859-1?Q?ycTqmBC9/9alrmnzTdIhob2Cjmvl6ES3WeqfRKrPORod3bCuK2fhD91EL+?=
 =?iso-8859-1?Q?FeBo3yablgRlK9c1cGTzjzFRXu2dqvFnIcA6ADGCveskcvAKUqdiIgbYtH?=
 =?iso-8859-1?Q?toYn+GWi0GaJ0J9waRciifwYbMcZjAWGzMtIFr5L2EfOnEG0OTFjQXP++g?=
 =?iso-8859-1?Q?11F+ONrq4y0wtEWjuB7JBCBSXrd+kSTmc3CI1OQE26BRK/l4Myi16+o41R?=
 =?iso-8859-1?Q?64CONxb7QvJKFcKk5E+C4W+hmICCgc5gZ+o9yX9sFkt44mVlxZ+u6uojMS?=
 =?iso-8859-1?Q?q0WvbVxDy4/KSqOcLeVd0RXEJ8+PLyUB8fiqw1753+qVXF/ZrqVFs4pgLi?=
 =?iso-8859-1?Q?cqB+Pmm0JTum8YOa5oiG31svJiQIffPzmu5fLh7uLSKRoDegKt3i3LzgTX?=
 =?iso-8859-1?Q?TNuFZwPOR56nbGOBHnX3J0Rse/8b3rKcEVRgQGV6/7r9I2NW00VcmwRl/F?=
 =?iso-8859-1?Q?+2lMQaK35lREF1LcPkuJTrzQ66WySPEHf32KvelloF+UXQDwJzwWiaPf/d?=
 =?iso-8859-1?Q?KtSsljvoka7Xkan1tfMQQ/eWubDv7WxYyrD2yYDMMU+ECdvvar6+pUeOln?=
 =?iso-8859-1?Q?nIrc6fFg+GLMjWchuZ0jShsRymiHeM8Y+Y3quqSgI+64YklWYrQ+5uB4zR?=
 =?iso-8859-1?Q?OwwGiymP5yCMgj/ke+1qmzuvhU6jlPYnJPiTZqOsI+MAjWez5nbQna0Yju?=
 =?iso-8859-1?Q?jmLVEN3ows6kufUdfR+bHoMGOI5zYTS7ikQQMm+AQfDYoN8jtsMp7wQ/MM?=
 =?iso-8859-1?Q?YpGONluuPOyT7PxVU+Ci4M8tPadinY/reYZKgfFL8jKuO68mQkmTKWVWUF?=
 =?iso-8859-1?Q?MZI41AWl5r3Qguz2N8mfnnsBfswSKJeditw0v67qPGJJBj1lPsUpbVksS6?=
 =?iso-8859-1?Q?aulAufYvXDXv2kZEUjvr1EnT0CNgdev9ML2HO9dzjxYb17DBq6l+8zSJ3e?=
 =?iso-8859-1?Q?2eXeLbR+JdfUdh/00nP2IcDAofTttCiqxSZXbBtoXDSSpKBmPNoruoOEEh?=
 =?iso-8859-1?Q?B456IG0jsQ3Uk0rYSspBopDm4LGWIDHGaQsQBvZpO4bR6lVBsHpQ3ipIyU?=
 =?iso-8859-1?Q?vaZwOgMkbVWjjvtE3swyOTNR31ocHcBoShTtiDt2Bs1c5hbx/QD5NZtf4v?=
 =?iso-8859-1?Q?O5UmKrVbnDuaGNfkUEGyFHa15GJlg8KmMG9BFgG9e3gaChXAbBpZiqKCyT?=
 =?iso-8859-1?Q?XJFufKCNwk1GQdIC5mU5DQIIR9fF06a3BaZALQ6M/MfdyoM+L2xoCwDWNa?=
 =?iso-8859-1?Q?2HzNyN+Irv+AVVZI25vkNjfxoU9ZqyM8Xv?=
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7euyjwBYUmC/LR2AWt4wpEMFgJNMRQo45nYhi62IPtkndNVfzWddllAt6VxxPv0PgeMv1YnBxJ8CAZi5XCQ41KlvUTAQThkKAfAZO+fyu0wfEKj4E7HGkD25NhSC0Azxq86Z9WeY/g9A+uZP1WZ0bwStcZSwI4WZnTZJ/ich/cWPgBIP1Nf7CyMLoW162WVSuVQHkVed3WBczTf2JLMORJg7wl4s5ebZfXY340mRlj0P5MKfN50ux5+dJJDFZCpN3n7GcOjGSOIggGUYm4nOb830DKDCzHWJ9JwyS76W2SuQLtGLymHal0fQxcDJwBw2E/AyuOoLJ+aQ9NlCwJo0g==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EiWap7Br+U6nJ+Qv27XASk4mIcZc16pkJZUKvovrOfs=;
 b=D12BSV9ijy31H+NzMVcDB3CRl90DdjI0mutQCE8KcxaU44gK7VGVwJUEtrePbuClDelnImuityisd1VrJVV4zBoi1lG1d/NjAlYYJVgReZHHWR9Vs0+3tVH+Aa2pvrwufuscPqnmugmHNHM3ZC8DwEMjHAOTfj3E05z9zMysorRldzz338c+27fpsAHt8N0QtnKJ7dm6koCPeid9rdmI+YO4v6DBXvsX/N3qVNNSrDw/ok8JIoKkzioB1DNkSlsd42Ot8CYlWrRjQaFCdBfoYmxhStE+ZIXJI+iOkpj+/dxGZLYb7sHUStWwxl9ce/IwG78h+NVORoInREc8kf31fw==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: DM6PR11MB3177.namprd11.prod.outlook.com
x-ms-exchange-crosstenant-network-message-id: a9cef0d0-ec98-49cc-2845-08da59862a37
x-ms-exchange-crosstenant-originalarrivaltime: 29 Jun 2022 04:16:39.4469 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: mdEYHlBftM7QiaJyTxTStfwKOuWEIvPO41ssE0JPxAElDfLkPQLvHVb8BtzaQfem8SvxzTKEHFyyDHgsjBRx7g==
x-ms-exchange-transport-crosstenantheadersstamped: MN2PR11MB3840
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hpd: postpone HPD cancel work
 after last user suspension
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Hajda,
 Andrzej" <andrzej.hajda@intel.com>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Andrzej Hajda
> Sent: Thursday, June 23, 2022 10:08 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>; Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com>
> Cc: Hajda, Andrzej <andrzej.hajda@intel.com>; intel-
> gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>
> Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hpd: postpone HPD cancel work
> after last user suspension
>
> i915->hotplug.dig_port_work can be queued from intel_hpd_irq_handler
> called by IRQ handler or by intel_hpd_trigger_irq called from dp_mst.
> To avoid re-queuing lets cancel HPD work after intel_dp_mst_suspend.
>
It is not re-queuing!
I Would rather put it as, a cleaner approach is to flush the hpd work on
suspend.

With the above said changes included, you can have
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

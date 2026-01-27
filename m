Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDBuOx6JeGmqqwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 10:45:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1D891F37
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 10:45:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E7E10E048;
	Tue, 27 Jan 2026 09:45:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AbSfCQ9C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32D0588735;
 Tue, 27 Jan 2026 09:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769507099; x=1801043099;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ow6iyyCmkqjptNUYeBCmhKqOWchAuyDIB+n9JM1J1lo=;
 b=AbSfCQ9CjarYiddnoAlkZF2PUqr5piERvw/ZOKw2wo+2TuilsI7yy+UJ
 /lp1qdl/odutbrwhvDzQFs+vJB+LVEh0yvTta63E3e1gYtBmIFx61dzSv
 fkvGa8QGDWpYxeDVD0DA+cCKqb31LYjRvj1/Vnzb+A+SxWboisT4N6Oc6
 cuejKRQ6M12dJ40yBSLcpaLNTxXo/HuYIq1Hjybfg1GXXRBi+faZRN8fA
 z4Y5gm/h3r66QvofVoD5cZbR0ytumIz3NHcZDJLufVGyLoFajz/bp1nL4
 6cXQMahWfhPaYhp86HRkkMi4yePHUjJ9H23UGXfz+Uo2Qe0z8/8e5HXPV Q==;
X-CSE-ConnectionGUID: 7RmbyQUhRM6oDFl6/f9+vA==
X-CSE-MsgGUID: NWs1Z5UpQhyoPl6meO4I4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70416882"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="70416882"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 01:44:57 -0800
X-CSE-ConnectionGUID: bOpuKzsYTpm/WD9jLApwRQ==
X-CSE-MsgGUID: 36tCumZoTf+dECLPevs6xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="212909147"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 01:44:56 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 01:44:55 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 01:44:55 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 01:44:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OV18VDBooC++VoDN66CSEsWVIt5M0/kT5bjXuvfmqVDxz7N/mDok2VvrZz2PYDWxqGEHUGQ2dMoAHLDsOqh2XMtRGmbhIZG30DwSR4SCxwf2gBLqtozdqNORnPVstld1Z/WMMdWEwY00a5/HWq4ZoTDTACWm8M4O7ezHWXpsYyd7+Xc59wH+r0IXwd8PfuG65+7XMr1ZMk+Ga9Z90dds5AU8UNreJLew67QnX+MpVkdaQTwb8cl/hKxqk8lO8SLXJpINKvq3gGwr1m1YVtlai258InkpCHhVMlgJqW84CZqVhnAU/CpBL/l460iefqYFwsK2H1KIbDhNUmcwj7RFhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MBkWHLiP6dIsA8oN/2rX+L2tSLHKPfEZnoC8ELSqwe0=;
 b=X5MCGuh79fyLF3oAcU9sJUrIc8DCU8WC1B1eE8qotZ2XsavKLavkwfUo4nF8uFYgORhUZf83RElhOAYXlQX4jcqNARzGiAoNUFSabR9X5UWp1cEADJf8aViS+X62m5gqNxxzE5433yKZiqHUiTKmUsf/21EPNGNxjwpy+407pLjn1+NcX/85PufUUHsTx4DA1qOU4ntmsu6/VcgcqPbPcZeLH7CQlGfAPG6scG2duggofBjINvdN/TqNlvuZ6nPjxKADtH/RqeN8ljGfJL5hBe4pHNNg0iv8TKU//RbhdMMXB71qRS83bNg/PBZT/PAmaTw8khpN1Lh/IOY7/ITNlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH7PR11MB6475.namprd11.prod.outlook.com (2603:10b6:510:1f1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Tue, 27 Jan
 2026 09:44:46 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 09:44:46 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH v2 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Topic: [PATCH v2 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Index: AQHcj2KPJwl83CFP9EefKgQHwWvMLLVlvWxA
Date: Tue, 27 Jan 2026 09:44:46 +0000
Message-ID: <IA1PR11MB64677E81F84F83BAE617A7D9E390A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260127074644.991015-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260127074644.991015-2-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20260127074644.991015-2-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH7PR11MB6475:EE_
x-ms-office365-filtering-correlation-id: 6464539f-9f03-4797-1dcd-08de5d88b4df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?6sJxtKmmFxVrMEb7+CMsenYwedem0vYNSlX0h2R4H6+J+O6pyTSoP/tYrd/R?=
 =?us-ascii?Q?uOR/RRMdDEPQ8xU1yVbwEF/VF/3Zf9/Vd0jZhtmL6yz8k1h3ON4P/gFqY3gK?=
 =?us-ascii?Q?AKefab4tusH1JrGY6qSJ+IcU0s2e2f8b4Qtpu9Duf3k3Wru5gBgmDECrAM5k?=
 =?us-ascii?Q?EPF4/GPSyXRGc+Z7d81aJMTHvahpYZIWg+bEd/XTR9Vffb3DQvFXsbFuOFsb?=
 =?us-ascii?Q?Wza7b4UbwWj3Wv6aAh6+VdvNlfUKoFLXXT5RIlV8dacNtQA/EsQUbB652Xv4?=
 =?us-ascii?Q?NHMEwUvWQBn7R8iq/BpyVWekbFcjFIjHG92pkCBDAS12cyKw5YwluFZC0HT6?=
 =?us-ascii?Q?6cAVsQtIcf9JGKnxHv7vjU7nYdPoO64aR7Ga5AWjHl/gg6kN/Zv1Bq6cWVvk?=
 =?us-ascii?Q?7DFLuIC+huwRGVAnL/hIGEjWaTXcG1HSpbcEHcCCv9Mda/ZA8JWpoMhHt0aJ?=
 =?us-ascii?Q?eUzAlYsZ5NgCnG9amTVNL3m3fuJFINoFijH9PPbFGIKe3iCRIeC4I7f3wuvS?=
 =?us-ascii?Q?zYqK99VA9GQ31vNA0/84jRfVFqTZt9yH0XBW4i6IRPrKdydrsnZrHUr1cRB0?=
 =?us-ascii?Q?u6lXjUGSLTfsb8cM0pvSWv1JvuF6/X/qOS5N4ia+fL/JkMefjEJ2gGwr2TN8?=
 =?us-ascii?Q?uwh5jHLTxmo+mJq1cAtnd+q50OgItwDWHY41qBd+aFU12sxdAyezAug9/3LN?=
 =?us-ascii?Q?qGaBCdim1DC3IETV+PE7X12DLYu2/UKz64GbRILrEDuQeCIasjZbzBe7XQp/?=
 =?us-ascii?Q?8wOC22nSFFLDtTT9jOnlHSUvmwu9VC0ycNIDuJCoHdcHMfK1D3HXOIAQiZDz?=
 =?us-ascii?Q?rkQz2mIMjAgFZjNBhIsJOcHsxNyCc+mKr4ZtjsvhAHfYV3dXWtUJ+p5k368C?=
 =?us-ascii?Q?AGKCh+HxAVqOAFeHyguHInIUp4CXzztb8ea9ieUZDlHHJ3ECFM3Q5RbKgcT+?=
 =?us-ascii?Q?sGdFu/jexHZZs6qbKSusSrVDVd6Lc0USgpAhnmJuIqm0jStla5mZtrLs+SLo?=
 =?us-ascii?Q?ZmyLz59eX7+ngArQ5PzfrxfcxQzXcxLAkPJ5kuSpk9CwOn9GYeUjRdpcwkGS?=
 =?us-ascii?Q?RCfAGMTfNGPNnpqNLvFhIQS0TzubwETsyawcI0OtBfuv7hVHKnkQXM4UUa9S?=
 =?us-ascii?Q?2bITzIu4LJHLnyOv242JDAv1+cCjAnTa47OZGCLyy4agi/TbSe8jPOHoBWx4?=
 =?us-ascii?Q?vyfLkyujneC+kOr3nccB1xxTurNNLszKzmbBa8AeKq3PuajGw0I0WFQFVp7s?=
 =?us-ascii?Q?NAegsMdMteCb/eTytWnKVJjSl3itqTu0Qqvwk39tNnPX4zDaBxwj8PUZpTE7?=
 =?us-ascii?Q?44uYIYOc6NaAPSQ+ACU/JKISmmCUWufc4pY1TGfIgeaGVun61GBd+f5ADPTl?=
 =?us-ascii?Q?5oI1/nJ5lFZgyUV07KBE4LpVbopwzGpwOXwWhtC9tWqr77jrbofJqs2F2ajl?=
 =?us-ascii?Q?rQVoT+4DHrlIVMBmnL38DqZYGpBG5P+25twR8xOSYPUvrlU8GAteEVgb9dYp?=
 =?us-ascii?Q?W3/KuFj8uoEpz4ugQgctbrsY6IwmDLagJ6b9zYwC0qRvxHGQxfnWKZ+nWMkE?=
 =?us-ascii?Q?hnNa2M5rXxxLCBFj29W4bdlqJr4qWmT7D6B4OUvrw/xOPEaCWuqupTPe4WFH?=
 =?us-ascii?Q?0exa4nK25klvNqArvwS6eKQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cZ5H55XROeOP5M+1NfMYq3fE9eXkjCPjQWlGL4O3bbPYffZUk+Vjx9qw1jVa?=
 =?us-ascii?Q?E8gO81MRUqXT/R2prCoY3S6E/YKSAy2qpXBHOkxM1WBub6RdoKzY0F3bp1jL?=
 =?us-ascii?Q?emGyFvFyJlXYyp3CP6a28rqIqj1zddJ/ks5J1uBaRIw3r9IgqnrojHgU32jv?=
 =?us-ascii?Q?HmK8QqXjnRAYn8d+IIu44ygf2lG+QvO/nLQqH4DJzsRkI+/NLgTNogaX4Elg?=
 =?us-ascii?Q?opDtQdGE24izB0p0BDTFal+oo59eTGGdwmCXug5sxyL8MYWyTgL6fETh2Lti?=
 =?us-ascii?Q?H4oG8m3n6QJT+7O9F8czuNoUmwbKRQC1s0G0kgZkQoUZM9vDC9oPFWlWUQFG?=
 =?us-ascii?Q?mXkyU8OXv6/K/vXQQdr5aZtDItxhar2X1SgLgRYwxewLP8w3qxgZzU/lJv5T?=
 =?us-ascii?Q?emqDEA8sFaZEoAuQzmrW/CqSPq+nh2xuTIRGFYfLSJXFx2tQMVljrWrm4+5v?=
 =?us-ascii?Q?aTWsUgcguKtDi8cGnb01rCBGpLyQsj8rCkx6XZ2KtA/qsns5ylH88Z1XA1Zo?=
 =?us-ascii?Q?fwJN8YF2KGgBxIJbD4RJ3PePVZMiK8y4E9vV2nK59/YbjEJqUK272cDDcgL+?=
 =?us-ascii?Q?EQmaCDtxicCroGeCR0EVxsXCbPAjyTtFc0zbMuK1eaZ9NbR1l82rhSQOGYTT?=
 =?us-ascii?Q?w3VQmf3xpJ0jZ8PRkiCiszoX7DLl/OJkpDa9YqIay4+2voFBgOBJRMsp31+X?=
 =?us-ascii?Q?73vGgP6uYDIpe2A3ryBk5N0jMI5D+fCHwkTmFi+zIzh7r68EZyxf/EZbLago?=
 =?us-ascii?Q?GJJ0wgDpALBAh+BfS1ZyFcOaeA08vM9wdWlcY/Nx2OiMxmxZMG9ljgExn2dy?=
 =?us-ascii?Q?MSqNkdSk4HDjrqYdQz/AQyggFyMhpmXz4DO75omCLeJt+qkS/TWOKczTFahs?=
 =?us-ascii?Q?/Nc7Ny7Ufu+e/bUOXorcFjwOKq2vgZRId09Eu3qEn67f6ILXWTI0OuHhndBr?=
 =?us-ascii?Q?Piuk5GlvCpx9HGUf/EluSFfkrlySzZkkhKDOhCcIKJFgl/8o3hf1+QdjGY9v?=
 =?us-ascii?Q?MbzCeOUD275oa5gZcC3TC3RscIFzi+bFKyOOoTBv2QjjCy9QdK/ggRDh6aHR?=
 =?us-ascii?Q?dky7mhrgK3LKOMcS4KPILiN2TMDKu6HdsVPitB/HRWKcSFBqzShI+oD2heWo?=
 =?us-ascii?Q?pAxXhnlog+pfHQUKfg2cwGskkx9eDhfxSZxb2QWPVGytw/W+zBSX9gCNVpur?=
 =?us-ascii?Q?tvvCgYq7RzDugt5gvzvoz6OqNkO7X89T6zjvLyuovoEJ+p7AyRO7qiVAANP8?=
 =?us-ascii?Q?claKytGOPaJk2WI1u2X/XlIJRJnJsSGLHJ5+HLf7/3GLJ33CodFI9MzlYwto?=
 =?us-ascii?Q?sHoNmsb/NU+XQdHIaE/sSEUOiQzICSzTfexzk6sQ5ftj/9fThs8r1JJKQv+4?=
 =?us-ascii?Q?JVR+eeElFIvgnaSx/u0otqCbRQxcAGXo+OB/wnw4Q1GRSCEYrfv2wOEmx4h/?=
 =?us-ascii?Q?RvYubUz8PYaMbZV2mOPyNPcn69vCxAsoQeGUx4bgFQM3CdAohAbXcgHpnDHK?=
 =?us-ascii?Q?NnMIVY8AnlAUwIxk6Z/EaJIc1bmOqE246lW3A2knnnoFH3Ovc71olp3JaWoT?=
 =?us-ascii?Q?5T80fFG2TJiE/nGaN+w8IDAGRkkvbUPWXn4DKVHb4x744xIB5zCeu35sYlvp?=
 =?us-ascii?Q?9H9JPe9R6GAM/WvX5KONLR8Kkz8bhAiGbszo3LUqs+EJiDuEVQ7Gj2LtmiEk?=
 =?us-ascii?Q?7xIHn5darsxKUyBrpEX0zmFxpVzwzMNykkdhn7/6IsQaXuiC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6464539f-9f03-4797-1dcd-08de5d88b4df
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2026 09:44:46.4543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ERQD1AkINM5e3noL7W6u5fOjEf2zfIisC4MrNUxouscObuyc5mKkQeIXBg+dEp+zHCfeK4iAgj8sYMVTBw4Zlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6475
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,IA1PR11MB6467.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3F1D891F37
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Tuesday, January 27, 2026 1:17 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH v2 1/1] drm/i915/display: Implement Wa_16024710867
>=20
> Defeature port sync feature for xe3lpd onwards.
>=20
> --v1:
> - Use xe3lpd naming (Suraj)
> - Use IS_DISPLAY_VER (Suraj)
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d8739e2bb004..a3e6f9a31b20 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4588,8 +4588,11 @@ intel_ddi_port_sync_transcoders(const struct
> intel_crtc_state *ref_crtc_state,
>  	/*
>  	 * We don't enable port sync on BDW due to missing w/as and
>  	 * due to not having adjusted the modeset sequence appropriately.
> +	 *
> +	 * Wa_16024710867
> +	 * Deprecate port sync support for xe3lpd+
>  	 */
> -	if (DISPLAY_VER(display) < 9)
> +	if (!IS_DISPLAY_VER(display, 9, 20))
>  		return 0;
>=20
I guess instead of 20 it should be 30.

Regards,
Nemesa
>  	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
> --
> 2.48.1


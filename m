Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4071C9A729
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2D110E04D;
	Tue,  2 Dec 2025 07:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OGQCaYIs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A3610E04D;
 Tue,  2 Dec 2025 07:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764660630; x=1796196630;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3aNmwaekXai62PNjrGWy2DgeLf/OSxP5NaD/lQTsh/E=;
 b=OGQCaYIsvN5Y2Y0BWWzr4+HJCJxjFXxxUyhzgnpyqhvkNsmMMoumurJY
 mK/qN17n9JTkjFsw4p/pxSeN+haKv46TTscIyONbeqkSRTwUK16dNgJ9C
 8nouKf9prTUWLB7J2ZYaA2fVW3/lavCxV11EEOGegvHHzKis6lAwqgBMl
 xARpJDx+UTw7Yr4gDmun55JcFcCdjLKYFbzM6B5QQr5iVrw8aAqgs5FyC
 Aq5rLQazBsqzd6JbFRMZ+dmreU1tO4YI57NDzEutCKsblkAsn/OUYP13o
 zgDP4ka0xITBfZ/mgi4TwbaPu96hxZEywprlGkpa8Zy0gUNxWJmx08BbJ Q==;
X-CSE-ConnectionGUID: JY31keHFSfq2jncpUJoX+g==
X-CSE-MsgGUID: dGrm4+s2RMWCCU2MP19wuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="66330470"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="66330470"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:30:29 -0800
X-CSE-ConnectionGUID: DcSyL6/zRpOCdGRv+XmHUA==
X-CSE-MsgGUID: 22lI6wVES3avAwcV5BFB6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="194131381"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:30:29 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 23:30:28 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 23:30:28 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.33) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 23:30:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FjKAtlwknDwKIninLsTvGBUVrl/lTBGNGrcxN+uRjlZEeIQBNupxIjBLvhaS7lGROBvOLOFxgUWH/YlYJMqhomlUD4bp93RyoNqjIlly1zT/BT9CRhlbEJ7NlO6lcV98ROZMOjN52F+3wpCqSN4ixaY79Hohst0omYUV4x30QukLEHnpQSKm8D+l7zmEVcEffy9WT4+Ov9KqPxyUwxzXQ+Jp6IPpMnDM+0tw+3SfqhX3V4lbQIP0fZrPaTJMiU+nO0ZH8gbUgh3WGfWnnk4LSZxMudVyrodk/JJucBPV1dUQ9un2jzSs3LbGSQXVpHRkrhBTHOxq2Uczd+fEfSX5tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sB8KOL7GqRkgIXUOqqjUHfENNayqa8UV/ke5qUVj9CU=;
 b=l2W9UPus59GHY47XBcbr0OY2C5AaeFDd0xCOOciEbTsEeExcHYXiOxul3tQKQpZSVoV+XPcmsTo3YcRhIOEyP2AXBR8SxDbuyUo+sDy28M09Hzyl9hoi0Z+sx5L1pdShyLAsaLKEw08IGAGCppXg0/6owVmG+UyKenb63Zct/6226g2zim3wyyhW6U4NWImnDa9oK/NTOP1ZG+O7zuIOjK9BJtke5Qgq++ljCmXNp+LudklcYB5v42OZnGa2eXP07VtRCA9uidP4tHcopFi9oPDhL7H0PXKdjoJeamUCkPsWd16q1KnBrT+S7J8foUx7bFw36Ya0AIPq2bl3pHS3dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MN0PR11MB6231.namprd11.prod.outlook.com (2603:10b6:208:3c4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 07:30:20 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.9388.003; Tue, 2 Dec 2025
 07:30:20 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v9 04/17] drm/i915/vrr: Add functions to read out
 vmin/vmax stuff
Thread-Topic: [PATCH v9 04/17] drm/i915/vrr: Add functions to read out
 vmin/vmax stuff
Thread-Index: AQHcX355ZPrH9FR40EOk6PTs5BVH8LUGV92AgAekBKA=
Date: Tue, 2 Dec 2025 07:30:20 +0000
Message-ID: <IA1PR11MB6348880FA5F62BDAE81FFAE5B2D8A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-5-mitulkumar.ajitkumar.golani@intel.com>
 <d29a343c252eac169e5c98f8d2105979cb33f72a@intel.com>
In-Reply-To: <d29a343c252eac169e5c98f8d2105979cb33f72a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MN0PR11MB6231:EE_
x-ms-office365-filtering-correlation-id: 5a4c392d-cbab-4bb0-fc7f-08de3174a642
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?3+Vh89s+/5055+6NWKC/7w8WPX6vsc7I7oC+KKvMDImK7qVUnuG/Mr1oKaG7?=
 =?us-ascii?Q?ObqzcHmbULngq8KzmFN+Z8x/VNfXp02YeKRYOO/vmDxdpF/f6koh3vMppW/o?=
 =?us-ascii?Q?gqk2t7ek16/9LVhRpzsejU6/IdZ/ZmhJmMZhjEW9io6J/mnGH6MEqKrxy2OD?=
 =?us-ascii?Q?rPt26FkADuqeiAUw19GIKYg0O72k1zEVYJYGYffT2trhqM3iQyQPICYj7wN3?=
 =?us-ascii?Q?kYFZzf5QQxgDiermYbYKWWYpHybVc8RC499wSdsCSU5GPIUkxbYzlva5Nek8?=
 =?us-ascii?Q?Bu4X1Qv/bk2MHKhq0QZuzqwiNchYnbqd+O1pTD7keSn4g84O8NN83/+NxVKG?=
 =?us-ascii?Q?D/m2aPcDvmGhqofgd83vE1jH8XkauFw7+/qxAv/+thtgrQRjEnop20yTpNqF?=
 =?us-ascii?Q?i3mbPVqlciRWWJO5s7jUIVLWIT1Ze+2UzgbjPcWcmuq1yxrXAfDIx2mM5JGD?=
 =?us-ascii?Q?M9SGZVdfwtJD6r7FQp3NYyIjpjsbw1G79NcsjIjJ/wsibn6HA0I0BSe/HbBj?=
 =?us-ascii?Q?rhJmxlY5O46dluzhdo2W0OBjbAlKBLUSoTlOaQaJ+1sXoYQNYdzcTf/SnYWB?=
 =?us-ascii?Q?MOnz6TWR4J7gdX4m/o1L59MNqQ7ZTQDBcqsoOPbZOKUucsGWgdAYQTgF9hKO?=
 =?us-ascii?Q?4rdq7mOHrO2Y5Pa4o9cZU5+LUwNYCz1aREtoQ5o2HULRDktdaemaopFvlrOK?=
 =?us-ascii?Q?j16wIWAIRSvQjlO3ECokLutiEtgSEsyHNFof3tzQPl9KCmu1MepxEF+sGC/g?=
 =?us-ascii?Q?NUTrtWjA+qZftiQptSiDy8uq+qjV5S6aq9TxkYVTo4FO7RlI61wZp3anwXFI?=
 =?us-ascii?Q?l5E+nCNp4GbVJOrziczjvyuBJLngXuh7YHnlcyfVbm5XFtOUPsjwXdJQeqBb?=
 =?us-ascii?Q?Yr7/MrFpxefemMpPZYmEdCW0Gl15I71f7LXJiQ/ayKi3yIKtbOzAg5qc01kv?=
 =?us-ascii?Q?q2uieYsnLVAyMWHqYBFgENeHns3dUSXBjJC5j32YsNkImOuZF3urPmgO8Nxv?=
 =?us-ascii?Q?mTDLWo3oTBMgEMahnGCZFH0b7Lxf7XopbxftlqnCyWyzsPb3AdD5la1vi4Gz?=
 =?us-ascii?Q?0rBayA6EBdEDKSD+j4ow+wAm5UHx1haUXp5VxqfWYWh5jfegJDz1/pGcc1rZ?=
 =?us-ascii?Q?6KAKoR9UJCNic4VyWsckvLX4Lf0zfsNkwV8L4pHkM0V4Ik2X9Z89r/dOltqT?=
 =?us-ascii?Q?hzkdQ2CQlVALDikx3haT8gDas5hq839fel9UhIFgRuPKJKbxUab0bvlTF7pW?=
 =?us-ascii?Q?vFv7wNHMSIg/01NFLHtq+zdVaWaqKRJtEGy/BHFuiWyttaHbyuQYLsXYaTf9?=
 =?us-ascii?Q?6WtAoGLrr8j4F4R0p0xlo6nheOUB+mvJWQofHOSctdGuPKI2SJ8GUgqyyJGM?=
 =?us-ascii?Q?AQl68UvskswOryNH2lWu3W2yXFa6dzz3JK1vK/dW6I6cLcM8SqC6i340Uwyu?=
 =?us-ascii?Q?y9M/+mAtAOKdW/vySGlMGTjSSrbvL90JCqgh6kYM0e1WKdqNaV3Hn9/ZeGCw?=
 =?us-ascii?Q?3hNT03iXLX783a1yw6+FRYs1diQCQC34xTUZ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HIsRAqFK54fssf9oy2q8ikiKmFMHJz5isxpwK1kczOGMxU8Io/MQPmOfdBzx?=
 =?us-ascii?Q?YkNOrRb/3fI1hHrxA0Aj1MLZHZ86v5eNOk1RrCiVIQDm3/yxL2KjSHewrpbs?=
 =?us-ascii?Q?XgpUaRoCWev2BbSojSiAxzZ2ZkVEpjFshZ0uqzS+x+niv0gdn470W3P92TXX?=
 =?us-ascii?Q?6hO8JbZCoFhvDiywZ7A1VDwXlNMhETsUf/ICFfAeNkL4m1nvf2/un4okoRhF?=
 =?us-ascii?Q?SJaTEtUeh/0nK7X/kUu7ZA612JnfWAmILDvsUFn4lPJhAfIPVs0u1gHxcja+?=
 =?us-ascii?Q?Hs1CtMZt1k3Jy0zWYT4SYeMFp1eX1Aetk6yxoRos/nzV8ro4c08vFTX9UIFe?=
 =?us-ascii?Q?EA0IMT0JD02GB6x7mWgAMmLa12a8UZNfk1efOVmtTwWEdqk19gTxO/6+C+W6?=
 =?us-ascii?Q?F7dgI/EE0bhwKrM3AkdNn6y57YZVH952pFpNmmtxl5GYmuu1kcvKxG0ftPDO?=
 =?us-ascii?Q?79t7o1lgMqP6b83OV8/bJNRCd4xtWO0S8y2h/X5h8f0KXzWJuu5gOH15JkCH?=
 =?us-ascii?Q?BMX0e8sm8N1af/X7FgWyK5tCkeBvFllEHp1K5znDkxfY2LmK5Vfkwqw5jabv?=
 =?us-ascii?Q?6wwmgRnAtT2ANILfQ+LWC5IaOhVmRDtNaQsGd2veMLMQhZhJrP2TwTAmJm6p?=
 =?us-ascii?Q?tGFWxiGDRrXXGZsqgsjJGn7FBjmqSnW5woGI57A4inqEsyc/nWCoXaDL/ivN?=
 =?us-ascii?Q?zeliIpgJAWzvZFbcbIVwCTUUrHqKsCL/vCo6XfbN/BWdktYsPW328JwOoxJj?=
 =?us-ascii?Q?gXrAivpI9Zlkm6f0+0TtrLMspv0Z/WlEuF4c41HFE8ncKjBCQDf1VRnYnYve?=
 =?us-ascii?Q?MurZYMYFbWiaDekirI4MZW4VmLWoXm6Akq9/JW23b/KD9eoA9A7HEd+vyI8C?=
 =?us-ascii?Q?hoC/zX1QQquJaf3FhpSMdPlIKYSGdvCWrQJ2kZ89oFMdL6xhuEPR2m0Fk8yN?=
 =?us-ascii?Q?wc526KjW1mKXXhAeVzvId3m2Ext4LGI7SkST8K6ZxoCp+F1Jkq3fhZOofbIz?=
 =?us-ascii?Q?cmqgYGYdqdG4jqSNDDKdoEc492ER0rA+sh+fNi2K8wDQhU06RnbC96HKxNyf?=
 =?us-ascii?Q?244Am2CceVaQ7XoYf+PkOVq/qfxiZRypNtbRlLuNN5FAgQ3cHNCrIq5flrdI?=
 =?us-ascii?Q?y6eyoZK62Je8zV55h+MvJK08aPjaMGtx51vcttRSAGDUZROd5+oDgNsicg4C?=
 =?us-ascii?Q?xKMqxpILbJb3LlfQGgHOUSqreAwmAOoAk3kl4ye8taaScDtIV4QlfsMonEFR?=
 =?us-ascii?Q?z50zqukwg+Ey1YBMuedh+bmI5mqpxocKhxGZhiOMYDQQbUkGV9Zl44/uYdKd?=
 =?us-ascii?Q?awLCNPSRnDxjrTkaWV5w0XumWg16VwH3QyNMML46su/aLE0cQOaZO5iiuiuo?=
 =?us-ascii?Q?4L/+tJjX9/JivnlMFkxUviUDkUVHGDKxqJDTHYt/MVbg7fIiDVSA064q9vIk?=
 =?us-ascii?Q?OmBWURyrMz7SvisJ0y+eaI8Yq6pRF4BfQimRpceMfusk5G0YgCuHtIC57gG9?=
 =?us-ascii?Q?XxqofFxH4fPmLDMcjTqOUnCE8UTApSIBLhcmVEkLygxHstCVO+Dk8WhTlfbW?=
 =?us-ascii?Q?3k8j0LfE2mv6NzR2oPmUbxXXunCs/7IOqtVxgfR3ZUVopP7SiN90uImSYtoi?=
 =?us-ascii?Q?y115VLry6WzauCYZgu6Yc70=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a4c392d-cbab-4bb0-fc7f-08de3174a642
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2025 07:30:20.8325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nw9j27l2jLfrG0Y23Xs3A+uc6oqifXE54LlkgZqyq4DMX1OUfNwKIkSYH5OijF8i7T/UJuU4LbVYRxG9AyTXfsbO0mjQ9nCiRtjqPeXAiXTmQ5TyjG5c0VcFJC1l1A6v
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6231
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 27 November 2025 16:19
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; ville.syrjala@linux.intel.com
> Subject: Re: [PATCH v9 04/17] drm/i915/vrr: Add functions to read out
> vmin/vmax stuff
>=20
> On Thu, 27 Nov 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > +int intel_vrr_dcb_vmin_vblank_start_next(const struct
> > +intel_crtc_state *crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +	u32 tmp =3D 0;
> > +
> > +	tmp =3D intel_de_read(display,
> > +TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder));
> > +
> > +	if (REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_CNT_MASK, tmp) =3D=3D 0)
> > +		return -1;
>=20
> My pet peeve, using magic -1 as a negative error code.

Understood. I will add appropriate error code instead returning -1.

Thanks
>=20
>=20
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel

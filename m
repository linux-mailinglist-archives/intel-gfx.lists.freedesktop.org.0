Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5993B8AE17A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 11:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B02310FC91;
	Tue, 23 Apr 2024 09:56:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZE9CDAoE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E40E10FC91
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 09:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713866177; x=1745402177;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MMtEMC5T6hXXgX7u0Pf4qWNMyY/3DtD6vYk2/fRkRCg=;
 b=ZE9CDAoEUAS0ydF5CUfsffjro/gBaYDUVDJISZ2jrJhGMlPF4fyLXmWc
 4UqACLJwuQ4opWWRHJ+4IDDLsM9JdOD+fePpMtG4paRiowVBaQmnutRD/
 Fuw0Fi18MQSm1KmWOdtIei/ONgT0lqUOPUFFlWzuMNi8AJ4bJPGariP2W
 uh5WjxHsGg/Bq57EA0Up8pr18iKYE8PJhyrHaO5DoAnIC+m/OF1R77YmJ
 m0GdOrAU+90Osm1tPX7PzXO0ZrXpN3iusI2bkehcuWbEHqxK4TOHcibuJ
 SjeJN9Gqa1C+fKdeimYNzQ9Ohs+sZvc8ewLpzxj7yT2MAlTA1zHfRLM8u Q==;
X-CSE-ConnectionGUID: ngyyEufjQ76Qc5eDZdBR0w==
X-CSE-MsgGUID: GztJmJ/xRW+Nawq74aPg9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="13226903"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="13226903"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 02:56:11 -0700
X-CSE-ConnectionGUID: hD2UOgr/TAuHudaDwX49kA==
X-CSE-MsgGUID: m91zJrpcTz2xa1J5FzSb9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="28987433"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Apr 2024 02:56:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Apr 2024 02:56:09 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Apr 2024 02:56:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Apr 2024 02:56:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Apr 2024 02:56:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S9ZL9ej7012sMh18YeZX9Vsh10wcM6zvAkEimBzVGsYnivsLPiJp4zHV2b2F5rdS3RLb1Mf5gOE5L6vk+fsB4nNNZHNX4oi7hrOu1Pkzcy+gKEXESHrGiWyEG46PhsF0QEcFFFtLs0zdLRNJhAr0T3yHWEMe+SkYUSUthCRgAOdMKX/3KY+ZzDT+8417QehMlmMk89vO9l+GIsmq41/6XoldtQmprJq+CMtD5crThSWiJOoexrTphh/tyP45RRIpdM4QpVmF86mlJmqQLTKnWIBSeWNnYnswPxcuFWJXSlelxK+38iU0aPGm4Z0nfhW9sDgxSsNaX9uuIN3cDHb8Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5pRa7WeF0n6ksIzrg774uPMcp7vWzoE8jq890WMKjX8=;
 b=OMOc4A5cvsNlc++SWJxfjVy7PuSFyW0dD+fODR3XkiW0xR29zI27DcbfESN5qSL1bgUWwBx3+xtBY12L7N7bjbEuXcKvh4qR9nWp1jHYvKNrWkzI7ylEOcGdv3xUD5cMhaFwM5MibxfznTSuKOkQj+dLFcVcoMvscjl4ys5RaV9agEkIrW85DYA3lCzyuyNAWuTXh02iwKCIgny4t3SOB4SV6jAZfcf253VCYSi6Dmuh67tfo2Svy3FiBZVqPB6cw6FZpXeNqHSBvrykgHfhtxk4zs1EewaOu3X4N8a1GUmP3hCVm7jOTG+TtNq2o9qF3UzABtlOSyJewmq/pQl3yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH3PR11MB8468.namprd11.prod.outlook.com (2603:10b6:610:1ba::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Tue, 23 Apr
 2024 09:56:06 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.7519.018; Tue, 23 Apr 2024
 09:56:06 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Topic: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Index: AQHaj7CKM2mu2nAdLUK5mFlLuLWS+LFqi2EAgAGwCYCACWwfEA==
Date: Tue, 23 Apr 2024 09:56:05 +0000
Message-ID: <SJ1PR11MB6129D4DA3CB75426762ED392B9112@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240416080917.625155-2-suraj.kandpal@intel.com>
 <20240417095537.632977-2-suraj.kandpal@intel.com>
In-Reply-To: <20240417095537.632977-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CH3PR11MB8468:EE_
x-ms-office365-filtering-correlation-id: 74e19fe2-cc34-4d30-0699-08dc637b97e3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?f1UT0fUFBMXtWgiMYpm0DBupwrc508j7th3DxswKmWdva0DQt8EePlM/vBSX?=
 =?us-ascii?Q?s0pPcbtuU6N931kNJX5sQWpiZShaFVUf24BB6fHT1xk3pdA6HvQBV+WLgHZ9?=
 =?us-ascii?Q?zFhbpE9a1pmsRqFDnalBlU6i1ljMxGWpwtEOaP9Po18wkpNSCEZGy1dcr8uG?=
 =?us-ascii?Q?J2+GCHGrrtN3gUNxG0uwbd9vvMoeiN7/V39kOg+S+UxQ7N25eh7VH6VWtzji?=
 =?us-ascii?Q?FZrNvOVIGU+nGqSZUVwOqMmMzg8noaqEyF1ZjEv1j9xQWKzuJSsDvUq6AAsH?=
 =?us-ascii?Q?58mLXpIsoyyy9eYchYUg9FL0rkS5+2dhVkcogJUr9CSTua4Xd9WIW2pFqjeG?=
 =?us-ascii?Q?On4gQpBJ18dyXTwGm0Es+T7Mm860sB6LSY+YRrD8dGkd82yEhmrLYA+JCqXl?=
 =?us-ascii?Q?gPjRS+qBv2swFIjyLWVgOBzeIYt+oHNPwGzqUSXImVAC3TAhbFulxPqwNS70?=
 =?us-ascii?Q?1Rwp01Ov0rWFBX+E0jqZnrwhXjemB5pdQTtTuUsO3T3CLOI1PfW9BQ203Xvv?=
 =?us-ascii?Q?69MePh4BYlS8WoE2Vvn1ZfXcKaXCx/sJ3U1hsaIQ1LkJO0hlAXU5M50wO9LP?=
 =?us-ascii?Q?qoi9e8B+dRAKdsCzxgyiLQZClGQzdqCW2IspKUK3YXvOPggu5V4TZ7GxY32A?=
 =?us-ascii?Q?BAJ5jhWmat0IRXVyKxYdDxg8EQTty8To3II7p0IVA87a+utvYJVPWONaT1kq?=
 =?us-ascii?Q?EkWBCenvjgLp8R+FEn94tglk/q8G6HrwWA7eFjaPZ0PWprtA2CYMsVOoO+mA?=
 =?us-ascii?Q?psXGT77BDMrrVSd/bMThSUDb8n0AN1fTiVisefgF64mujmpdP2nkPySa6Sqh?=
 =?us-ascii?Q?dqmuccizUTW07qIIYZRsFLylo30BhbEhtXmohX4/SZ07fnN6FAF/wWiSEIML?=
 =?us-ascii?Q?rU2Ght+dVgdidG8S187oEpPdlaCSMSYwiBpoI146a8VYkvxKq9YJfGMb+o0v?=
 =?us-ascii?Q?+WC1jMKiSu72pNYRSIA1BsDklQQZyreqzbm+/b5r9BpC3N32E2vzuOnACwM+?=
 =?us-ascii?Q?iVrnwahs8UV6YbpQcjMDEEGZgR9Q/tK65Pnz51k+jJbMABfA/7EAy+DanAD7?=
 =?us-ascii?Q?klwXZmj+5EYqknL1ylLSnfRdeVwBN1KWF+fBUBbBLWe2vABNhv1xhLI3TLtZ?=
 =?us-ascii?Q?65iWYb2K3p3y/3qHF2N5vsPHl7ufoTpU/CjRneoWEiczfNyDM9YXNkaw4D2A?=
 =?us-ascii?Q?AyPmeUjt5E+a1ChII2Jm2n7g53k78TeBq6DcvUZPfE4XZNLPy1vLXV9fDtH+?=
 =?us-ascii?Q?7SadQIKD2PRqum1haule3FDA5O7KV9RSxvAZ+8W7ayVaaDEV/vXDS1tPdHKe?=
 =?us-ascii?Q?+qPgylsd5AluxhVKg0B3fRhpg08b9PyrU3j//DiygJktnw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NzHA2007QuYEwHGOtxtZojlhWhHiZlTBiVQQPPoqOmF98Fdz5K2UW6zGYTOG?=
 =?us-ascii?Q?rkXjZzKa/eGoVXNNq9Zst9/iUX3FqqA0wFYQkQ1DS+GUYGGOMyDMgxRiQXFv?=
 =?us-ascii?Q?klmr8yHNzRa4iwCDJcXNuFTe+1rZHLw12yb5fCDsdEoopItfcJi0CCikL1gV?=
 =?us-ascii?Q?OngEccpxKtuBGWBuDVhU94E77c8YWTzNG/SUvEYPyLdwrgwQOcxGzgfe3fle?=
 =?us-ascii?Q?wlzziHg/XGIy65ZDCAlLrq6Tjd+wPepB838m/eSrifQFSI3ReLOm/kxf+a9o?=
 =?us-ascii?Q?FX04aOmjclsIOeplIf9QCrkZm5cNgsPaQSQdTBTbJ4GTtsq4M+3KTZMirFIK?=
 =?us-ascii?Q?iBgfatg+XZeeDaCdxjaOkt4gP9s71tuvkny59UZAXPtDW9TfIgSy1CCcfs5S?=
 =?us-ascii?Q?2CPzd6JB7yjq6hG36+NMeo4I+PICdv9pRN2AdlhLr8Hu2oM4Vy0AHorsaLpG?=
 =?us-ascii?Q?Mr3GN+4hzGi/Jgz4VEem0YpwkA+F4OR0et2N162rTfIU10keiLfPRa0V0plb?=
 =?us-ascii?Q?zFaajB3gOCcVlBeP9WINtEIyFwx9xwaOaf+owf79nHHjNtPEbWyvotmRjv1B?=
 =?us-ascii?Q?+Xd/QJp/aW41zMDtV+kLBBzAvf93oqKMI3V+iA4wDq6m97DulN9MEtBjInWx?=
 =?us-ascii?Q?JyfMiSaXMXjFZWLX0MVYTu5LtccgX5anhxQ0Bqe5oyMKm+99Dm2xKJ5MHRGf?=
 =?us-ascii?Q?GyMc5kdK+H7SJm/2w+7wR1EwocgnaondfVIsBXwT4H/eTLEkfEF8SDSXVZY5?=
 =?us-ascii?Q?GkiFUxd1vYsla/eS8cYrdG4mb/3x7xktP8ZQzIxir3WKBXqJMoTNCDs22H0T?=
 =?us-ascii?Q?60zbi5uc+qEgsa2iQnbNoYvW3FgfQPz5ca+fadoPsC9nlb5XB8Z/jh+u9jvg?=
 =?us-ascii?Q?XdluNRxEZjt9BFGhVeiiA28WzKJ4IgnkAsfjglyTqtb+DSdyE5F+C25lR35X?=
 =?us-ascii?Q?yZFV0G4fjZbgDZaM13dXbb85RwX+EYgfZZsEwpzjOODnetQZ2mu9N6OJalf+?=
 =?us-ascii?Q?RmBZiT0H/LGeh/JwP08y407cVRVhMhGP/K6trCtSIs8uVjlH1TP61BNDkQqo?=
 =?us-ascii?Q?dATZIjeMae3xtw29Vy78S5gsBdbo3rg6ZmWRtzEA/qMf6kaVWuoWT+9+dTI/?=
 =?us-ascii?Q?46ybcUcNWH8bA94sr2b1DGu+nwuZI/oVURhtBrtpSldyN30zgRsJeK105zMe?=
 =?us-ascii?Q?IHMFML0EISlNeXXDlJj0n9zoI+ZcKawiYVzLJasNFBOdtRTOOp1k2Ywdr9my?=
 =?us-ascii?Q?V2ZPkxQ7YC0DqdXfsqUFCZd8jE2czycuZvAN40nX4em/00xqY/Nbm9bYmw4C?=
 =?us-ascii?Q?dF5WoZe0q//bjQ142bIOnC2AIGS+d2+siWaZMlFRNiAs6h8RVYpzEa7iok05?=
 =?us-ascii?Q?S0ohrr46J5xWgopkH23b6nak23KD3DcSyPIP9G5m6q3IxNQWu6RIsETeRZ5E?=
 =?us-ascii?Q?JdvtxjiARQ79/6gCgGSVk0xAYWJIzv/gD9pTvVJl1djpfBfYHQwQ5ggqA2kM?=
 =?us-ascii?Q?2VO5QAnHLnJk0rs+wYrwVSlbnwO0rjTo3xpwhk2/VU3aAHznoKKNMUi9IDcx?=
 =?us-ascii?Q?238CTwU8s6LkMU4tHX2CuGNfP8fIHyCOau2ccgyEo1vL7BESmX5cG5Rlj7WE?=
 =?us-ascii?Q?HA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74e19fe2-cc34-4d30-0699-08dc637b97e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 09:56:05.9982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ujld61KGtz+IJTudagwb3avnGjJXaEFUTIWGRfLSdtGmAYas/eIh7i0UuvqiONmj45L9sOjeU11WgJ9Obtn1Jp8QZC8vvBemrNpwK6lJulM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8468
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

Hello Suraj,

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, April 17, 2024 3:26 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Nikula, Jani <jani.nikula@intel.com>; Kandp=
al,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
> HDMI
>=20
> Disable HDCP Line Rekeying when HDCP ver > 1.4 and when we are on HDMI
> TMDS operation for DISPLAY_VER >=3D 14.
>=20
> --v2
> -Wa to be mentioned in comments not in commit message [Jani] -Remove
> blankline [Jani]
>=20
> --v3
> -No need to write what is being done in comments when code is self
> explanatory [Jani]
>=20
> Bspec: 49273
> Bspec: 69964
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h           |  1 +
>  2 files changed, 18 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index d5ed4c7dfbc0..78b20f23a2e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,6 +30,21 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>=20
> +/* WA: 16022217614 */
> +static void
> +intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> +				      struct intel_hdcp *hdcp)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
> +	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
> +		return;

(Nit) Though we can't do much here for non-TMDS HDMI, we can keep a comment=
 so that if such support is added in future, there is a hint to make the ch=
ange.

> +
> +	if (DISPLAY_VER(dev_priv) >=3D 14)
> +		intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp-
> >cpu_transcoder),

This register seems to differ for MTL and BMG. Kindly re-check.

Regards

Chaitanya

> +			     TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 1); }
> +
>  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>  			      struct intel_connector *connector)  { @@ -2005,6
> +2020,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *stat=
e,
>  		    connector->base.base.id, connector->base.name,
>  		    hdcp->content_type);
>=20
> +	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
> +

>  	ret =3D hdcp2_authenticate_and_encrypt(state, connector);
>  	if (ret) {
>  		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed.
> (%d)\n", diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 3f34efcd7d6c..fbf4623cd536 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5630,6 +5630,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
>  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
>  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11,
> 10)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
>  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK,
> trans)
> --
> 2.43.2


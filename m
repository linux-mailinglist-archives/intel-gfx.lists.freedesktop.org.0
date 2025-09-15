Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E07A5B5828E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 18:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9D210E50C;
	Mon, 15 Sep 2025 16:51:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qx23BWuz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A404F10E50C
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 16:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757955095; x=1789491095;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sPZ9MkrSyD98g7gwkna1AExqXIRvot/q17ONaMZgzso=;
 b=Qx23BWuz+K0fvNkH+PNrdavUSWibcsJXXUD8tqiGTDIbjkMhCXknLQiK
 KuIt/3+GuqfzvPEwLCPGdyJc5xq8o0Cdz91IBVCO+XuaCd6+dWIakqRis
 E1d0APb6FuFx07iSTuil3Dq3AaeOtzUrFgg6pHzkjz2GB5NQzLrnBDSXV
 FNoM1CTW0RkyerUdhmfAeo8hxNxh7xjtV49w37wc0pmAq58dv8/fbpq5u
 YzodQG+3wRTOmGeeosj9BJndZaQqsWmv7vN++lE4tM0w6pqAxCOQYu3TK
 lD0CJQCtkC7Cj+iROKZ6V/YAqzwbxA1NDp019rhxwZt0HGgG3UGoZWQKx A==;
X-CSE-ConnectionGUID: DSMnW6/OTdaWUD91w/Kh0w==
X-CSE-MsgGUID: MXZ/rFTIQxWQW+DY389xuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="70901439"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="70901439"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 09:51:34 -0700
X-CSE-ConnectionGUID: njjgCkinRAeOufmRv5CC0Q==
X-CSE-MsgGUID: LCKuGfGxQLmF3mSuwaGDuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="174769333"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 09:51:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 09:51:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 09:51:32 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.54) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 09:51:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yDedQdsj2577rkba1jTVUkoBfCxgMrT1VqtpuoMv85rkHqcMcViyxnRy05na8QqlswMzGUc8/t8yp+o+Ei/t55ORFIs0SR98L+JHyXhIRdvInmRHmFpHdKmIs3de5fNFlm+g4plOrhRhIngZKglCHhssZLhP/KlXDMxvXlnXTe1GQ8sqaLO+ic8ci20SqMcJQ615OyW0l0/bff6W9JDaoD34CWk+U/FfTIzsBEarwiW7RqkkJa3ydwOaZ0ehWBcLyRjKE/jW1pa0rAmfrbe8mQnRTFR2HK6cEQzOG+1BZV474F43Eg77Mm7WJtXJ8+0suRafze1/Z9hw7MlrRcOSkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f9hu/wHG740LbjF8c5wt5QDOHB2VyAYhrL2vbkkwRIc=;
 b=XNHJnDAcbrYukF6z0rc1WDqeJuUJO9BNK4jkBZumvd0yW8GlN1CMgJsSNGYfAFQirDFBgPsAYrBfIj8wd8cpZJBt1x3TKxNxv2CA1ytWQm5QhjJrfJaOouZ3g2t7vqAycUDGfIrQEXUIqrvxZG1Wfag4O9mZtoeFUbJZp+xqmaqtKQFdwEaN0EBJw0jLgKrtuCAGx+VVYft/bbw6P7+7HQZMqjYdeZOGo/aBxFLs3CY4GmEhviKX36hwzMlMqG3GveZpP/ZBd7tHxvLkhgzOX5SEKf4plch6t9keD4gccQosSaI3MzlR31BcElcsj0vbZwMntitxzBq+744MSPMhBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM6PR11MB4706.namprd11.prod.outlook.com (2603:10b6:5:2a5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.21; Mon, 15 Sep
 2025 16:51:29 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%3]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 16:51:29 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Gupta, saurabhg"
 <saurabhg.gupta@intel.com>, "Zuo, Alex" <alex.zuo@intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/display: Simplify modular operations with vtotal
Thread-Topic: [PATCH] drm/i915/display: Simplify modular operations with vtotal
Thread-Index: AQHcIzJG+nLPCZG8XU+LA98NK/0P9bSPP6cAgABV0mCAABhpAIAEqwJggAAIRICAAADrYIAAAzYAgAAV8xA=
Date: Mon, 15 Sep 2025 16:51:29 +0000
Message-ID: <CH0PR11MB54446E93E7377E31F3434A05E515A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250911153921.9038-2-jonathan.cavitt@intel.com>
 <e696008aa8675e2ff33f478b3ff47032c8c7ae36@intel.com>
 <CH0PR11MB5444919A7E9C4CF1A430672CE508A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <aMQ8iKlCbT5dlYQm@intel.com>
 <CH0PR11MB5444745443F2BBB579122BD1E515A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <aMgt6ZwVR2DcyO9u@intel.com>
 <CH0PR11MB54442CEC556F80FF85FDE19CE515A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <aMgxYLU0zygLGG-n@intel.com>
In-Reply-To: <aMgxYLU0zygLGG-n@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM6PR11MB4706:EE_
x-ms-office365-filtering-correlation-id: 63d90c5f-b1c5-4dea-19bd-08ddf4781e36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?1reMj++bzHVRVgnlnamt5++B246LARX5i2PfUoCytrfKro9oBvqz/Mn/Kw?=
 =?iso-8859-1?Q?ahyrzPHv+Hy/gW3megoBbAAqvF7APTDhtu0Zoib4qHP1vcwl6l0lP14tJH?=
 =?iso-8859-1?Q?THHpo+OsIBfRucieQjFFz7XjMBgyBvXIu6JHo3dte/UCIxDV2c20AmRdNx?=
 =?iso-8859-1?Q?aVZ2GdgjZfKPvtZjUdKnXCaoekSCO9b9ru9ZQDvwwyAvOcxuNlBsxa65lV?=
 =?iso-8859-1?Q?jgrEPE3o/hjAM7AMS6t3oMFM4UwVED6ku3mglLdyaT+5+y+yT7V3qSO0QN?=
 =?iso-8859-1?Q?9RZNmP2//gRiBJIDjkRF1QQdU2Hh4fHZOIQvntDsXIOHugMkwYMmxnB+HS?=
 =?iso-8859-1?Q?q6BsoV4IUUuo0LEKCbMAKXDSbjwCT9vtxdeBO8xYL+wajNHTkpKYX7HTF5?=
 =?iso-8859-1?Q?x2jSNrJaWtoq9xtGXn0egfI5+uHP+hVjqF7nQ942cFUxqOt1iYW45ybI/Y?=
 =?iso-8859-1?Q?wmVkWf0ivFrQnvePmsLrDJH3t3ZJs6h5+aq5wzPgrpAsVuhXFeb6DUIQ+z?=
 =?iso-8859-1?Q?EMO3n8+iirtg0q1ZwWwshLcpFoyjgHMiHzod/TxdWa9Sk+bJ9NBgLgT+oX?=
 =?iso-8859-1?Q?hW4zGiSkJKiE3ObR19NCAEanC3S2cLlwd3SdbsB2lfWGOgvXl1VMkblpL0?=
 =?iso-8859-1?Q?c2gAjViko87distpXhrIOo16a0QQCjQ1wTxHNdGaoNBTYry6BJVv0O6CnB?=
 =?iso-8859-1?Q?kdRRJWNtfKeGJfS6oA6x7UqPnlHs6HxjzCAiCAJqhTZhUOeCiCtdieGCTM?=
 =?iso-8859-1?Q?wRXpikhA/5+RU7pu2YhZCPsCO33ktU201bst73d0Lp0SCXIgYm6q0r+DBs?=
 =?iso-8859-1?Q?wVXm92lFR+9dTblmZ2c72+hoAh0/0h0SgGfV38CtH4alzZXiRdf4usu0kW?=
 =?iso-8859-1?Q?yiTe3I6Lo6HquCxQCveR5MQpAWPPdjIbgTOShOEBA34jX+0GfAFc55+b19?=
 =?iso-8859-1?Q?zQiIIeTaSg7s361o9gjSOiwTgLJISuesqDHLWRk2OUS2VNiQ+IQyr19lgb?=
 =?iso-8859-1?Q?4hIzPhWOp4afWrVaIGizarWVY323vd/873hoPFdXKr8Pl7tBIaoCR+LaLZ?=
 =?iso-8859-1?Q?YEp7p+CI5wVrGjYhpIvND1yxBwpHpYbO+yh67283AMAqHC61I8pLoyzA9x?=
 =?iso-8859-1?Q?naVyPor57HpaJkhXoFz/9iemDOngmX5maQoCnODwLyIGiXwIYvQlFQ1jP/?=
 =?iso-8859-1?Q?GIcHk5jjd2zjLwGh8r8qiwFr6P/3hKF/t+VT9jRHn2dj0YwJzKkdKw75gk?=
 =?iso-8859-1?Q?6zsulcBHZQ2tcflKk2dl99I8l3TFGZ9oQdGMEN7Mz2fR72WDeiRPVWjz32?=
 =?iso-8859-1?Q?OgYCYkCHBE5jjFI/gtlXvhmS+SaPZvu3rb+2NEXX+5zktruqkh/sgYuk7C?=
 =?iso-8859-1?Q?rtI77cFjhDR1BOg4nZPiISAf4PQOFysUzYhlTyh+C4RY99NUyUemOROy6c?=
 =?iso-8859-1?Q?C1tMV4Pr4izFnC1VXmnmu5/A06+p8rny7U93FjzbHKOkybzMuuJFmgX0Kh?=
 =?iso-8859-1?Q?nqw8zC9G4DboF1Es/xYEwPLVjDDsjn7fYAoljszfEgqX93hDrfKGhbOmxg?=
 =?iso-8859-1?Q?s3haxL0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?3BTabFPjDOJG6zDyZPUexA4ECKm9Nh1Xne7j7Mx7iUiNl/Ju64pLQzIx+H?=
 =?iso-8859-1?Q?Pg3vm4KN4z4F1tbkXXa72U0hO9enZOjQ1agaldcfNAo2zPn+g/5OL7BD+x?=
 =?iso-8859-1?Q?85Mq5hzbyS7cHu/90tYpOyduNiPOXBV2spdwaWA3/1K9YBQzxLkGmW2BJo?=
 =?iso-8859-1?Q?AsrqJThbbMFUHow8/LIvjPEdR6Jf1+9drOUfpNQeMIEdsPMOqn+oXsGhZj?=
 =?iso-8859-1?Q?j/wUemmCVv6to9GfUxGNip3gMd7qdiPJiqouiClclpOxzi3ogjyn03SqcX?=
 =?iso-8859-1?Q?C0HlglpT1KL9p6YkOFQBFnBSuiFL7xTFYiteH9younOzt4zMVPSYpVoZBq?=
 =?iso-8859-1?Q?76xljCdEYeGCAiAVCfmUGkdaeongJB0RiYpUq2YL80S99O4zX6lS6ll6y4?=
 =?iso-8859-1?Q?gMXrA86hiVG2OJdvWyveRVJwKgFx9n8H+c39aBj2ifqaRJU2Wixdrig31J?=
 =?iso-8859-1?Q?nI/QebP6y58n3410VgSf77A8tIDViWB/PJS8yppOj78PBWm8b5ecp61CJp?=
 =?iso-8859-1?Q?0qhiNsxkknhHMnaN6hUgvjr03hTDVp2k0vyWwp+eyDI61Penck9SaQRLt7?=
 =?iso-8859-1?Q?okOOdA9LEs/yDC1u/dqk3++CiorKX7KPBUNVeYaYgft8IdyQHVLdu+TE4b?=
 =?iso-8859-1?Q?mwbZOQMm5uR3QoNG51xOoIATlAKnAXAlzkgftmOX5a5dlDX8ebs+ATNOZQ?=
 =?iso-8859-1?Q?c2tz2vjGqoLGDdH1ixtI94VXH8ZaoGna9mywDrtHOySGO8jAHh4Xwl7T+M?=
 =?iso-8859-1?Q?NguDWh+PYGfHOnmmMNa6jUkThOG4BBiSiu0ZgipeT8O4PT3/wfYBlUMni3?=
 =?iso-8859-1?Q?iAsLL6IjQM/5vYjgNUZbJmOPvL4JZW2lsA0/43h2LxDe2AynAYcQx2fNMH?=
 =?iso-8859-1?Q?XVSbPO3/VEpIbxFP8eUu4ryB+pNGgwMJRxpugq0yuNZ5Mz4LrnWemaNh1G?=
 =?iso-8859-1?Q?1dpKbfcCrldfpHAoRZWjpOocnvtseGZM2MDWxFrOmDRKU/Cf5DyhVoOVir?=
 =?iso-8859-1?Q?O8Ybal4BNFK/MzJ7eVeOCM4rF0Lu8rH0BEtkBi+sWTJZLdX+zAakOZ8BCy?=
 =?iso-8859-1?Q?3vcH5nqBSPThxBZVM5JscFYcevC1KoxKVFFE3y6utu5TQDCkeTuASb7evF?=
 =?iso-8859-1?Q?YVXQIognOytwRdANkiq17xVVomvH4Mqv0Bxy0rQId3w7M12tmKclOtdKli?=
 =?iso-8859-1?Q?S7qATpPi3xmic6i7WWJ3TbUkfH3e84yo2d95jiur69ol/2pZaIliRZPYmO?=
 =?iso-8859-1?Q?MJJKPfm+agH0oJn15LiyoDZOzwArSLmVPO2LGHCDLmfqdfHfXRIMwxC+Qy?=
 =?iso-8859-1?Q?Y33dDvXR7zfjGDe0V3nD4qstuT+2HiGxVGVKnihxQCVPONGxwxCTIAq01X?=
 =?iso-8859-1?Q?O1oF0mmi0+9+tlc5lhtLPDPtD59mQdbevX1u2J0VfuuhOzkHu6IQ0dkiez?=
 =?iso-8859-1?Q?uXcz8M+BP+lo67Zs1WHciPp2JhHWk6PEbVNaWjmt2sRs+aJAz1kidl76Xu?=
 =?iso-8859-1?Q?uaV+FrX0c1wlXyHce6JBatnmcTQVgpoTKnsJYwBcMAYIH1FypbiuBfTykp?=
 =?iso-8859-1?Q?vIfvxFmJu0U5ajxrEodx6KaDCqoZlgW7eMKF6fxMW8F0+GVNAyCQ1zaiD5?=
 =?iso-8859-1?Q?sa6bqxHnOQwpf6mNyieInY2xgz14Z95ToUCWx5w2FJz0OHTBAl4qwwzyEG?=
 =?iso-8859-1?Q?Eim3gu7+zp6HkCNrb6Lm6LzyEqXgMvQwHylN1Rn7?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63d90c5f-b1c5-4dea-19bd-08ddf4781e36
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 16:51:29.5807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XHC7axVKmjfVu45c6pDx/kkcaI5CF+LeJ//EIXcKdZlFg3e8kk8ew9bp3/X1UHE4X3miUlbCqqVPK1tC4n1N5nOya+zPoV3fBdRyltknyAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4706
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

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
Sent: Monday, September 15, 2025 8:32 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org; =
Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.com>;=
 Manna, Animesh <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with vto=
tal
>=20
> On Mon, Sep 15, 2025 at 03:21:03PM +0000, Cavitt, Jonathan wrote:
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
> > Sent: Monday, September 15, 2025 8:17 AM
> > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> > Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.o=
rg; Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Manna, Animesh <animesh.manna@intel.com>
> > Subject: Re: [PATCH] drm/i915/display: Simplify modular operations with=
 vtotal
> > >=20
> > > On Mon, Sep 15, 2025 at 02:49:22PM +0000, Cavitt, Jonathan wrote:
> > > > -----Original Message-----
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
> > > > Sent: Friday, September 12, 2025 8:30 AM
> > > > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> > > > Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedeskt=
op.org; Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@int=
el.com>; Manna, Animesh <animesh.manna@intel.com>
> > > > Subject: Re: [PATCH] drm/i915/display: Simplify modular operations =
with vtotal
> > > > >=20
> > > > > On Fri, Sep 12, 2025 at 02:29:17PM +0000, Cavitt, Jonathan wrote:
> > > > > > -----Original Message-----
> > > > > > From: Nikula, Jani <jani.nikula@intel.com>=20
> > > > > > Sent: Friday, September 12, 2025 1:56 AM
> > > > > > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lis=
ts.freedesktop.org
> > > > > > Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex=
.zuo@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; ville.syrjal=
a@linux.intel.com; Manna, Animesh <animesh.manna@intel.com>
> > > > > > Subject: Re: [PATCH] drm/i915/display: Simplify modular operati=
ons with vtotal
> > > > > > >=20
> > > > > > > On Thu, 11 Sep 2025, Jonathan Cavitt <jonathan.cavitt@intel.c=
om> wrote:
> > > > > > > > There are a couple of modulus operations in the i915 displa=
y code with
> > > > > > > > vtotal as the divisor that add vtotal to the dividend.  In =
modular
> > > > > > > > arithmetic, adding the divisor to the dividend is equivalen=
t to adding
> > > > > > > > zero to the dividend, so this addition can be dropped.
> > > > > > >=20
> > > > > > > The result might become negative with this?
> > > > > > >=20
> > > > > > > BR,
> > > > > > > Jani.
> > > > > > >=20
> > > > > > > >
> > > > > > > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > > > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > > > Cc: Animesh Manna <animesh.manna@intel.com>
> > > > > > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > > > > > ---
> > > > > > > >  drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
> > > > > > > >  drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
> > > > > > > >  2 files changed, 3 insertions(+), 3 deletions(-)
> > > > > > > >
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/dri=
vers/gpu/drm/i915/display/intel_dsb.c
> > > > > > > > index dee44d45b668..67315116839b 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > > > > > @@ -173,7 +173,7 @@ static int dsb_scanline_to_hw(struct in=
tel_atomic_state *state,
> > > > > > > >  		intel_pre_commit_crtc_state(state, crtc);
> > > > > > > >  	int vtotal =3D dsb_vtotal(state, crtc);
> > > > > > > > =20
> > > > > > > > -	return (scanline + vtotal - intel_crtc_scanline_offset(cr=
tc_state)) % vtotal;
> > > > > > > > +	return (scanline - intel_crtc_scanline_offset(crtc_state)=
) % vtotal;
> > > > > >=20
> > > > > > intel_crtc_scanline_offset returns -1, 1, or 2.  So the result =
here could only be negative if
> > > > > > the value of scanline is less than 2.
> > > > > >=20
> > > > > > > >  }
> > > > > > > > =20
> > > > > > > >  /*
> > > > > > > > @@ -482,7 +482,7 @@ static void assert_dsl_ok(struct intel_=
atomic_state *state,
> > > > > > > >  	 * Waiting for the entire frame doesn't make sense,
> > > > > > > >  	 * (IN=3D=3Ddon't wait, OUT=3Dwait forever).
> > > > > > > >  	 */
> > > > > > > > -	drm_WARN(crtc->base.dev, (end - start + vtotal) % vtotal =
=3D=3D vtotal - 1,
> > > > > > > > +	drm_WARN(crtc->base.dev, (end - start) % vtotal =3D=3D vt=
otal - 1,
> > > > > >=20
> > > > > > This can only be negative if start is less than end, which does=
n't seem possible.
> > > > > >=20
> > > > > > > >  		 "[CRTC:%d:%s] DSB %d bad scanline window wait: %d-%d (v=
t=3D%d)\n",
> > > > > > > >  		 crtc->base.base.id, crtc->base.name, dsb->id,
> > > > > > > >  		 start, end, vtotal);
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/=
drivers/gpu/drm/i915/display/intel_vblank.c
> > > > > > > > index c15234c1d96e..bcfca2fcef3c 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > > > > > @@ -288,7 +288,7 @@ static int __intel_get_crtc_scanline(st=
ruct intel_crtc *crtc)
> > > > > > > >  	 * See update_scanline_offset() for the details on the
> > > > > > > >  	 * scanline_offset adjustment.
> > > > > > > >  	 */
> > > > > > > > -	return (position + vtotal + crtc->scanline_offset) % vtot=
al;
> > > > > > > > +	return (position + crtc->scanline_offset) % vtotal;
> > > > > >=20
> > > > > > crtc->scanline_offset =3D intel_crtc_scanline_offset(crtc_state=
).
> > > > > > And position =3D intel_de_read_fw(display, PIPEDSL(display, pip=
e)) & PIPEDSL_LINE_MASK.
> > > > > > Finally, #define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
> > > > > > So, unless position =3D 0 on display versions 1 or 2 (where int=
el_crtc_scanline_offset returns -1), this cannot be negative.
> > > > >=20
> > > > > Scanlines can be anything from 0 to vtotal-1.
> > > > > So nak on this patch.
> > > > >=20
> > > > > >=20
> > > > > > ...
> > > > > > Wait, if crtc->scanline_offset =3D intel_crtc_scanline_offset(c=
rtc_state), then why are we recalculating
> > > > > > it in dsb_scanline_to_hw?  That should also probably be fixed, =
but not in this patch.
> > > > >=20
> > > > > Not sure what you think needs fixing. dsb_scanline_to_hw() is the
> > > > > inverse of most other uses of scanline_offset.
> > > >=20
> > > > Well, yes, we subtract it instead of adding it.
> > > >=20
> > > > But like, in dsb_scanline_to_hw:
> > > >=20
> > > > """
> > > > return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state))=
 % vtotal;
> > > > """
> > > >=20
> > > > Can this not be simplified to:
> > > >=20
> > > > """
> > > > return (scanline + vtotal - crtc->scanline_offset) % vtotal;
> > > > """
> > > >=20
> > > > ?
> > >=20
> > > No. crtc->scanline_offset may not be correct at that point in time.
> >=20
> > Is it guaranteed to be accurate in __intel_get_crtc_scanline()?
>=20
> Yes, for the purpose that it's used there.

Okay, understandable.  I can't think of a way to remove that variable from
the crtc struct without making several assumptions about which crtc_state
is used on initialization, so I'll take your word on that and not touch/cha=
nge
anything here.
-Jonathan Cavitt

>=20
> >=20
> > Because that's the only place crtc->scanline_offset is read.
> > -Jonathan Cavitt
> >=20
> > >=20
> > > --=20
> > > Ville Syrj=E4l=E4
> > > Intel
> > >=20
>=20
> --=20
> Ville Syrj=E4l=E4
> Intel
>=20

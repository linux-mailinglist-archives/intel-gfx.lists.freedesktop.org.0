Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA89975BE0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 22:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852C810EAA3;
	Wed, 11 Sep 2024 20:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FyFu/7dP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02B0D10EAA3;
 Wed, 11 Sep 2024 20:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726087306; x=1757623306;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=57o0aVMy/5yAkU5+5yCvBciZT9bp9itEgh4RMPyNiFU=;
 b=FyFu/7dPuqu0EB6KhV2XC1p9InrnghN6PACQYVNNYx1C/oRJnKhA5qwU
 MbmyX2pVBC+HXGoORHzFIsfmXlgsrVDOXX5G4+/FgQuQOY8h9NwKHX042
 UlJJZoSNLx7z/FXS1Jtrmz36c8QwUl49T3DpzwyjXaF4yNRy+JIJEJM37
 RtQv+yf6BWNPfaRbt6dpRmbEbOI/1DqzEn2RcxoO2pyg0NsSosPrlpMVV
 BY7OZyTOIWe5oa4w3ZFim3CQAr+LmtXC0KHDBcgSpegwV1m/f5A1b5LWx
 rwD+hpjbrKYL1DeCqzSSE93Hv8E6NC1Ms6iDiJHPgQ3PmReN4FKg4H4qJ g==;
X-CSE-ConnectionGUID: PQyn1alSTuaJHyjjS7TC/Q==
X-CSE-MsgGUID: ugSjZ+jDTsCTj3Ilu6zy0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="36264625"
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="36264625"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 13:41:45 -0700
X-CSE-ConnectionGUID: 6s3zUOZhRd6ZbHh3V958GA==
X-CSE-MsgGUID: CLmap4IISOSmLDchb7srEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="67544771"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 13:41:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 13:41:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 13:41:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 13:41:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VHT43zu1aeu9N0WO4zBJwThVdztyiKijijEHsfCNrCPVMrgkWt7zC1S2pNAmaiEd5hYz7/9iHASVmWEw1iruPJ+moSKgIa4zs+rGBuUVFbK2NZjFJbS+DMcCN+d0SfvbKEi05EVcdJ5OdhZiA/i5sqSwbZ/tE7yhkaXF40nifrNFJXws8V50FiIe818jeWndVjMpFaArfLJ4v8trxLoqnINbAG0014AUXegRHAMrqhdmKP/A32yayPkcwxaRBuhKR1vjvwPCjH1R+sWR+uakjIFmPSeNVj6m+0TBqkhKHV4zYLccGhULNHuW7yYhsrlw+o6hC+EQP3XfwIXHb4/BQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L+6r3tLGdVQkydvK50BwxQlJ59p0EPQL5UbzjMx5cxo=;
 b=m9PJAE152ZDOlmjS2CFKp/XwSkv14B9WM7PcXTOJJlqM+ChPaWsIitxnr3iZgBu+5JKfXtbumaTz4SM3XBChEzB5Kx0a60hDAU1syVErsTTShpyEg1/hQxB0au5b8l8WUWsrpEOt0o6P+7qjzWQCaEI6XRw4Ty0sb+EzE1S4NzjBTL/ECmg7MnR5UaM8RrvSfMXNnOrzu6evfDnDT6TBOaw7vECVmKHAvwUkvkoOasX0V1sNYQFpL0LlVEP+rxUywq1sqEGBcFiRBrCfXU3lIZ80Th8eaRujEBbNOhVRCEWaYmi/0a0AeUO+5FYq3PyVnq0ZLbL3lR/jbnV9nal/ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.23; Wed, 11 Sep
 2024 20:41:42 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 20:41:42 +0000
Date: Wed, 11 Sep 2024 16:41:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Bommu, Krishnaiah" <krishnaiah.bommu@intel.com>
CC: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "Upadhyay, Tejas"
 <tejas.upadhyay@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, "Teres Alexis, Alan Previn"
 <alan.previn.teres.alexis@intel.com>, "Winkler, Tomas"
 <tomas.winkler@intel.com>, "Usyskin, Alexander" <alexander.usyskin@intel.com>
Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI Modules
 for i915/Xe Driver
Message-ID: <ZuIAgJ0ev11msC4R@intel.com>
References: <20240909040317.17108-1-krishnaiah.bommu@intel.com>
 <ZuBfwqpIX4HAGwb1@intel.com>
 <3zgu3edmrjum2rbhu7tv5xo7xans2uper7qn3lswca3nsc4tdl@gevqfr65js4g>
 <DM4PR11MB529387DB2FBB0A5C1064895C9D9B2@DM4PR11MB5293.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB529387DB2FBB0A5C1064895C9D9B2@DM4PR11MB5293.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4PR04CA0285.namprd04.prod.outlook.com
 (2603:10b6:303:89::20) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB7579:EE_
X-MS-Office365-Filtering-Correlation-Id: d470fd10-f833-4617-7a39-08dcd2a2245e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?x25dG+1I3KTAUl1kREMvii5GwJU6yC51bsSCj35j6m9wWBqWeFKnl2D2dH?=
 =?iso-8859-1?Q?6ujsLvyKtMS/Ecsn9Z1cNPc49zaFCGy0kpvLfwe9GfO1djQ+TYWT81tvEz?=
 =?iso-8859-1?Q?3/0lHYXFz/GitXn4kRoth6k4MIeDEAAStLDOd4uvS54JKRJY8caNE8UxIj?=
 =?iso-8859-1?Q?Zl9CKrtbaYmQo3dlcXQtWCcepOJ4QYCxc+QwP8Ii40hNF8xFr77P4JTLyy?=
 =?iso-8859-1?Q?6l2un+zRuV7VpB+KHojPzM345L0nrjzFUJV7Lf9zVDM9N9YAEIZYOk7Q9b?=
 =?iso-8859-1?Q?8pjDL+WL6wAFgoTKJZDjEr9JWd7lEqH0BSHYICmt9WNupIgAl0pcSuToTp?=
 =?iso-8859-1?Q?Awn5UsKDD38JHZwEaxIf3AbvLOTF/wXYk/oBPy20Z2qcOJRpsIdVO4aO7Q?=
 =?iso-8859-1?Q?XYsT79lZdLMZbC47OaX9+1uO0Xva9wY615+uM8pENapgJXGQ2fGM6L0Dy4?=
 =?iso-8859-1?Q?9n4slRN/bhk1yLFKwEuVLGP1dc4VXaVyqLnWflyePSbi/EEK3Y/8EaHsLu?=
 =?iso-8859-1?Q?wTUo2HdkFAbUtE9c6MrEvyTmLDgDPl0d9gjijYxb0SKaAqgZ8SQ6kkV2D9?=
 =?iso-8859-1?Q?/po1FwnDpRuzHwhd3xs1uVGkgAKPT6reBf2KeJV6/7J22YrWQeYT5u7zpt?=
 =?iso-8859-1?Q?LSDUBbxUSmlI/4E50ZoOjJF67XksvhWOwubLGYENztyL9SaKW7Gg0Mr5Eb?=
 =?iso-8859-1?Q?sLoykxUhOmcmbULRgcbZHToF7OV+Uc2HeiZpt9R5W62XHXQ5ZitYBlnzJr?=
 =?iso-8859-1?Q?WfrWFHPOi+tX4tH9+YKFqBRofumkhgnYEP4NtOYAeIDUKSoPK/t9R1fkG5?=
 =?iso-8859-1?Q?qP3RL7Foa2wiYlhvvKnhxM6SL0BY4zwPnZ6PdLOykFumjnSUpPjgIMg3Fk?=
 =?iso-8859-1?Q?vEoXJ2jvJFPAHwwnXVHXvmLs70eSOYDn/AO2Lt1ln/rgBSVG07ys29sIzw?=
 =?iso-8859-1?Q?fK39aiJbxFu9L2j3j9wsgvDgtTe3Ckl8zuAMD1NwfNbLAnDcFrhX+i8+ve?=
 =?iso-8859-1?Q?jl77RGLN4EUyB/6f5LMDPPOu4KklveP5QbrVXBttCeepH13jMFAIdApaH3?=
 =?iso-8859-1?Q?g8Ix+7eqQOv2Yf3muf/H1jc7KiEGOn59owWd0V7uGVywjQ5ZMtzZldjGAo?=
 =?iso-8859-1?Q?3AMgvUFBI4ITi12mUegW1BQAyYLCWkX+/fLpEoDGApEgr42cMdn7NAxkno?=
 =?iso-8859-1?Q?3ENRqYeUNGvGPEWN+tt4w/7TcwMv7EKyiv/524hARUtS/NizvOvBQmFm3V?=
 =?iso-8859-1?Q?v9exdOOHEfgrBA+RhDeNlch06i71qlM7gHT1RWjVow0rXAgWK5Uf3wHdjZ?=
 =?iso-8859-1?Q?0cy2E+IbXq8cr36aimPuv9WQaHpOt5NBGFMVA0ee+dhGMynbUAGgc0JK0q?=
 =?iso-8859-1?Q?5u7gfhwVqIeri0cm9aKUxy0lxPzsEQUg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?AMNCP/bXyvcMu243bXq+4mMQuGSe6l7RiI+ttVBmQHchmy748Jm2SSymZe?=
 =?iso-8859-1?Q?sU5ZGuCKJejnzbu/H1MN0Sjyra/aOCY2r1GwUkKsFklzXou/wHjDdafUm1?=
 =?iso-8859-1?Q?eFE/hK55zd3HtRcj7iYaL2GH8C/lvBAcBZCdTWwhk1mdlwmtNX/FZwPgI0?=
 =?iso-8859-1?Q?zZwGUGRZd9illOj2/hv/p+cNYS6+12q9lTOd/qh4LkiaV/pFZZbC707ts3?=
 =?iso-8859-1?Q?g07S9DCN8j0QvgHRseFRXnRbo7snGTkK3g9Lo7IWCsf3plY88lJEpFqOI8?=
 =?iso-8859-1?Q?/ZkKPMAD1Lfvf/nk9gwFO2Eh9dt5kJgFsMRzFqaBDwXHVNjJR+xfHgIurq?=
 =?iso-8859-1?Q?W2WMVDt1wZI/VC4dRgBH2Nypy3uH8JmUj06d/3u8BzIdej7xX/iKFlyRsF?=
 =?iso-8859-1?Q?VSGnlquXtPnRxML63hkqTKSDt0Rljl+P5vwQHiDvHQEs2s/GoT7+uNWwCv?=
 =?iso-8859-1?Q?KXpWVAb6x6QT8pHpfSSPDBdp1xFg0+cLJUFqF23jp374fUlmNFmqQzHg0y?=
 =?iso-8859-1?Q?Hv7z0Ziv8hwWeECWB3t7UbYPn62Psw3C0LymDqx0XTi2Ue2pgaR0bN9OCb?=
 =?iso-8859-1?Q?yIGHvq9SiOqKLoW9QDO0qhQPQn/X82Yn7IxAnXdX5Y0n74XRyrfSt8lxn/?=
 =?iso-8859-1?Q?f2G7eJel5ty5ox1J4+aCzLfTN8V/TA4qrOF42ZwaIQYS3l3oFcxQDez/Iq?=
 =?iso-8859-1?Q?2gh4eySiwWEZk8klPpDTSbwYmRzTAJPuibPlBdd/hbXuBaGSogp8ukmSoI?=
 =?iso-8859-1?Q?FJG3HfhrGfv/eO+T+CUgYS2648WY/GnYX0TgKFMr/UZ3fGtPw0jK47vTvT?=
 =?iso-8859-1?Q?ZqpAzYzg3rDZ/+I08VtqWVS8QhM3ddXa8n8PNfLLlOSX8kTAFa0Y6T4BfC?=
 =?iso-8859-1?Q?eKlYDo+1Jcndhy2aYpNW0Y6kyOmukUiymEdkqBpRUclsz8sQxIz3ZdCsf3?=
 =?iso-8859-1?Q?W75bdmVg7tyu+RgXJtNksvFQwFFxzU2vGJI5XUO+S+qoQcv+dUodtRB5nS?=
 =?iso-8859-1?Q?TgJ8I/ShQN3UWgzC3JAedt5MVLj1+KenUvZl1OwBq0IoCf29QdOa919Moj?=
 =?iso-8859-1?Q?ulx4AOrgf9/3ZZos1xZCygHLPYJuLFLs8myvDVEMSw7YHN6fVljZQyyQ9K?=
 =?iso-8859-1?Q?k+x7j4RR3vCv2CQu+q+PAFG3D9lABhYWfaTjWcuANPy0+RdjmysQrOb3pZ?=
 =?iso-8859-1?Q?Xkfqxs+gv7dSF+ziyuvj9+llXVVAI91I9kBbiDZ+9JUCGmI/9OkPMHHoL6?=
 =?iso-8859-1?Q?fKHd4U9C/gXmkB20K/6OdyLPwYt0eMVZAQk2FGYKVygZem4hTZ990abZo7?=
 =?iso-8859-1?Q?w6EYnYv1odA7KPQborUWdkjeAtJkjH+J0FFYuN5OGz69gdf3svbznY5Xd9?=
 =?iso-8859-1?Q?nf7rWCC0OaQ3haICfNdf5eYmTbx80SqCK39LfpTHjOq1PSy97owHjqfJbA?=
 =?iso-8859-1?Q?ppvDObYCXFp/S6Y61iiNkg7HxqerD0GGwtC7Z4qX2fprRHGudxiMbLwBf6?=
 =?iso-8859-1?Q?AnliCcFJHgo+gSj4TGvgddmfkQNg8x3dIvds+fp18U/sIxcPcZxuj87StK?=
 =?iso-8859-1?Q?YLZxYzm2qpuGJmZgU24A8XGLDPOvoRbH33CT2LqUhkcYzbZQQsYvKRpb+R?=
 =?iso-8859-1?Q?j7d8uCnP5VME60NL5vlothuzmPyRG+fZ2xbrr5pIOwOr0S/g/2FoiPAQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d470fd10-f833-4617-7a39-08dcd2a2245e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2024 20:41:42.5899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sn4qq2jYI1DuZ1Ui9elEBPm5rJSjMag6+2npNH3GEYdfjKvU1EdR3QC4QfCZ0lUl/daUg30dcTTb5kd6i6JjPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7579
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

On Wed, Sep 11, 2024 at 06:00:47AM +0000, Bommu, Krishnaiah wrote:
> 
> 
> > -----Original Message-----
> > From: De Marchi, Lucas <lucas.demarchi@intel.com>
> > Sent: Tuesday, September 10, 2024 9:13 PM
> > To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Cc: Bommu, Krishnaiah <krishnaiah.bommu@intel.com>; intel-
> > xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kamil Konieczny
> > <kamil.konieczny@linux.intel.com>; Ceraolo Spurio, Daniele
> > <daniele.ceraolospurio@intel.com>; Upadhyay, Tejas
> > <tejas.upadhyay@intel.com>; Tvrtko Ursulin <tursulin@ursulin.net>; Joonas
> > Lahtinen <joonas.lahtinen@linux.intel.com>; Nikula, Jani
> > <jani.nikula@intel.com>; Thomas Hellström
> > <thomas.hellstrom@linux.intel.com>; Teres Alexis, Alan Previn
> > <alan.previn.teres.alexis@intel.com>; Winkler, Tomas
> > <tomas.winkler@intel.com>; Usyskin, Alexander
> > <alexander.usyskin@intel.com>
> > Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI
> > Modules for i915/Xe Driver
> > 
> > On Tue, Sep 10, 2024 at 11:03:30AM GMT, Rodrigo Vivi wrote:
> > >On Mon, Sep 09, 2024 at 09:33:17AM +0530, Bommu Krishnaiah wrote:
> > >> This update addresses the unload/reload sequence of MEI modules in
> > >> relation to the i915/Xe graphics driver. On platforms where the MEI
> > >> hardware is integrated with the graphics device (e.g., DG2/BMG), the
> > >> i915/xe driver is depend on the MEI modules. Conversely, on newer
> > >> platforms like MTL and LNL, where the MEI hardware is separate, this
> > dependency does not exist.
> > >>
> > >> The changes introduced ensure that MEI modules are unloaded and
> > >> reloaded in the correct order based on platform-specific
> > >> dependencies. This is achieved by adding a MODULE_SOFTDEP directive to
> > the i915 and Xe module code.
> > 
> > 
> > can you explain what causes the modules to be loaded today? Also, is this to fix
> > anything related to *loading* order or just unload?
> > 
> > >>
> > >> These changes enhance the robustness of MEI module handling across
> > >> different hardware platforms, ensuring that the i915/Xe driver can be
> > >> cleanly unloaded and reloaded without issues.
> > >>
> > >> v2: updated commit message
> > >>
> > >> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > >> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> > >> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > >> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > >> Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
> > >> ---
> > >>  drivers/gpu/drm/i915/i915_module.c | 2 ++
> > >>  drivers/gpu/drm/xe/xe_module.c     | 2 ++
> > >>  2 files changed, 4 insertions(+)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/i915_module.c
> > >> b/drivers/gpu/drm/i915/i915_module.c
> > >> index 65acd7bf75d0..2ad079ad35db 100644
> > >> --- a/drivers/gpu/drm/i915/i915_module.c
> > >> +++ b/drivers/gpu/drm/i915/i915_module.c
> > >> @@ -75,6 +75,8 @@ static const struct {  };  static int
> > >> init_progress;
> > >>
> > >> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
> > >> +
> > >>  static int __init i915_init(void)
> > >>  {
> > >>  	int err, i;
> > >> diff --git a/drivers/gpu/drm/xe/xe_module.c
> > >> b/drivers/gpu/drm/xe/xe_module.c index bfc3deebdaa2..5633ea1841b7
> > >> 100644
> > >> --- a/drivers/gpu/drm/xe/xe_module.c
> > >> +++ b/drivers/gpu/drm/xe/xe_module.c
> > >> @@ -127,6 +127,8 @@ static void xe_call_exit_func(unsigned int i)
> > >>  	init_funcs[i].exit();
> > >>  }
> > >>
> > >> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
> > >
> > >I'm honestly not very comfortable with this.
> > >
> > >1. This is not true for every device supported by these modules.
> > >2. This is not true for every (and the most basic) functionality of these drivers.
> > >
> > >Shouldn't this be done in the the mei side?
> > 
> > I don't think it's possible to do from the mei side. Would mei depend on both xe
> > and i915 (and thus cause both to be loaded regardless of the platform?). For a
> > runtime dependency like this that depends on the platform, I think the best way
> > would be a weakdep + either a request_module() or something else that causes
> > the module to load (is that what comp_* is doing today?)
> > 
> > >
> > >Couldn't at probe we identify the need of them and if needed we return
> > >-EPROBE to attempt a retry after the mei drivers were probed?
> > 
> > I'm not sure this is fixing anything for probe. I think we already wait on the other
> > component to be ready without blocking the rest of the driver functionality.
> > 
> > A weakdep wouldn't cause the module to be loaded where it's not needed, but
> > need some clarification if this is trying to fix anything load-related or just unload.
> 
> This change is fixing unload.
> During xe load I am seeing mei_gsc modules was loaded, but not unloaded during the unload xe

Is it a problem?

> 
> root@DUT6127BMGFRD:/home/gta# lsmod | grep xe ------>>>just after system reboot 
> root@DUT6127BMGFRD:/home/gta#
> root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
> mei_hdcp               28672  0
> mei_pxp                16384  0
> mei_me                 49152  2
> mei                   167936  5 mei_hdcp,mei_pxp,mei_me
> root@DUT6127BMGFRD:/home/gta# lsmod | grep xe
> root@DUT6127BMGFRD:/home/gta#
> root@DUT6127BMGFRD:/home/gta# modprobe xe
> root@DUT6127BMGFRD:/home/gta#
> root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
> mei_gsc_proxy          16384  0
> mei_gsc                12288  1
> mei_hdcp               28672  0
> mei_pxp                16384  0
> mei_me                 49152  3 mei_gsc
> mei                   167936  8 mei_gsc_proxy,mei_gsc,mei_hdcp,mei_pxp,mei_me
> root@DUT6127BMGFRD:/home/gta#
> root@DUT6127BMGFRD:/home/gta#
> root@DUT6127BMGFRD:/home/gta#
> root@DUT6127BMGFRD:/home/gta# init 3
> root@DUT6127BMGFRD:/home/gta# echo -n auto > /sys/bus/pci/devices/0000\:03\:00.0/power/control
> root@DUT6127BMGFRD:/home/gta# echo -n "0000:03:00.0" > /sys/bus/pci/drivers/xe/unbind
> root@DUT6127BMGFRD:/home/gta# modprobe -r xe
> root@DUT6127BMGFRD:/home/gta#
> root@DUT6127BMGFRD:/home/gta# lsmod | grep xe
> root@DUT6127BMGFRD:/home/gta# lsmod | grep mei
> mei_gsc_proxy          16384  0
> mei_gsc                12288  0
> mei_hdcp               28672  0
> mei_pxp                16384  0
> mei_me                 49152  3 mei_gsc
> mei                   167936  7 mei_gsc_proxy,mei_gsc,mei_hdcp,mei_pxp,mei_me
> root@DUT6127BMGFRD:/home/gta#
> 
> Regards,
> Krishna.
> 
> > 
> > Lucas De Marchi
> > 
> > >
> > >Cc: Alexander Usyskin <alexander.usyskin@intel.com>
> > >Cc: Tomas Winkler <tomas.winkler@intel.com>
> > >Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> > >Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > >Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > >Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> > >Cc: Jani Nikula <jani.nikula@intel.com>
> > >Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > >Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> > >
> > >> +
> > >>  static int __init xe_init(void)
> > >>  {
> > >>  	int err, i;
> > >> --
> > >> 2.25.1
> > >>

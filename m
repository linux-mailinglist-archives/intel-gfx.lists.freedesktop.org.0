Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64034687C37
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 12:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BED910E008;
	Thu,  2 Feb 2023 11:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F15A110E008
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 11:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675337342; x=1706873342;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QnTbfaHU1K/F0JGBBxezT22aQmDZBqOmO/2gs98ErrY=;
 b=TUTXHf0fWoAaXdLIreTT6RrW8ZNrvQLJW/CwUM63Hpr0zwBPIiFerQVv
 DXgD2oFfySppGSCv1qnXdrADSeSv1RppIdMXLs+2ELL+NsFvIM0knchRS
 pnj//Ni1IPM2D/c6OonwByRsAVEXIHU9m0nmyUV6XeRoz+wZ8quljlzV8
 yD8E0Q5hUbLDl2VddvSgomfJXpMLiwGQ3flHPFhKp8r/pDZWlp9iNvK5O
 0/LvAYcOkWzrrlNI7acN5MoKw8yGe5HUBLSCQzbn4bmowa/iY464NzRJy
 4RG9ifAAZrl81lnOwoeLYWJ3Q/j+dQxDpThkyw2JeFKivGZoHR6cRDJZ1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308072669"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="308072669"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 03:29:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="754029471"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="754029471"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Feb 2023 03:29:02 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 03:29:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 03:29:01 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 03:29:01 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 03:29:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mx0UoH/hjFlXb6lg1mKhcII+1r5tbJGLWWTt4I9QfJVI3T01NPLejD45lctV95bld/j8R1LYoy4t2RLp80VSr9AKFPXbrFF8nm3ofJCJ89mDh1zNzAZRx+5tqAqKFwxCOXCqs4D7RMaR7hyC7AR1m5vvh2gEOuKUa1v/pjS82HFy1CPzbqkPBs+kUiH5Pcy3bhcki9ERwLn7JVUEpCOM1GSNmhqATpn4eqfMd1freswJmnoNJEeN9LfxuW+UjwJcJGTCn6xj6seiVJEF2GyNz4ykvzpFRcoIgb1p1NEVegA2rKrifsBFnIZmVhwdgDLtS1byxz3oeEda42H14qrgZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+pUFatx9+s4azkyhCDWnDX+oG2LMPw8yTqJZM0AwCNU=;
 b=EytY5AWUSI+X+Az9IjJmmfPYln4Qr9NmQGU0qLTRM+AlWPouI+csdeOpcYYGqpU4Y5laKn2QVCmsgkXSYTVJ/Ss4VTp0LraWMDK3cVJiSiJ1ef5SF92YGqBPx+6IErmN30MdXMqnZ0kqD6Amks9xKQejuoVkKDcRAZlQur6/Pf0nvVcGGVJzGQXP8y47Ca1GXHZD1tr6fVOYnhZvhvMyOw4/oxJt5E01fGZZ7P2lldPToDDuQ0b7lwFSvIsLC48OalSu+RmAE6YPrFXOq9uS7ZnJ7X0enCTOzsqNFVxFUEcqDbEp4kUmEVJA4zq8rFSwX5Yiv3hnEaTguspLs9L+yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SN7PR11MB6726.namprd11.prod.outlook.com (2603:10b6:806:266::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Thu, 2 Feb
 2023 11:28:58 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%7]) with mapi id 15.20.6043.038; Thu, 2 Feb 2023
 11:28:58 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyAgAhR7zCAB3v7gIAhL06wgBv+ZsCAADSigIB5ErxAgAZdxOCACU3HEIAPuYtwgAAqugCAACJYMA==
Date: Thu, 2 Feb 2023 11:28:58 +0000
Message-ID: <DM6PR11MB317734A77C58D004550309B1BAD69@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177CFCD0942A580C4E9FE5BBA329@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Y1t3J2vIoiaPhYuR@intel.com>
 <DM6PR11MB3177F788C93767D65A8C7EBFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177F06B273DC0A701B6BB68BAC69@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31779DE7C32B77798771CD74BAC89@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31770BE42F08018A83ABF749BAD69@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Y9uBQoHTkp1HZTQa@intel.com>
In-Reply-To: <Y9uBQoHTkp1HZTQa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|SN7PR11MB6726:EE_
x-ms-office365-filtering-correlation-id: c890b3eb-adcc-4430-17d1-08db0510ad19
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tVLLtOlhGRW+68bkMyuxQGiFMw4GCsS9hurQiPPqubnLaCDR96bzNYJ3SG1BsRJNMCsLHovYQA0SxLX2Nwkfcqf253dtmTDiIdsWOZX0538YdvdE+XYQx6pBEnO6uS/n6d7acvQPyTgbhIZ0RmU20TZOh6fGvkP55O3t4bMZ7HdY/FBYJTK5Vv74dy082zpZ9I20KzdDifqIbrFPzzx7xnbegk0HFrJviGggXiaM3rXJgnI7VtGtQPp7jYSJsKTFMox9StPQaSnuwgWW9pMXZITLQdwTCSkXP4oD3Wl75KMdTaN5thryx7CwWBp9BX8D4oMIQbPZQUr7dBNtdH+/tgkD2gGvav/c2DprCMBNmVB9VxCG0OsPZIKbH2T7F/hR22R+q0nm5JkSqtiqqvNGCB9WCnS/4hKkhD9ZW47HkcQVi4NTVOR2Dv9yhufTu/GtPVUVdiqURUJf//l/nrHMRiU01AOtteW6lOgIat1+9xiVx6MJvEE46QX92MV12JcnnUAZ97bday1piOE3urIBkjXY1iZJHHBOZPqSoR7eiR7Ao6aghrC4Flh+kpYuEgk2Gz9VdS65xkPai3B8MaRV6GRC8zYR6TlkpAac6HZzPBjTaQN5JOpqvN4VtxWZq380MeM0mnWqBGPUo161gh8RZxsai48N0PA7sc5sqYGVKTMFw2zxRVIDx5oED4ziqFW1bJrMerqfSmPIw7BOUroo97WdgY1IUmcfUOpxJQIe1l4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(136003)(366004)(39860400002)(346002)(451199018)(5660300002)(52536014)(8936002)(41300700001)(33656002)(38070700005)(53546011)(55236004)(66446008)(6506007)(4326008)(6916009)(82960400001)(8676002)(64756008)(38100700002)(66946007)(66556008)(76116006)(71200400001)(478600001)(122000001)(66476007)(54906003)(2906002)(966005)(7696005)(316002)(26005)(186003)(9686003)(55016003)(86362001)(66574015)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?NvrwV11RhAqgbBIdBsi/fFD+8EOLgNkIIf/H3MvMYs9AzsHHRYIKau6t8L?=
 =?iso-8859-1?Q?DWHQlbIKJAtW2T7xOeGkMfC3+cao2fbCpB+paB0lyX76oLekjDFpsipOZE?=
 =?iso-8859-1?Q?KdVF0E72H8na+9QQHtvBTCIEiwzIKAaFNvFaK2wiz53EXaPqL2dtXYzIkn?=
 =?iso-8859-1?Q?WLUZOo4aC0J2KOugEK+WssmYWojkWRAnxy06aOP87QtqW+N+1ok1PUQRGV?=
 =?iso-8859-1?Q?m3qhVtQozPABI9TL5WuZm9OTrh680J5MJOD+qwYTVC9fWoTYsmbLe6hFjj?=
 =?iso-8859-1?Q?jS39N8UbB5NP4bUcAutNUlsH2ilRSJTKeq5XAhUJkjYbioLvc7dzaS8viy?=
 =?iso-8859-1?Q?/H4yy9Rxme+dmgmST0c/trOHPuEjWTIU/KdbbhK8EnYBA9YTszcqOsOisc?=
 =?iso-8859-1?Q?rTZyF+u4nule3h8Mf3ZeX6jW2hUtOwnX0vNBWpM8KM+Y/4HqiMd9WMdQuZ?=
 =?iso-8859-1?Q?x6rbkVYqlmS8zNvhUxqEZ7d5LEX9BvDs/6S4xWN0r6Kv8FB6vx/7I8d/IZ?=
 =?iso-8859-1?Q?6u+KraMyOAv6wAzeAV/pi/YOT5Fxb/SEGqoW6wwCIk/yBFB8uXn9yAa8M3?=
 =?iso-8859-1?Q?yYAhCxitcG99m/O/VNXtVv/qXE9qm3COBeG2dHVC8R9IcrBOQidmdab3nx?=
 =?iso-8859-1?Q?v5ph/RkgasPXQPuvAwh6Gyg9gT0vuGkgNRT1nTgo7cpOU+cYAL+XnuHvoR?=
 =?iso-8859-1?Q?BgxAwYRWpnQzeZgWRRmVzQ2VR6jNw3i89q5n6qrmLO8XtAu53okFjxzCKP?=
 =?iso-8859-1?Q?1ZgBoUoKvK7NadVP1ba9GS3t5KYRufJcpX3VRH75YsmW/GNsvPBYKGdUE3?=
 =?iso-8859-1?Q?XqMPrbM4RAtjwc1L6qwl2z3Q0P9EWWs5EkWIT7nmYXaMHFThMFhP63BXMF?=
 =?iso-8859-1?Q?FLbiabn4AWSLl3GF2C+KJ7Wz/CkCuU29UOln9yxR0MAOJlLh9oVSur/1Ow?=
 =?iso-8859-1?Q?DhLeVVd5S/WQEwDBFUuDQDoA223/QIpH/w/2jPUq0w9qo80H9Vhs6zc+MV?=
 =?iso-8859-1?Q?yjFd3QJhyJFaM9JDm8cGaLjVEBtCrL2KLAAT9TiP1tawCzBUh5L+iXjbpx?=
 =?iso-8859-1?Q?dQ9UIde+G97GVqBmo8PsHymIEPX2EykxQrvcB9EjogVDVARYEn/9qkJKAK?=
 =?iso-8859-1?Q?fjntPdWLZoUWmT/VYAfds9vEsmddW/uRt4jDG6Qry5h6qs9n4opRrxPo8I?=
 =?iso-8859-1?Q?fSaErAHQU4XQ7Ql6AkS4tIn51Zat3Do8rQ93zxcysOukFIHO1iK7FkUIFy?=
 =?iso-8859-1?Q?oSJOgXhg6uUP1RZvlSq0YpJRBhDhCdDj8H6AHy2P3Kbgl6OOFE/IlUkdlw?=
 =?iso-8859-1?Q?LhK23PsneOFemh5z2ZfgwEHp/mbbU6JR24E0hTiQehj0679YddS1AFlmM0?=
 =?iso-8859-1?Q?tXNT4gZURPzvQO2uzHSEFrSac3T1eeF5P66HvkyOwCabDFoQE5I5O3UMan?=
 =?iso-8859-1?Q?TsNdM/9iyCaVx1VJ6EIvz/lJYWV8VFtK8b2r4mxy9ZxMtAGz42HO83quOv?=
 =?iso-8859-1?Q?3AjshYHSjbpMCJmu77EJny//AlJKkqV3dNGtE3YrmaMbrgGnuBH39NLGHP?=
 =?iso-8859-1?Q?9Yba+YUwa5f4FOHg5g0mbXtmnoyxvptN8KO2wIJExIIfgoam6lEjy2CWen?=
 =?iso-8859-1?Q?0oj086J4ghum7xCu9bcj/2ahsw/Vjxj+mJ?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c890b3eb-adcc-4430-17d1-08db0510ad19
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 11:28:58.4462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MLmZkUF7/bzLxLVpUU8CXyVpsdWs0ZmhvreXd36cCKJODnmJsPYduLBXTDhet2W4IKEuQbJbrgkj4DCipf6Ybw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6726
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, February 2, 2023 2:54 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.=
com>
> Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
> buffers
>=20
> On Thu, Feb 02, 2023 at 06:51:49AM +0000, Murthy, Arun R wrote:
> > Gentle Reminder!
> > The patch is pending since a long time.
>=20
> Please review the igt changes here:
> https://patchwork.freedesktop.org/series/113525/
> then we can actually test this (and any other new modifier in the future)=
.
>=20
Done!
This patch is to add support for linear buffer in the driver and shouldn't =
conflict with the IGT patch series https://patchwork.freedesktop.org/series=
/113525/

Thanks and Regards,
Arun R Murthy
--------------------

> >
> > Thanks and Regards,
> > Arun R Murthy
> > -------------------
> >
> > > -----Original Message-----
> > > From: Murthy, Arun R
> > > Sent: Monday, January 23, 2023 12:14 PM
> > > To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> > > Cc: 'intel-gfx@lists.freedesktop.org'
> > > <intel-gfx@lists.freedesktop.org>;
> > > Syrjala, Ville <ville.syrjala@intel.com>
> > > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > > Linear buffers
> > >
> > > Any review comments on this. Gentle Reminder!
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > --------------------
> > >
> > > > -----Original Message-----
> > > > From: Murthy, Arun R
> > > > Sent: Tuesday, January 17, 2023 2:09 PM
> > > > To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> > > > Cc: 'intel-gfx@lists.freedesktop.org'
> > > > <intel-gfx@lists.freedesktop.org>;
> > > > Syrjala, Ville <ville.syrjala@intel.com>
> > > > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > > > Linear buffers
> > > >
> > > > Gentle Reminder!
> > > >
> > > > Thanks and Regards,
> > > > Arun R Murthy
> > > > -------------------
> > > >
> > > > > -----Original Message-----
> > > > > From: Murthy, Arun R
> > > > > Sent: Friday, January 13, 2023 12:57 PM
> > > > > To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville
> > > > > <ville.syrjala@intel.com>
> > > > > Subject: RE: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip
> > > > > on Linear buffers
> > > > >
> > > > > > On Fri, Oct 28, 2022 at 03:23:02AM +0000, Murthy, Arun R wrote:
> > > > > > > Gentle Reminder!
> > > > > >
> > > > > > Is the igt stuff merged, and did this pass the test?
> > > > > >
> > > > > With IGT alone the tests will fail without the kernel patch.
> > > > > The
> > > > > tests(https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_112722v2/s
> > > > > hard
> > > > > s-
> > > > > all.html?testfilter=3Dkms_async_flips) are passing with IGT and
> > > > > kernel
> > > patch.
> > > > >
> > > > > Thanks and Regards,
> > > > > Arun R Murthy
> > > > > --------------------
> > > > > > >
> > > > > > > > -----Original Message-----
> > > > > > > > From: Murthy, Arun R
> > > > > > > > Sent: Monday, October 10, 2022 1:24 PM
> > > > > > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > > > > > <intel-gfx@lists.freedesktop.org>
> > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > Linear buffers
> > > > > > > >
> > > > > > > > Ville,
> > > > > > > > 	Gentle reminder!
> > > > > > > >
> > > > > > > > Thanks and Regards,
> > > > > > > > Arun R Murthy
> > > > > > > > --------------------
> > > > > > > >
> > > > > > > > > -----Original Message-----
> > > > > > > > > From: Murthy, Arun R
> > > > > > > > > Sent: Monday, September 19, 2022 10:38 AM
> > > > > > > > > To: 'intel-gfx@lists.freedesktop.org'
> > > > > > > > > <intel-gfx@lists.freedesktop.org>
> > > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > > Linear buffers
> > > > > > > > >
> > > > > > > > > If no comments, can anyone merge the patch!
> > > > > > > > >
> > > > > > > > > Thanks and Regards,
> > > > > > > > > Arun R Murthy
> > > > > > > > > --------------------
> > > > > > > > >
> > > > > > > > > > -----Original Message-----
> > > > > > > > > > From: Murthy, Arun R
> > > > > > > > > > Sent: Wednesday, September 14, 2022 4:21 PM
> > > > > > > > > > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > > > > > > > > > gfx@lists.freedesktop.org
> > > > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > > > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > > > Linear buffers
> > > > > > > > > >
> > > > > > > > > > Gentle Reminder!
> > > > > > > > > > Any comments?
> > > > > > > > > >
> > > > > > > > > > Thanks and Regards,
> > > > > > > > > > Arun R Murthy
> > > > > > > > > > --------------------
> > > > > > > > > >
> > > > > > > > > > > -----Original Message-----
> > > > > > > > > > > From: Intel-gfx
> > > > > > > > > > > <intel-gfx-bounces@lists.freedesktop.org>
> > > > > > > > > > > On Behalf Of Murthy, Arun R
> > > > > > > > > > > Sent: Friday, September 9, 2022 9:17 AM
> > > > > > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > > > > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > > > > > > > > > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support
> > > > > > > > > > > Async Flip on Linear buffers
> > > > > > > > > > >
> > > > > > > > > > > Gentle Reminder!
> > > > > > > > > > >
> > > > > > > > > > > > -----Original Message-----
> > > > > > > > > > > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > > > > > > > > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > > > > > > > > > > To: intel-gfx@lists.freedesktop.org
> > > > > > > > > > > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > > > > > > > > > > <arun.r.murthy@intel.com>
> > > > > > > > > > > > Subject: [PATCHv3] drm/i915: Support Async Flip on
> > > > > > > > > > > > Linear buffers
> > > > > > > > > > > >
> > > > > > > > > > > > Starting from Gen12 Async Flip is supported on line=
ar
> buffers.
> > > > > > > > > > > > This patch enables support for async on linear buff=
er.
> > > > > > > > > > > >
> > > > > > > > > > > > UseCase: In Hybrid graphics, for hardware
> > > > > > > > > > > > unsupported pixel formats it will be converted to
> > > > > > > > > > > > linear memory and then
> > > > > composed.
> > > > > > > > > > > >
> > > > > > > > > > > > v2: Added use case
> > > > > > > > > > > > v3: Added FIXME for ICL indicating the
> > > > > > > > > > > > restrictions
> > > > > > > > > > > >
> > > > > > > > > > > > Signed-off-by: Arun R Murthy
> > > > > > > > > > > > <arun.r.murthy@intel.com>
> > > > > > > > > > > > ---
> > > > > > > > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 14
> > > > > > > > > > > > ++++++++++++++
> > > > > > > > > > > >  1 file changed, 14 insertions(+)
> > > > > > > > > > > >
> > > > > > > > > > > > diff --git
> > > > > > > > > > > > a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > > index be7cff722196..1880cfe70a7d 100644
> > > > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > > > > > > @@ -6610,6 +6610,20 @@ static int
> > > > > > > > > > > > intel_async_flip_check_hw(struct
> > > > > > > > > > > > intel_atomic_state *state, struct
> > > > > > in
> > > > > > > > > > > >  		 * this selectively if required.
> > > > > > > > > > > >  		 */
> > > > > > > > > > > >  		switch (new_plane_state->hw.fb->modifier) {
> > > > > > > > > > > > +		case DRM_FORMAT_MOD_LINEAR:
> > > > > > > > > > > > +			/*
> > > > > > > > > > > > +			 * FIXME: Async on Linear buffer is
> > > supported
> > > > > > > > on ICL
> > > > > > > > > > > > as
> > > > > > > > > > > > +			 * but with additional alignment and
> > > fbc
> > > > > > > > restrictions
> > > > > > > > > > > > +			 * need to be taken care of. These
> > > aren't
> > > > > > > > applicable
> > > > > > > > > > > > for
> > > > > > > > > > > > +			 * gen12+.
> > > > > > > > > > > > +			 */
> > > > > > > > > > > > +			if (DISPLAY_VER(i915) < 12) {
> > > > > > > > > > > > +				drm_dbg_kms(&i915->drm,
> > > > > > > > > > > > +					"[PLANE:%d:%s]
> > > Modifier
> > > > > > > > does not
> > > > > > > > > > > > support async flips\n",
> > > > > > > > > > > > +					plane->base.base.id,
> > > plane-
> > > > > > > > > > > > >base.name);
> > > > > > > > > > > > +				return -EINVAL;
> > > > > > > > > > > > +			}
> > > > > > > > > > > > +
> > > > > > > > > > > >  		case I915_FORMAT_MOD_X_TILED:
> > > > > > > > > > > >  		case I915_FORMAT_MOD_Y_TILED:
> > > > > > > > > > > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > > > > > > > > > > --
> > > > > > > > > > > > 2.25.1
> > > > > >
> > > > > > --
> > > > > > Ville Syrj=E4l=E4
> > > > > > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel

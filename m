Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D104675BFF6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 09:39:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE5110E16F;
	Fri, 21 Jul 2023 07:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF0510E16F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 07:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689925179; x=1721461179;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UMPW+Kezlnx/drVRmja7SyQQIkZG5X4kUTLgMoxUm7s=;
 b=dcCONXapSlhqe2hIBhisw/0snzHXTUSr5Duk871I/w/J4UhTLBr2yR7X
 w3SP0+7dXij2KsY5tSaXSiDnNquJBO4m/oMT7kThKN3me9Wb5eEBUZbgk
 9t2Y/iZoLEFvPdMZ12AhTc8Bc77iCCKzPGvYEqbhZ4Vpf3It/aKsJKirG
 xjiPx+JNGJ8tG4nZfEFq782G5ZzLOjNJTs5q2J2+GwUcu+xQPL7VNb0Q+
 fLfAEmRR7iqPKr1BmDl73Tvmo7cLYDAICDgajXt/hJpRj5p3TtzJbNJ3H
 3+KokaKDqRAJmoznTt4nEhDoB6QQqZF32+ouKEh8e1mhB6Ycxl2AIc/jI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="351842494"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="351842494"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 00:39:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="724769577"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="724769577"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 21 Jul 2023 00:39:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 00:39:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 00:39:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 00:39:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f9oBOLYZnS/HUG3AGYc1fELQQsuDtfBnfbaL8hGUf+wsREAQBVG60Hh6mj0FJ6ZMnzKSM8dgo3+ZMeALAoGjE4So61aTnMcD7AkGMlYsnBO3uHdiKzxsyBkF0aBSqHy1sipyoT9xh8F5xbQvonnHcq1If5EKyiQoLA6ETkCGuYa8AvOtCZfRSdxvfLs1weP3sg5fJhRaUlcH4YeFE1DuJ47d5wWMNwIH+ueZ9+rOxM/CMPlcyYo7VAHevFovklYTLSJQh3gO8BLh4tdv6gQnGcR4+lpKDWT8DQyTOYQvHc3ok1n7KjVMOcVpsu/uLeQbCaQYaSjRXOhkdM/3teLJjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/wpQF0J32vrqy+YEbORpcdfI3f3Ttn6OlwPXeysjIXY=;
 b=bYn9T3pA/Ix9HsUgMzWiElcXfQOrE5pO6ASsRSkNfiqFGeBmqtA4EFtjwDUNFxVr+RQT2QwzXxI1rF7KQYxcwcJxszdOlrA+V6ggNsp3CCdoAlxgxq5Cb0jEg6zTZolfUDVwJ9fcNAq4WjbxJ3v9gm0vyx95YJxVfm59qwd2iAhm6CCugEM/2Ak+nG1RiYxup7OFzsjsodBFCp6HAG96b0fsMu86NlCKxSkMfBhNExVabrIyrCkaYholtIHKviMrC7bZS5mc/7IDPOXIG4thMuaOiYwyCSEmF6oLdTsnCsM8uijX+z4lPYO/tGlWhnV7I5mYEIMKFfGBYGWVtOJqsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Fri, 21 Jul
 2023 07:39:36 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::18de:a383:8dc0:3cb6]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::18de:a383:8dc0:3cb6%7]) with mapi id 15.20.6588.031; Fri, 21 Jul 2023
 07:39:35 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed when we are
 really allowing.
Thread-Index: AQHZu02zwtnAOrrdhEmMe47hlA4P9a/D1IBw
Date: Fri, 21 Jul 2023 07:39:35 +0000
Message-ID: <CY5PR11MB6211C557FCF7EF65F3CFD64E953FA@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230720210353.214385-1-rodrigo.vivi@intel.com>
In-Reply-To: <20230720210353.214385-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SN7PR11MB6557:EE_
x-ms-office365-filtering-correlation-id: 93b6eb2f-00b5-42e5-c888-08db89bda18c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gywx1LLmgiwP0VN41byZnk673TMfvhjgk6LI5VT64wB6je8co/Mamgm2J7s0vYPs+mpYDrHmBhtdHLEISwSbRIKoUvNpf/bu8lKdgfWlPnSJcpf3xyW2Z5Dh9xqf/8NMAO+/ZqYqdgzqX5phvnfbFWxigXbr+ncdtfRFSGasyAbSIGoRjRGl2A5xXwb5YOC2Lm7QIZskVO8CZ3jTmMvXv5ulEIuNL+iDwT9xo+0oinVZIzp3CgFP5TmxnHOIfI0MRURxwqxaSMH4hZGf1NReRFka7TyGzAf93Pt5w7Coa1C2u16zmzsUOISArTkshibdkamELxzQGmcSWEOjMBZTcQ59IHD7WjZ1aZK70p/Nuo4qunU8y+wwei36y8is01ONoP1EL8N14B9dEZwHoIDHVmKwKeKbvjvrqAFOWVzFCncFVk3aatjDVYl7RA4T3pbL//7aPJP4Gz83r6GFdHK8OkQrWocTkdmlSNo7XvPlcWUCmK1L1TqfACT/hB1lIaTTIEB5C4iZ5LAyRpjEOrVkT32/jrV8lFw7xgiVBUNncqkXinTv9p8k8AW+Ax+x3Sa5u2RQYVpYmHKh/qEMW8sG5C3217j4MWi1Txs+I2dSEtQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(366004)(376002)(396003)(346002)(451199021)(76116006)(38070700005)(86362001)(2906002)(33656002)(55016003)(6506007)(186003)(83380400001)(38100700002)(9686003)(26005)(82960400001)(53546011)(7696005)(66946007)(122000001)(5660300002)(110136005)(66556008)(71200400001)(64756008)(66476007)(478600001)(66446008)(316002)(8676002)(41300700001)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4zF8r9qqPCOzP0FXBze1SlHbr765XFlogKJjjGBMd+0C0Tk9Q6RZKiArMvWK?=
 =?us-ascii?Q?DutJSvsJq/8OidJ6MjHakRkt/fhD6PtLsW8nTYPDLlQq1kiFS2IRclpAdEF1?=
 =?us-ascii?Q?W0WcwB7bRZGB6JHoo4W9ME/EVjIF0npA3UYr7u3adxeXdUThLSiwufICm7Lq?=
 =?us-ascii?Q?+ThN1E/xZcAROypLYuo/8duInozUn8qMsm5GEl+Xb68rMjxFl6qAy2jMC/GG?=
 =?us-ascii?Q?dvMsvl3qn0xtjZY3yIOq4u+Fly65kR9qYjjy27sUGAxnZ4C6Gti3Ioe8AZhK?=
 =?us-ascii?Q?GarqB1+QhE8CnqKUMY3Lvg4uijayN64D4Rfc8BbqHCzkg8wIwBrNLxYFoi9d?=
 =?us-ascii?Q?KZ8i4vJIXiWMFqI3J9EFIXnVe3HX4ObpkR5UAaKjpxghBCVifqDc7PrSkdVZ?=
 =?us-ascii?Q?mBaydNMSRxoik1BAFWC7iDY90KXB+0261j3+w2+bixws5mexL6bouK9M6Upt?=
 =?us-ascii?Q?wMJqj5xv3YVfDXOC0ZokEv/Uy4VfMr1GvK+tyh+zPZFHZN2KZOUmgK5sI/Hu?=
 =?us-ascii?Q?f+vfQmGy6QnDToFhGXb52Fi0GN/XMaFPW2PwQPadFOfhm6FqHHhl21TTU6rF?=
 =?us-ascii?Q?Ci/b777oCE+QRWrx0S88qKjM4aD9MQnxa3dz6Yxxg4LJ5N1JojH2K40ZWMmF?=
 =?us-ascii?Q?U1dEMK6kFAbR2UG+gXFCzZVW6OK/FG3RyGpj2gMaLU6FqJuqtJfyrB+JM22E?=
 =?us-ascii?Q?4J8AlI+ndsGzhA/6koaEEy5jQYff8u719YW/3Y2py8DKwOnqz6AZq+D2wFRx?=
 =?us-ascii?Q?UVIpMDBCo7cEe5T4F7qBkn+/9zgCeOA7NEH8UoKQIC58B8Pp+P6zyw87LS8M?=
 =?us-ascii?Q?e0t6ZBSd23txuOK/s8ilgVvVbVVDCaKoIyfb+jH70Yk0LJe6f482wqku/uvn?=
 =?us-ascii?Q?jBarZjCvB+WnQRa4jMLLs4hsC23xrEAl2DhZuvZfn/YIHFE1Websp0hozGM/?=
 =?us-ascii?Q?fsXxTK0R25a8x+KPRk4K3EyutXcDLv8qsomyPEbBwcQgkHiwmuQQYgDOwtxj?=
 =?us-ascii?Q?F6smywl0a3uWTDTzAyhe85QbCE1a6VQsxg011kfGu6w7SDR2qvpSSN7tW8Xm?=
 =?us-ascii?Q?RXKDO1nPKqHKHkeQttedEZy94Dv/HX41Y9hy3qANU15+HlIyui52l21ct62a?=
 =?us-ascii?Q?HLP5kYVG6XTXsUJ7EkdA9URrgGVgFsbg6hQ+QO+svpY2xMRosiWOmdaorNof?=
 =?us-ascii?Q?apTD1q4MHaCwB+pD/ZPkzEagqURL1gcvZZ9Hke1qqN1xXlsfsPv2xZQKJ+Uz?=
 =?us-ascii?Q?nt7rLhAOszK0G6bbiFZ3gWcZUWX4w2M3TJQsMobHpK4iK6HKUxHoJSNK7ExW?=
 =?us-ascii?Q?tEPofiJIj2DkTccXCCD5pAp8diXmzdGjpMmFC/Prb0U4+U4yvNou9ICJbrqA?=
 =?us-ascii?Q?xhTqH+F+PYEm61Yg9+a/zwFMgxk/jR0oBhZ4FVZBEkKG+KzeKoJxRazcPW4Z?=
 =?us-ascii?Q?8I0dp+/Ll2y+ftIMLwaWEa/62lTdmx0TnmA7Ss2GturThqOB5lc2w5anmrfe?=
 =?us-ascii?Q?0qBi7/ZiZ5fYAF8F1CA3sYcN7IXlytAkOBmAjh9fEJ8N8ZL+Ue76+Y8w6tA7?=
 =?us-ascii?Q?hkcSJyBGHJLD0kRVoQugjVWCa+9FYw58C5ItQdad?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93b6eb2f-00b5-42e5-c888-08db89bda18c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2023 07:39:35.4655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QarB8OOGZ3Tkwp7qouCMDObNdAY1XNKsRYbj0mYUOokWiBL6Pjs2Lw7cVyxpyGXiAiXef/hYBBFXb4PzesMXsyOSrs2yNDSEULL0hm+Ut8M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6557
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed
 when we are really allowing.
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
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Friday, July 21, 2023 2:34 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> Subject: [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed when we are
> really allowing.
>=20
> First of all it was strange to see:
> if (allowed) {
> ...
> } else {
>    D3COLD_ENABLE
> }
>=20
> But besides this misalignment, let's also use the pci d3cold_allowed usef=
ul to
> us and know that we are not really allowing d3cold.
>=20
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_pci.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index 78df43c20cd2..0c4051f4f746 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -794,6 +794,7 @@ static int xe_pci_runtime_suspend(struct device
> *dev)
>  	pci_save_state(pdev);
>=20
>  	if (xe->d3cold.allowed) {
> +		d3cold_toggle(pdev, D3COLD_ENABLE);
>  		pci_disable_device(pdev);
>  		pci_ignore_hotplug(pdev);
>  		pci_set_power_state(pdev, PCI_D3cold); @@ -823,8 +824,6
> @@ static int xe_pci_runtime_resume(struct device *dev)
>  			return err;
>=20
>  		pci_set_master(pdev);
> -	} else {
> -		d3cold_toggle(pdev, D3COLD_ENABLE);
>  	}
During s2idle , d3cold may get disabled if won't restore it's state in runt=
ime resume.
Thanks,
Anshuman Gupta.
>=20
>  	return xe_pm_runtime_resume(xe);
> --
> 2.41.0


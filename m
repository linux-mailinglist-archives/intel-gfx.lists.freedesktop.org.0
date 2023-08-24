Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 110EC786C8E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 12:07:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2D610E513;
	Thu, 24 Aug 2023 10:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD51D10E513
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 10:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692871663; x=1724407663;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=OCcyfnaCgLR6HFZGnY6nw5O4bxor9kWHSfH8dNXtmhg=;
 b=nIEToK9g0J6WIj+Xiu3idxEApJkkfC2G0tGuX9qwKBtWfxVMZzDZ6W8X
 f3j2hXPpLkDpg6P68opeuHm6snZPAcpZKg9jkhFburFwH2bqKY2jeLGlf
 mn6SwZu1qEdhAl9eb8temaWVBC69ZncAhG9/mZI45oZPJMI5zEH9lUwSd
 cEFtpqJyKMa/76awi9vjNnqEgzlHPL7sgy2pg6Yw3aNjD2M12Yvm01rxQ
 /dsmoSkuI4XV9D2wgPaXcYSqgZVe5+vhfBAHzORG3/+b7Esr7kfGsMHx2
 QwizeBn/bJgruSLdCzT6EjBBp8R1zqng/9dmRD+DnYZHZC2KrRB/pc+xq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364574028"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; 
 d="scan'208,217";a="364574028"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 03:07:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="860649824"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; 
 d="scan'208,217";a="860649824"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 24 Aug 2023 03:07:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 03:07:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 03:07:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 03:07:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TQKTlptGMvWhneAZ0mo28Zy6LfVH1/7HwZcinkm9Mw1jatHkK3UVJWhtfZAIhpOLR/XGG/NTK4lCTmbq7qM2dyhsJhwB5+QXRY0fnMTBXmV5dTS17h689hnTp/XUFMWk9yEz86BVWdKk0dRffpbOdovLFMA/ABTKWM6T5d1ls/yn4PLzwsKwseLn/bJ5kCECDdtJjkil9acCtrMlHgGbAfxJpHG7MmjCX1LDQFY6Hu0eiR+Hwe3D5WlePFsW/Al8EZyourOwQzBX3QFcYcgEGGaqNKNkbV80P1yvYD4gotS+2oKvX5iWQ4QzPJ281Gg/0WlZu7bCqN2GtSXba+/NHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ne2NbgpwK9PQ2q/enM6I5Lj4SeldFPKHioi+KpeDej8=;
 b=KETKcJPgWnYh1AWZiWx49HAVDRTgz8XMkEPg0WwwTrkxsEZAGbDt0RZkY9ZIgZ55D5OwGf8vql51KPObhAmA89t5s8OjOQOn4X9bWDZ5/P2PyI5o28iwImSaqZ/4NWyQoWf1vP0rnjgpuQmpGELzRvCl65mLdCPyGihroNX1EgvyfYAZNCRj9fe5i7/7RRjxCqZUXcqeqEgXYtoOPBkvFHqc7BqpkHw3CPNDuY6LFlTphzTYUm7RfDlF1uv2BQnkiFvW1zVM3UhHG9jZiThEsvGg9W54i+yRPTHTsvzJUGlidu4mZsJLO2kcdE2TxVXV11fCarysWsl228ABYcyNTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CH3PR11MB7868.namprd11.prod.outlook.com (2603:10b6:610:12e::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.27; Thu, 24 Aug 2023 10:07:40 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3%3]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 10:07:40 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/4] drm/i915/hdcp: Propagate aux info in DP HDCP
 functions
Thread-Index: AQHZ1Yc8r3kNiciZGEKNKADRN1oyma/5OmZE
Date: Thu, 24 Aug 2023 10:07:39 +0000
Message-ID: <DM6PR11MB31773E1037468FC86BAE60A0BA1DA@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230823055821.460045-1-suraj.kandpal@intel.com>
 <20230823055821.460045-3-suraj.kandpal@intel.com>
In-Reply-To: <20230823055821.460045-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CH3PR11MB7868:EE_
x-ms-office365-filtering-correlation-id: f0a5e326-81dc-4c34-7f58-08dba489f318
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yakql8jZeIpznwJm2mw7mmfQS4fZcGef3bztMbxBLDwc3lnzegAumtyNSMm9CRAELaqOn+ehaMKQV7G9+458XQPX9swH/H+HUrAZeLO/GntcWUbjLcEoA0EYoAHMeO1nltqHV/A/Eul3xwMh7WoFeqSFbvqVYNG4Zn8wWg+eWrXMmeYvWzpF0wK1f7qd7mt73Ko9lCZllQMe1wv5/kadziMS+FnMx+s0cN42no+UtLQ+FPl71fJ8xV4c7hNIXltedPWeTj0LhkU3XCRkE76gUTuXykVnXJphDM8sdcDeerg5ObuPyHu4sRLNYJqfbUIdSa14+E17D67gNo4czc4gfJ/F6bfhUEpU/iQRbaJytwEBFnX3Y0/r9GX/Vzt2NKnH4FxvkrdPbCWDvsiSlsjIPpHQ1F6Zx/q9dKq5vQ201LJ/AY+Z/c82Obev9ANFtjBctMIs09T1eiguQ4tbMhTkVS3Bng30zmfFcgs6UgHE8x9h/eCjDGm/BYr9Ggyk3N1Fjssi/s3v9bo9EtgmIsnEFwHMWYa+lD21VGqWxVhJraMIvz7sZmcN7HfWPcotreSPMDGxzPjxvKX6xzwgraS3yEMn7ZMCftzk95ldZDAhn0Q40Nl1WgtwK7i4JeNfslse
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(136003)(396003)(376002)(186009)(1800799009)(451199024)(66476007)(66446008)(54906003)(64756008)(66946007)(76116006)(66556008)(316002)(82960400001)(122000001)(478600001)(19627405001)(110136005)(91956017)(26005)(55016003)(38100700002)(38070700005)(33656002)(71200400001)(41300700001)(53546011)(55236004)(6506007)(7696005)(86362001)(2906002)(9686003)(4326008)(8936002)(8676002)(83380400001)(52536014)(107886003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iOaj8w0EhMpoaqNaZVZe7wCbOWEiiGAiTARja+scFO6bAk8VfDvUybLET/BT?=
 =?us-ascii?Q?8hTbxyzi4ss7EXH96ss2lh96s+xpJWlDvnw1mXcyPVbfM3L2r8pSsrXatL/y?=
 =?us-ascii?Q?nkpvt04idfOLkjfDoY/2w1zm8Dh7LD0TT5Ua+THZrQkCRGsOUws6YDYJr7IY?=
 =?us-ascii?Q?TYqi2aUETzzfjtUcrxT4e9sPZZIP8Rv5RWRLMG27T+gGfTchqUL6BZxB/5bM?=
 =?us-ascii?Q?ry+L3hZUPm5igc6w+bUyqfrGBbK52mhgnVJCb9hKq+A9ECkz01wjWotEz2rt?=
 =?us-ascii?Q?UjN2jIAWgtoXwfLg/xDlKxF+0slX5b59N066HJZBHVKcGqGr3kUBRZXNVs8E?=
 =?us-ascii?Q?TxMLpBrMLiIkoaVejVV6DfknhoNKbM5Zy+C5wwl1KJKQ3ESoudpW4lxlkJnJ?=
 =?us-ascii?Q?1/C1FIWtImSuiRUH+SF8xi+m6r3IlFqEAQN8A3ulmIitvrqOeF03+c//QGgC?=
 =?us-ascii?Q?vOSd+7NS7JeNZErVKMSf3cn839GnrEgv/N6K62S7tQGwfLrmNo5niWH2V2CQ?=
 =?us-ascii?Q?k/rEQZaQff5JDG+Y77I6rzHk0VsmL/vqHqJD2AL1D2f661WaZT2V55GQmybg?=
 =?us-ascii?Q?4FLE4/VzWJKAnlclv2ZuRSiw1IEJMedaf34GFkQjmRXEHGfvvFV69hlusFk/?=
 =?us-ascii?Q?FxlMPjAQCOsOrhfCtOefqzdmaKkx4jzJ1f2rwR/93qGQlEUcTMw1YiQ8d5as?=
 =?us-ascii?Q?UEZboW7VgayV+dpzxxNSxcrsP+9Jzy44m8ApgPjh458nZwKc3SfJs18pJAOm?=
 =?us-ascii?Q?z/KcR4UtE3hbOPCzPPGLKAhnyARuvP1ghOi8X79xc1IHSM6P0Zy0OIMq7qiM?=
 =?us-ascii?Q?rINOpF2xMkzvyuCsgeyIysWSMaEE2yt4wVOi2VoLv5l+DMiG/styn7cmSbSG?=
 =?us-ascii?Q?C5eO4yCUudXPSONqXqxjyo9+5eGUi3ZIrtagLtIdx/lV+zOav1hi/aJE5J2G?=
 =?us-ascii?Q?CWu9gkvMz8BwKYmGkLeUdSN3+XThVFUDJuGgaA81YsMmM5MuMLIMAElpusn2?=
 =?us-ascii?Q?cC32yR7LZh9r90ChmblFXIrDbyz5jhajhe5ZPFwee0z+abvcDa0BxSGPWkhk?=
 =?us-ascii?Q?CbCutqduNpD/wDyvSLx5pH1RodUmjPSJtapumcyR81rwG8h06wIO97jBWLIO?=
 =?us-ascii?Q?fVPpPz1b68XEkyxiLUOk8cf2IFlhVIOuRcwnzMzGWAm22ToN/Bioom6Ap6aS?=
 =?us-ascii?Q?aKumBBQtAz0vZlakBAjnUj/u+a5v0PyWtFe4DK42ektT+OZXOdSV7CW4bGVF?=
 =?us-ascii?Q?zSgTHPoLsmi3d5El3N3ADI7s2bUHby/qwAf2WjFlVKfQo6t1+5f8CGLn+H2p?=
 =?us-ascii?Q?ASFM7ang8spyIgnZJEhYYzyxR4zcwQDgctjIzg8/ykoAfAa3+qaSyysHNepY?=
 =?us-ascii?Q?v0VwZCS/D59juTll47WvFn+ZWKHyuaNVblx/LxuHG16oh/CUFGMHGaLfaafO?=
 =?us-ascii?Q?OmcBcj4nnZAoOH/6FL0VW5NbRN2HOVTjPM3CQxQ3E4QIHWr2lVQ18HDA2kVr?=
 =?us-ascii?Q?Bc0JUEkk9V3u7lmD8chG0cgjHb7A5QAg2EQqX1zNQxDKJiEQLLS2jFh0VSaI?=
 =?us-ascii?Q?mEi8OusTQ9kFAVkry3NrShgLYbpJqOo6wCsLGlT3?=
Content-Type: multipart/alternative;
 boundary="_000_DM6PR11MB31773E1037468FC86BAE60A0BA1DADM6PR11MB3177namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0a5e326-81dc-4c34-7f58-08dba489f318
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 10:07:39.8588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tC/MtPxW8/k2znDjb9Ngy69wA/EAK0W1yCnbTZQZnE4fdYHAHCeINHuVTJAQDyt0WcBfwFvkOD+HiS0a6OqzKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7868
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/hdcp: Propagate aux info in
 DP HDCP functions
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
Cc: "uma.shakar@intel.com" <uma.shakar@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_DM6PR11MB31773E1037468FC86BAE60A0BA1DADM6PR11MB3177namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------
________________________________
From: Kandpal, Suraj <suraj.kandpal@intel.com>
Sent: Wednesday, August 23, 2023 11:28 AM
To: intel-gfx@lists.freedesktop.org <intel-gfx@lists.freedesktop.org>
Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; uma.shakar@intel.com <u=
ma.shakar@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>; Kandpal, Su=
raj <suraj.kandpal@intel.com>
Subject: [PATCH v2 2/4] drm/i915/hdcp: Propagate aux info in DP HDCP functi=
ons

We were propagating dig_port info to dp hdcp2 specific functions.
Let us clean that up and send intel_connector in the following
functions: intel_dp_hdcp2_wait_for_msg, get_receiver_id_list_rx_info,
intel_dp_hdcp2_read_rx_status.
This optimises mst scenarios where aux ends up being remote and not
stored in dig_port and dig_port can always be derived from
intel_connector if needed.

--v2
-Fix Typo [Arun]
-Dont pass drm_dp core structures [Arun]
-Fix commit message styling [Arun]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 39 +++++++++++---------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm=
/i915/display/intel_dp_hdcp.c
index 6cd42363837a..59ef77476cb9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -331,10 +331,11 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_da=
ta[] =3D {
 };

 static int
-intel_dp_hdcp2_read_rx_status(struct intel_digital_port *dig_port,
+intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,
                               u8 *rx_status)
 {
-       struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
+       struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
+       struct intel_digital_port *dig_port =3D intel_attached_dig_port(con=
nector);
         ssize_t ret;

         ret =3D drm_dp_dpcd_read(&dig_port->dp.aux,
@@ -350,14 +351,14 @@ intel_dp_hdcp2_read_rx_status(struct intel_digital_po=
rt *dig_port,
 }

 static
-int hdcp2_detect_msg_availability(struct intel_digital_port *dig_port,
+int hdcp2_detect_msg_availability(struct intel_connector *connector,
                                   u8 msg_id, bool *msg_ready)
 {
         u8 rx_status;
         int ret;

         *msg_ready =3D false;
-       ret =3D intel_dp_hdcp2_read_rx_status(dig_port, &rx_status);
+       ret =3D intel_dp_hdcp2_read_rx_status(connector, &rx_status);
         if (ret < 0)
                 return ret;

@@ -383,12 +384,11 @@ int hdcp2_detect_msg_availability(struct intel_digita=
l_port *dig_port,
 }

 static ssize_t
-intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
+intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,
                             const struct hdcp2_dp_msg_data *hdcp2_msg_data=
)
 {
-       struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
-       struct intel_dp *dp =3D &dig_port->dp;
-       struct intel_hdcp *hdcp =3D &dp->attached_connector->hdcp;
+       struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
+       struct intel_hdcp *hdcp =3D &connector->hdcp;
         u8 msg_id =3D hdcp2_msg_data->msg_id;
         int ret, timeout;
         bool msg_ready =3D false;
@@ -411,8 +411,8 @@ intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *=
dig_port,
                  * the timeout at wait for CP_IRQ.
                  */
                 intel_dp_hdcp_wait_for_cp_irq(hdcp, timeout);
-               ret =3D hdcp2_detect_msg_availability(dig_port,
-                                                   msg_id, &msg_ready);
+               ret =3D hdcp2_detect_msg_availability(connector, msg_id,
+                                                   &msg_ready);
                 if (!msg_ready)
                         ret =3D -ETIMEDOUT;
         }
@@ -445,6 +445,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *co=
nnector,
         u8 *byte =3D buf;
         ssize_t ret, bytes_to_write, len;
         const struct hdcp2_dp_msg_data *hdcp2_msg_data;
+       struct drm_dp_aux *aux;

         hdcp2_msg_data =3D get_hdcp2_dp_msg_data(*byte);
         if (!hdcp2_msg_data)
@@ -452,6 +453,8 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *co=
nnector,

         offset =3D hdcp2_msg_data->offset;

+       aux =3D &dig_port->dp.aux;
+
         /* No msg_id in DP HDCP2.2 msgs */
         bytes_to_write =3D size - 1;
         byte++;
@@ -460,7 +463,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *co=
nnector,
                 len =3D bytes_to_write > DP_AUX_MAX_PAYLOAD_BYTES ?
                                 DP_AUX_MAX_PAYLOAD_BYTES : bytes_to_write;

-               ret =3D drm_dp_dpcd_write(&dig_port->dp.aux,
+               ret =3D drm_dp_dpcd_write(aux,
                                         offset, (void *)byte, len);
                 if (ret < 0)
                         return ret;
@@ -474,8 +477,10 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *c=
onnector,
 }

 static
-ssize_t get_receiver_id_list_rx_info(struct intel_digital_port *dig_port, =
u32 *dev_cnt, u8 *byte)
+ssize_t get_receiver_id_list_rx_info(struct intel_connector *connector,
+                                    u32 *dev_cnt, u8 *byte)
 {
+       struct intel_digital_port *dig_port =3D intel_attached_dig_port(con=
nector);
         ssize_t ret;
         u8 *rx_info =3D byte;

@@ -500,8 +505,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *con=
nector,
 {
         struct intel_digital_port *dig_port =3D intel_attached_dig_port(co=
nnector);
         struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev)=
;
-       struct intel_dp *dp =3D &dig_port->dp;
-       struct intel_hdcp *hdcp =3D &dp->attached_connector->hdcp;
+       struct intel_hdcp *hdcp =3D &connector->hdcp;
         unsigned int offset;
         u8 *byte =3D buf;
         ssize_t ret, bytes_to_recv, len;
@@ -515,7 +519,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *con=
nector,
                 return -EINVAL;
         offset =3D hdcp2_msg_data->offset;

-       ret =3D intel_dp_hdcp2_wait_for_msg(dig_port, hdcp2_msg_data);
+       ret =3D intel_dp_hdcp2_wait_for_msg(connector, hdcp2_msg_data);
         if (ret < 0)
                 return ret;

@@ -525,7 +529,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *con=
nector,
         byte++;

         if (msg_id =3D=3D HDCP_2_2_REP_SEND_RECVID_LIST) {
-               ret =3D get_receiver_id_list_rx_info(dig_port, &dev_cnt, by=
te);
+               ret =3D get_receiver_id_list_rx_info(connector, &dev_cnt, b=
yte);
                 if (ret < 0)
                         return ret;

@@ -609,7 +613,8 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port=
 *dig_port,
         u8 rx_status;
         int ret;

-       ret =3D intel_dp_hdcp2_read_rx_status(dig_port, &rx_status);
+       ret =3D intel_dp_hdcp2_read_rx_status(connector,
+                                           &rx_status);
         if (ret)
                 return ret;

--
2.25.1


--_000_DM6PR11MB31773E1037468FC86BAE60A0BA1DADM6PR11MB3177namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Reviewed-by: Arun R Murthy &lt;arun.r.murthy@intel.com&gt;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thanks and Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Arun R Murthy</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
-------------------</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Kandpal, Suraj &lt;su=
raj.kandpal@intel.com&gt;<br>
<b>Sent:</b> Wednesday, August 23, 2023 11:28 AM<br>
<b>To:</b> intel-gfx@lists.freedesktop.org &lt;intel-gfx@lists.freedesktop.=
org&gt;<br>
<b>Cc:</b> Nautiyal, Ankit K &lt;ankit.k.nautiyal@intel.com&gt;; uma.shakar=
@intel.com &lt;uma.shakar@intel.com&gt;; Murthy, Arun R &lt;arun.r.murthy@i=
ntel.com&gt;; Kandpal, Suraj &lt;suraj.kandpal@intel.com&gt;<br>
<b>Subject:</b> [PATCH v2 2/4] drm/i915/hdcp: Propagate aux info in DP HDCP=
 functions</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">We were propagating dig_port info to dp hdcp2 spec=
ific functions.<br>
Let us clean that up and send intel_connector in the following<br>
functions: intel_dp_hdcp2_wait_for_msg, get_receiver_id_list_rx_info,<br>
intel_dp_hdcp2_read_rx_status.<br>
This optimises mst scenarios where aux ends up being remote and not<br>
stored in dig_port and dig_port can always be derived from<br>
intel_connector if needed.<br>
<br>
--v2<br>
-Fix Typo [Arun]<br>
-Dont pass drm_dp core structures [Arun]<br>
-Fix commit message styling [Arun]<br>
<br>
Signed-off-by: Suraj Kandpal &lt;suraj.kandpal@intel.com&gt;<br>
---<br>
&nbsp;drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 39 +++++++++++--------=
-<br>
&nbsp;1 file changed, 22 insertions(+), 17 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm=
/i915/display/intel_dp_hdcp.c<br>
index 6cd42363837a..59ef77476cb9 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c<br>
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c<br>
@@ -331,10 +331,11 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_da=
ta[] =3D {<br>
&nbsp;};<br>
&nbsp;<br>
&nbsp;static int<br>
-intel_dp_hdcp2_read_rx_status(struct intel_digital_port *dig_port,<br>
+intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 *rx_status)<br>
&nbsp;{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i915 =3D to_=
i915(dig_port-&gt;base.base.dev);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i915 =3D to_=
i915(connector-&gt;base.dev);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D intel_attached_dig_port(connector);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ssize_t ret;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D drm_dp_dpcd_read(&=
amp;dig_port-&gt;dp.aux,<br>
@@ -350,14 +351,14 @@ intel_dp_hdcp2_read_rx_status(struct intel_digital_po=
rt *dig_port,<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static<br>
-int hdcp2_detect_msg_availability(struct intel_digital_port *dig_port,<br>
+int hdcp2_detect_msg_availability(struct intel_connector *connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 msg_id, bool *msg=
_ready)<br>
&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 rx_status;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int ret;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *msg_ready =3D false;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_dp_hdcp2_read_rx_status=
(dig_port, &amp;rx_status);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_dp_hdcp2_read_rx_status=
(connector, &amp;rx_status);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
&nbsp;<br>
@@ -383,12 +384,11 @@ int hdcp2_detect_msg_availability(struct intel_digita=
l_port *dig_port,<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static ssize_t<br>
-intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,<br>
+intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; const struct hdcp2_dp_msg_data *hdcp2_msg_data)<br>
&nbsp;{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i915 =3D to_=
i915(dig_port-&gt;base.base.dev);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_dp *dp =3D &amp;dig_port=
-&gt;dp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_hdcp *hdcp =3D &amp;dp-&=
gt;attached_connector-&gt;hdcp;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i915 =3D to_=
i915(connector-&gt;base.dev);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_hdcp *hdcp =3D &amp;conn=
ector-&gt;hdcp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 msg_id =3D hdcp2_msg_da=
ta-&gt;msg_id;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int ret, timeout;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool msg_ready =3D false;<=
br>
@@ -411,8 +411,8 @@ intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *=
dig_port,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; * the timeout at wait for CP_IRQ.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; intel_dp_hdcp_wait_for_cp_irq(hdcp, timeout);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D hdcp2_detect_msg_availability(dig_port,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; msg_id, &amp;msg_ready);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D hdcp2_detect_msg_availability(connector, msg_id,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; &amp;msg_ready);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; if (!msg_ready)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =
=3D -ETIMEDOUT;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
@@ -445,6 +445,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *co=
nnector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 *byte =3D buf;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ssize_t ret, bytes_to_writ=
e, len;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct hdcp2_dp_msg_=
data *hdcp2_msg_data;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_dp_aux *aux;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp2_msg_data =3D get_hdc=
p2_dp_msg_data(*byte);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!hdcp2_msg_data)<br>
@@ -452,6 +453,8 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *co=
nnector,<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; offset =3D hdcp2_msg_data-=
&gt;offset;<br>
&nbsp;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; aux =3D &amp;dig_port-&gt;dp.aux;<br>
+<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* No msg_id in DP HDCP2.2=
 msgs */<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bytes_to_write =3D size - =
1;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; byte++;<br>
@@ -460,7 +463,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *co=
nnector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; len =3D bytes_to_write &gt; DP_AUX_MAX_PAYLOAD_BYTES =
?<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_AUX_MAX_PAYLOAD_BYTES : bytes=
_to_write;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D drm_dp_dpcd_write(&amp;dig_port-&gt;dp.aux,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D drm_dp_dpcd_write(aux,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; offset, (void *)byte, len);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retur=
n ret;<br>
@@ -474,8 +477,10 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *c=
onnector,<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static<br>
-ssize_t get_receiver_id_list_rx_info(struct intel_digital_port *dig_port, =
u32 *dev_cnt, u8 *byte)<br>
+ssize_t get_receiver_id_list_rx_info(struct intel_connector *connector,<br=
>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 *dev_cnt,=
 u8 *byte)<br>
&nbsp;{<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D intel_attached_dig_port(connector);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ssize_t ret;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 *rx_info =3D byte;<br>
&nbsp;<br>
@@ -500,8 +505,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *con=
nector,<br>
&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port =
*dig_port =3D intel_attached_dig_port(connector);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i=
915 =3D to_i915(dig_port-&gt;base.base.dev);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_dp *dp =3D &amp;dig_port=
-&gt;dp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_hdcp *hdcp =3D &amp;dp-&=
gt;attached_connector-&gt;hdcp;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_hdcp *hdcp =3D &amp;conn=
ector-&gt;hdcp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int offset;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 *byte =3D buf;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ssize_t ret, bytes_to_recv=
, len;<br>
@@ -515,7 +519,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *con=
nector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return -EINVAL;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; offset =3D hdcp2_msg_data-=
&gt;offset;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_dp_hdcp2_wait_for_msg(d=
ig_port, hdcp2_msg_data);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_dp_hdcp2_wait_for_msg(c=
onnector, hdcp2_msg_data);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
&nbsp;<br>
@@ -525,7 +529,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *con=
nector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; byte++;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (msg_id =3D=3D HDCP_2_2=
_REP_SEND_RECVID_LIST) {<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D get_receiver_id_list_rx_info(dig_port, &amp;dev_cnt, byt=
e);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D get_receiver_id_list_rx_info(connector, &amp;dev_cnt, by=
te);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retur=
n ret;<br>
&nbsp;<br>
@@ -609,7 +613,8 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port=
 *dig_port,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 rx_status;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int ret;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_dp_hdcp2_read_rx_status=
(dig_port, &amp;rx_status);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_dp_hdcp2_read_rx_status=
(connector,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;rx_status);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
&nbsp;<br>
-- <br>
2.25.1<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_DM6PR11MB31773E1037468FC86BAE60A0BA1DADM6PR11MB3177namp_--

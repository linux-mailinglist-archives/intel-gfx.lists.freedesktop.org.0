Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6244D7837FC
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 04:33:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C31710E174;
	Tue, 22 Aug 2023 02:33:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFD9B10E174
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 02:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692671604; x=1724207604;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=VUeOQqe/NR+wv8SOmjWmTQgoUpzngIjvL8N3jSGDd58=;
 b=d/sQJH/hh1MlGHTkf3OFAXhaqT155HVUzi2oYn1V07Ok+83bDmsMKnwb
 NIjqUZeuJrZRNMNZ2sIFxIS+sy0/vxUncR5FmEsdqSpt9igQVgQoPLJC1
 R1QF5lDOQI/7qAoO/JDknwUwBBJ+gI+NPKHLttkwGglwhy7dszXmJOykC
 SWxBFvuxUgwlfNUfzUsd9GR11Y7FlXH8ePa44x9YkrSljy7YghxvulatX
 rQkkkQs2TrbssyhU/2rTckwSr4IAzU5J3GnJnAsz/i/euS55j4v3HQkHA
 s5DDwALRVdNHyT0sAkY2EPC6bjvVqz4b/FI6ukTIuHsx3xKsOreA4XKq4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="358747504"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; 
 d="scan'208,217";a="358747504"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 19:33:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="909930111"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; 
 d="scan'208,217";a="909930111"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 21 Aug 2023 19:33:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 19:33:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 19:33:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 19:33:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 19:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ua/l00qRKYmQNpy69PJm3zQ2liMpXoOdYHg3n+fybFWtrP64AdwIqIuJyuuSDJcPAmlgJ75wm7I2bcyQvV4A5WtGrsxfC+C1Y/I5tc3LfrPCncaQkWdC4oqsCw7tChtn984utlW4XDiR9/WDdX9N+VMG/DLu4ChraAjK0/49g2o+oZH2oJE2iA201ahrTABMFkrtk23DVHwfJA9lbJXTtuQtnBpBdKgprgPK79xOR+vfzU9tJ9dmmsmWR3wrmC6dtcPLrdzdQJN+HlkxMvukw4vVh2SX+nAIXPpsSv7aXm+bPWBqmx6L/EszshC4dqy5Nr9x1Dj9ljlkOQc1mAmc+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3ZwQO8T9NtWgRqIl4ZvxU9dG6MiZdg0CBrH6C4epHmE=;
 b=d0DHjWs2MGY92SPxspYotV+nr9hzzx8cL1uTSqyvTqII/dfiCoiJoC45oxqIZVlNjw6NjRC15DvoKjEBt3KP6N4A6X24og/AeEyPUsiDtjQnNIYaHuvDin5tYLEtieu3APs+oo7U6zz1H4LaYRA2aL2D3wSg9fHfRXmPN3E70546T7eHuXo1LTsvaR/bilpynD8JCoFBqlr27BpYSV+cUPNPiJDCUEu2RGlKLKvXlLpdUt70DRqBnrV8kFgsxybQrD4aN6XSJ7u13Wj2eW27JVwYblsXMuXDmn3zHG2uqavqml1vtkC5/vSFScc9PdMLglNEC4hbQQ+wTBb3EP5R/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CO1PR11MB5044.namprd11.prod.outlook.com (2603:10b6:303:92::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.24; Tue, 22 Aug 2023 02:33:21 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::4c8b:f829:4256:c9e3%3]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 02:33:21 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/4] drm/i915/hdcp: Use intel_connector argument in
 intel_hdcp_shim
Thread-Index: AQHZy19EruzLXbfikkmnj02eYyEbIa/1qv2d
Date: Tue, 22 Aug 2023 02:33:21 +0000
Message-ID: <DM6PR11MB3177CB1C26F5DF31ACF2793DBA1FA@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230810074758.154968-1-suraj.kandpal@intel.com>
 <20230810074758.154968-2-suraj.kandpal@intel.com>
In-Reply-To: <20230810074758.154968-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CO1PR11MB5044:EE_
x-ms-office365-filtering-correlation-id: 6920c10e-6879-40a0-79ac-08dba2b826d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fhtg2GZYHCx1Kj1u5c3OGfnilaOnBNfJQeF/mcgidkaPUFfedfxBUkntlzLLO64cudy+itdJjRF4VYLo9QD33TR96F7SeKqiCqDEAE4m5swvMfJ+sC9IxBnJ8t7BXiwPc/k+/KDMZh/hPojEuwadqQIdJ8b6oVrY7VMTN2r9OfHj+hReGvLz5hTE9j97mYGRuOtq+Jo/N9c0CucnZ2eCsmGW6ItmXsxafabX6Vk6m7JRRDfRPpGrUVELMuc2w1dtKUkR0wrGlUkPH6D+5DwMsTtJpd/GwMjMbwCemOFEQ3QGJzp6ReOFVRbFfLdi2AM0W6JE56VUu3jTIpqKpqvTzt87InwzKwsrhamGLlhgqsNOeOo/LxYZ2U3yEogL7I96126vJ+cym5oW1KH4mRQU9+S4CTcl10z51+jTtRp45KAHowzOYEXrFe4C2DfmiKWYc9cijj+PWq98CIw+K3UFQiFD8eYCBO00kLuCL9WTQ0x3OqC1gqrcwtKcDScfFTlhcudbheE/UcoP1IxLLDElFmstO4WRbyQAUOL9jO9OuIR3A2tqqHWsNYgk0fwZqQO6fyDi9qn+8z4g4uzbbHHKEFrflvWeSV76j5POJrKQH35mwJgLEyCxna4fHlzUlUO0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(1800799009)(186009)(451199024)(54906003)(66446008)(76116006)(66476007)(66556008)(64756008)(316002)(66946007)(9686003)(82960400001)(110136005)(91956017)(8676002)(8936002)(107886003)(4326008)(41300700001)(122000001)(478600001)(55016003)(71200400001)(38100700002)(38070700005)(53546011)(6506007)(83380400001)(30864003)(2906002)(86362001)(19627405001)(7696005)(5660300002)(33656002)(26005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qFEX6DYTIG5D8oY5vBZasMAjGBp60XR3K3FU3IVcKIaS1jgKd+K7qa36gdpP?=
 =?us-ascii?Q?sKxeeRMl1CvWYT7doLmm2LZStFIYFq1tZSFBwPARCYiB8jKmr4bXB5SmE880?=
 =?us-ascii?Q?6jPtK7ozHfdsIBwlvEI/F0B0JnDKgxGiM5OGUpioKduv3n/QkhrUQfYdVn7+?=
 =?us-ascii?Q?Tr8o2e9JBiLekqgk7eGcgHdFVLCE3+zsmKCb6vkgIKGDKrNLgYIBgde8jxs/?=
 =?us-ascii?Q?HNNFTs91gADOOAQq9QCXkX+2HcMJLbcJ8d4Bgo06hJ8ls2+JSDpfm8Gs+pYt?=
 =?us-ascii?Q?RJ3BhHs2l026ipkhi9KGdPzEyN2DF34MaCjjG47tKqkkeRDCXOHEuA39CGde?=
 =?us-ascii?Q?IaoAy0QJHcAaAm7+7bheDE0YUa4s+or6pSwSrgjmsJHGfPZdnTx8JyV3boFY?=
 =?us-ascii?Q?wNZPhQVCHPNzI1niXyCahXJ3rKY/DNLfl2m7OQWfZBs5UhVoE6Zlx123vllZ?=
 =?us-ascii?Q?tHmWKpPzOfGFDnBudqVqOQ9O+0m3XvmpVE0g7CvDuN8mvg2U/x/qdBpzsTVT?=
 =?us-ascii?Q?qirdHiu0a2+MMB5QFNTAZAB11D/pxVIufJlhTOpoBmFl0PVLkB5e3R5tebYD?=
 =?us-ascii?Q?h1XoaVj2AnfrCbKH7nWSQZa4mxUzzoIjbqvJdO+w36GAjwK3WfT8d74DAbpv?=
 =?us-ascii?Q?cTgbTR2wTl+R2Q0lckpeCFq8CGBLie+5Age8f2evfertzYBzcctncC+6Qsa0?=
 =?us-ascii?Q?nwRDF5X177J7lJq4xmMTPSAnHnyt8aihPYLkpiwZ/2lQUcw/L2AezvRt2E1z?=
 =?us-ascii?Q?HJbDBMWaDef/cu8OlxqV0Vv9hWPK+VEQ77DEMrLGv+Oc9O0PH2nu+woPEOy/?=
 =?us-ascii?Q?kNSf3jU1rs5yaZRwNWi1CyC0cVqxRBlIhwN866qZOD40P9FGhK+A8Wmy87SJ?=
 =?us-ascii?Q?K5VwqyUCNuqaWfrOEY725aCZLrxU1tPZda/Ag0psP5SOTIvCzK08xbpCpkek?=
 =?us-ascii?Q?1/i79VMMsqTQ2aKtNe5tmn4xjAMpkbSBQgVzkORsfi/Rkx+Rv3wO6cwL/0wA?=
 =?us-ascii?Q?JEx0+n7XVF7yt0FiBEVRMsOxaGNB+nBHZnGNF71NhbQqGZ8fYVFW65cAzooO?=
 =?us-ascii?Q?DlCVnLAW9rqLplRnXI47vb6EZI5RWIZmjUENvihuND/n6Ws5rXVKz8oVwY7c?=
 =?us-ascii?Q?x4LssWmh+eG7ELqbvkuV9waNdHSXaHXa6P4CP0ox3cSFhRDn9VkPl2Iycdlo?=
 =?us-ascii?Q?5WH1r2/lEM99//tskDwd8mHDmuUwBpXVtHiDHDNl0aS6xLNVcxtnnrRZMNQO?=
 =?us-ascii?Q?96MvsG3l4E9/lqUc42nYpegBOMokejZtmyFtg6+TjPr3EYEdgl8FWIgZ7dbK?=
 =?us-ascii?Q?lGCe4SF2Pmt2lELSRJz9OxuPar78IY+c67TyRk5fxPYJvWjx8gIl7u48Lxnj?=
 =?us-ascii?Q?5HhqtOi5b/pyGuXb5lhbkp6P1YRrSqYk6MqLBkdL/Znn6IRCQZnnmVCfM8Ki?=
 =?us-ascii?Q?pN1NFmA12zh0rykw5S1Z+W2AwMfN6+YFDjPbUst67Etp2duUvjz7zR9zOgJJ?=
 =?us-ascii?Q?VbbgHAAu3B3soF39kVgTVk1A7KRmmeeYtJ2QrkyXBSuG6FjIzlKLf6GRCNMQ?=
 =?us-ascii?Q?/qxbnYPZY0+7kQkg9Wddb6JYzL0pr04VXW3CUAw2?=
Content-Type: multipart/alternative;
 boundary="_000_DM6PR11MB3177CB1C26F5DF31ACF2793DBA1FADM6PR11MB3177namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6920c10e-6879-40a0-79ac-08dba2b826d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2023 02:33:21.1512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GjbO7edhvjKIGpbBOVx3zQq/sZo8QVD0BRAoPyHLI8xTUmO3kNI8xtTQ38uhNnNTMcFTV5vEbaxQVutOxhAORw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5044
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/hdcp: Use intel_connector
 argument in intel_hdcp_shim
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

--_000_DM6PR11MB3177CB1C26F5DF31ACF2793DBA1FADM6PR11MB3177namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
________________________________
From: Kandpal, Suraj <suraj.kandpal@intel.com>
Sent: Thursday, August 10, 2023 1:17 PM
To: intel-gfx@lists.freedesktop.org <intel-gfx@lists.freedesktop.org>
Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; uma.shakar@intel.com <u=
ma.shakar@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>; Kandpal, Su=
raj <suraj.kandpal@intel.com>
Subject: [PATCH 1/4] drm/i915/hdcp: Use intel_connector argument in intel_h=
dcp_shim

Update intel_hdcp_shim funcs specifically read_2_2_message,
write_2_2_message and config_stream_type to use intel_connector
argument instead of intel_digital_port as this will help in getting
correct aux later for dp mst scenarios also already hdcp funcs
derive digital_port from connector and then many funcs again get back
the connector from dig_port which doesn't seem right.
Connector specific hdcp functions can derive dig_port on need basis.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  6 ++--
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 10 ++++---
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 30 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  6 ++--
 4 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/g=
pu/drm/i915/display/intel_display_types.h
index 731f2ec04d5c..c62f4ec315e8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -504,11 +504,11 @@ struct intel_hdcp_shim {
                                 bool *capable);

         /* Write HDCP2.2 messages */
-       int (*write_2_2_msg)(struct intel_digital_port *dig_port,
+       int (*write_2_2_msg)(struct intel_connector *connector,
                              void *buf, size_t size);

         /* Read HDCP2.2 messages */
-       int (*read_2_2_msg)(struct intel_digital_port *dig_port,
+       int (*read_2_2_msg)(struct intel_connector *connector,
                             u8 msg_id, void *buf, size_t size);

         /*
@@ -516,7 +516,7 @@ struct intel_hdcp_shim {
          * type to Receivers. In DP HDCP2.2 Stream type is one of the inpu=
t to
          * the HDCP2.2 Cipher for En/De-Cryption. Not applicable for HDMI.
          */
-       int (*config_stream_type)(struct intel_digital_port *dig_port,
+       int (*config_stream_type)(struct intel_connector *connector,
                                   bool is_repeater, u8 type);

         /* Enable/Disable HDCP 2.2 stream encryption on DP MST Transport L=
ink */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm=
/i915/display/intel_dp_hdcp.c
index e0c177161407..6cd42363837a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -437,9 +437,10 @@ static const struct hdcp2_dp_msg_data *get_hdcp2_dp_ms=
g_data(u8 msg_id)
 }

 static
-int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
+int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
                              void *buf, size_t size)
 {
+       struct intel_digital_port *dig_port =3D intel_attached_dig_port(con=
nector);
         unsigned int offset;
         u8 *byte =3D buf;
         ssize_t ret, bytes_to_write, len;
@@ -494,9 +495,10 @@ ssize_t get_receiver_id_list_rx_info(struct intel_digi=
tal_port *dig_port, u32 *d
 }

 static
-int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
+int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
                             u8 msg_id, void *buf, size_t size)
 {
+       struct intel_digital_port *dig_port =3D intel_attached_dig_port(con=
nector);
         struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev)=
;
         struct intel_dp *dp =3D &dig_port->dp;
         struct intel_hdcp *hdcp =3D &dp->attached_connector->hdcp;
@@ -574,7 +576,7 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *=
dig_port,
 }

 static
-int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *dig_port,
+int intel_dp_hdcp2_config_stream_type(struct intel_connector *connector,
                                       bool is_repeater, u8 content_type)
 {
         int ret;
@@ -593,7 +595,7 @@ int intel_dp_hdcp2_config_stream_type(struct intel_digi=
tal_port *dig_port,
         stream_type_msg.msg_id =3D HDCP_2_2_ERRATA_DP_STREAM_TYPE;
         stream_type_msg.stream_type =3D content_type;

-       ret =3D  intel_dp_hdcp2_write_msg(dig_port, &stream_type_msg,
+       ret =3D  intel_dp_hdcp2_write_msg(connector, &stream_type_msg,
                                         sizeof(stream_type_msg));

         return ret < 0 ? ret : 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i9=
15/display/intel_hdcp.c
index a42549fa9691..cb45f21f71eb 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1415,7 +1415,6 @@ static int hdcp2_deauthenticate_port(struct intel_con=
nector *connector)
 /* Authentication flow starts from here */
 static int hdcp2_authentication_key_exchange(struct intel_connector *conne=
ctor)
 {
-       struct intel_digital_port *dig_port =3D intel_attached_dig_port(con=
nector);
         struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
         struct intel_hdcp *hdcp =3D &connector->hdcp;
         union {
@@ -1437,12 +1436,12 @@ static int hdcp2_authentication_key_exchange(struct=
 intel_connector *connector)
         if (ret < 0)
                 return ret;

-       ret =3D shim->write_2_2_msg(dig_port, &msgs.ake_init,
+       ret =3D shim->write_2_2_msg(connector, &msgs.ake_init,
                                   sizeof(msgs.ake_init));
         if (ret < 0)
                 return ret;

-       ret =3D shim->read_2_2_msg(dig_port, HDCP_2_2_AKE_SEND_CERT,
+       ret =3D shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_CERT,
                                  &msgs.send_cert, sizeof(msgs.send_cert));
         if (ret < 0)
                 return ret;
@@ -1471,11 +1470,11 @@ static int hdcp2_authentication_key_exchange(struct=
 intel_connector *connector)
         if (ret < 0)
                 return ret;

-       ret =3D shim->write_2_2_msg(dig_port, &msgs.no_stored_km, size);
+       ret =3D shim->write_2_2_msg(connector, &msgs.no_stored_km, size);
         if (ret < 0)
                 return ret;

-       ret =3D shim->read_2_2_msg(dig_port, HDCP_2_2_AKE_SEND_HPRIME,
+       ret =3D shim->read_2_2_msg(connector, HDCP_2_2_AKE_SEND_HPRIME,
                                  &msgs.send_hprime, sizeof(msgs.send_hprim=
e));
         if (ret < 0)
                 return ret;
@@ -1486,7 +1485,7 @@ static int hdcp2_authentication_key_exchange(struct i=
ntel_connector *connector)

         if (!hdcp->is_paired) {
                 /* Pairing is required */
-               ret =3D shim->read_2_2_msg(dig_port,
+               ret =3D shim->read_2_2_msg(connector,
                                          HDCP_2_2_AKE_SEND_PAIRING_INFO,
                                          &msgs.pairing_info,
                                          sizeof(msgs.pairing_info));
@@ -1504,7 +1503,6 @@ static int hdcp2_authentication_key_exchange(struct i=
ntel_connector *connector)

 static int hdcp2_locality_check(struct intel_connector *connector)
 {
-       struct intel_digital_port *dig_port =3D intel_attached_dig_port(con=
nector);
         struct intel_hdcp *hdcp =3D &connector->hdcp;
         union {
                 struct hdcp2_lc_init lc_init;
@@ -1518,12 +1516,12 @@ static int hdcp2_locality_check(struct intel_connec=
tor *connector)
                 if (ret < 0)
                         continue;

-               ret =3D shim->write_2_2_msg(dig_port, &msgs.lc_init,
+               ret =3D shim->write_2_2_msg(connector, &msgs.lc_init,
                                       sizeof(msgs.lc_init));
                 if (ret < 0)
                         continue;

-               ret =3D shim->read_2_2_msg(dig_port,
+               ret =3D shim->read_2_2_msg(connector,
                                          HDCP_2_2_LC_SEND_LPRIME,
                                          &msgs.send_lprime,
                                          sizeof(msgs.send_lprime));
@@ -1540,7 +1538,6 @@ static int hdcp2_locality_check(struct intel_connecto=
r *connector)

 static int hdcp2_session_key_exchange(struct intel_connector *connector)
 {
-       struct intel_digital_port *dig_port =3D intel_attached_dig_port(con=
nector);
         struct intel_hdcp *hdcp =3D &connector->hdcp;
         struct hdcp2_ske_send_eks send_eks;
         int ret;
@@ -1549,7 +1546,7 @@ static int hdcp2_session_key_exchange(struct intel_co=
nnector *connector)
         if (ret < 0)
                 return ret;

-       ret =3D hdcp->shim->write_2_2_msg(dig_port, &send_eks,
+       ret =3D hdcp->shim->write_2_2_msg(connector, &send_eks,
                                         sizeof(send_eks));
         if (ret < 0)
                 return ret;
@@ -1587,12 +1584,12 @@ int _hdcp2_propagate_stream_management_info(struct =
intel_connector *connector)
         streams_size_delta =3D (HDCP_2_2_MAX_CONTENT_STREAMS_CNT - data->k=
) *
                                 sizeof(struct hdcp2_streamid_type);
         /* Send it to Repeater */
-       ret =3D shim->write_2_2_msg(dig_port, &msgs.stream_manage,
+       ret =3D shim->write_2_2_msg(connector, &msgs.stream_manage,
                                   sizeof(msgs.stream_manage) - streams_siz=
e_delta);
         if (ret < 0)
                 goto out;

-       ret =3D shim->read_2_2_msg(dig_port, HDCP_2_2_REP_STREAM_READY,
+       ret =3D shim->read_2_2_msg(connector, HDCP_2_2_REP_STREAM_READY,
                                  &msgs.stream_ready, sizeof(msgs.stream_re=
ady));
         if (ret < 0)
                 goto out;
@@ -1622,7 +1619,7 @@ int hdcp2_authenticate_repeater_topology(struct intel=
_connector *connector)
         u8 *rx_info;
         int ret;

-       ret =3D shim->read_2_2_msg(dig_port, HDCP_2_2_REP_SEND_RECVID_LIST,
+       ret =3D shim->read_2_2_msg(connector, HDCP_2_2_REP_SEND_RECVID_LIST=
,
                                  &msgs.recvid_list, sizeof(msgs.recvid_lis=
t));
         if (ret < 0)
                 return ret;
@@ -1675,7 +1672,7 @@ int hdcp2_authenticate_repeater_topology(struct intel=
_connector *connector)
                 return ret;

         hdcp->seq_num_v =3D seq_num_v;
-       ret =3D shim->write_2_2_msg(dig_port, &msgs.rep_ack,
+       ret =3D shim->write_2_2_msg(connector, &msgs.rep_ack,
                                   sizeof(msgs.rep_ack));
         if (ret < 0)
                 return ret;
@@ -1685,7 +1682,6 @@ int hdcp2_authenticate_repeater_topology(struct intel=
_connector *connector)

 static int hdcp2_authenticate_sink(struct intel_connector *connector)
 {
-       struct intel_digital_port *dig_port =3D intel_attached_dig_port(con=
nector);
         struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
         struct intel_hdcp *hdcp =3D &connector->hdcp;
         const struct intel_hdcp_shim *shim =3D hdcp->shim;
@@ -1711,7 +1707,7 @@ static int hdcp2_authenticate_sink(struct intel_conne=
ctor *connector)
         }

         if (shim->config_stream_type) {
-               ret =3D shim->config_stream_type(dig_port,
+               ret =3D shim->config_stream_type(connector,
                                                hdcp->is_repeater,
                                                hdcp->content_type);
                 if (ret < 0)
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i9=
15/display/intel_hdmi.c
index 94a7e1537f42..4c66618537ae 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1665,9 +1665,10 @@ intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_p=
ort *dig_port,
 }

 static
-int intel_hdmi_hdcp2_write_msg(struct intel_digital_port *dig_port,
+int intel_hdmi_hdcp2_write_msg(struct intel_connector *connector,
                                void *buf, size_t size)
 {
+       struct intel_digital_port *dig_port =3D intel_attached_dig_port(con=
nector);
         unsigned int offset;

         offset =3D HDCP_2_2_HDMI_REG_WR_MSG_OFFSET;
@@ -1675,9 +1676,10 @@ int intel_hdmi_hdcp2_write_msg(struct intel_digital_=
port *dig_port,
 }

 static
-int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *dig_port,
+int intel_hdmi_hdcp2_read_msg(struct intel_connector *connector,
                               u8 msg_id, void *buf, size_t size)
 {
+       struct intel_digital_port *dig_port =3D intel_attached_dig_port(con=
nector);
         struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev)=
;
         struct intel_hdmi *hdmi =3D &dig_port->hdmi;
         struct intel_hdcp *hdcp =3D &hdmi->attached_connector->hdcp;
--
2.25.1


--_000_DM6PR11MB3177CB1C26F5DF31ACF2793DBA1FADM6PR11MB3177namp_
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
--------------------</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Kandpal, Suraj &lt;su=
raj.kandpal@intel.com&gt;<br>
<b>Sent:</b> Thursday, August 10, 2023 1:17 PM<br>
<b>To:</b> intel-gfx@lists.freedesktop.org &lt;intel-gfx@lists.freedesktop.=
org&gt;<br>
<b>Cc:</b> Nautiyal, Ankit K &lt;ankit.k.nautiyal@intel.com&gt;; uma.shakar=
@intel.com &lt;uma.shakar@intel.com&gt;; Murthy, Arun R &lt;arun.r.murthy@i=
ntel.com&gt;; Kandpal, Suraj &lt;suraj.kandpal@intel.com&gt;<br>
<b>Subject:</b> [PATCH 1/4] drm/i915/hdcp: Use intel_connector argument in =
intel_hdcp_shim</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Update intel_hdcp_shim funcs specifically read_2_2=
_message,<br>
write_2_2_message and config_stream_type to use intel_connector<br>
argument instead of intel_digital_port as this will help in getting<br>
correct aux later for dp mst scenarios also already hdcp funcs<br>
derive digital_port from connector and then many funcs again get back<br>
the connector from dig_port which doesn't seem right.<br>
Connector specific hdcp functions can derive dig_port on need basis.<br>
<br>
Signed-off-by: Suraj Kandpal &lt;suraj.kandpal@intel.com&gt;<br>
---<br>
&nbsp;.../drm/i915/display/intel_display_types.h&nbsp;&nbsp;&nbsp; |&nbsp; =
6 ++--<br>
&nbsp;drivers/gpu/drm/i915/display/intel_dp_hdcp.c&nbsp; | 10 ++++---<br>
&nbsp;drivers/gpu/drm/i915/display/intel_hdcp.c&nbsp;&nbsp;&nbsp;&nbsp; | 3=
0 ++++++++-----------<br>
&nbsp;drivers/gpu/drm/i915/display/intel_hdmi.c&nbsp;&nbsp;&nbsp;&nbsp; |&n=
bsp; 6 ++--<br>
&nbsp;4 files changed, 26 insertions(+), 26 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/g=
pu/drm/i915/display/intel_display_types.h<br>
index 731f2ec04d5c..c62f4ec315e8 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_display_types.h<br>
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h<br>
@@ -504,11 +504,11 @@ struct intel_hdcp_shim {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool *capable);<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Write HDCP2.2 messages =
*/<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int (*write_2_2_msg)(struct intel_dig=
ital_port *dig_port,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int (*write_2_2_msg)(struct intel_con=
nector *connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; void *buf, size_t size);<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Read HDCP2.2 messages *=
/<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int (*read_2_2_msg)(struct intel_digi=
tal_port *dig_port,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int (*read_2_2_msg)(struct intel_conn=
ector *connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; u8 msg_id, void *buf, size_t size);<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
@@ -516,7 +516,7 @@ struct intel_hdcp_shim {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * type to Receivers.=
 In DP HDCP2.2 Stream type is one of the input to<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * the HDCP2.2 Cipher=
 for En/De-Cryption. Not applicable for HDMI.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int (*config_stream_type)(struct inte=
l_digital_port *dig_port,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int (*config_stream_type)(struct inte=
l_connector *connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool is_repeater, u8=
 type);<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Enable/Disable HDCP 2.2=
 stream encryption on DP MST Transport Link */<br>
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm=
/i915/display/intel_dp_hdcp.c<br>
index e0c177161407..6cd42363837a 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c<br>
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c<br>
@@ -437,9 +437,10 @@ static const struct hdcp2_dp_msg_data *get_hdcp2_dp_ms=
g_data(u8 msg_id)<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static<br>
-int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,<br>
+int intel_dp_hdcp2_write_msg(struct intel_connector *connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; void *buf, size_t size)<br>
&nbsp;{<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D intel_attached_dig_port(connector);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int offset;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 *byte =3D buf;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ssize_t ret, bytes_to_writ=
e, len;<br>
@@ -494,9 +495,10 @@ ssize_t get_receiver_id_list_rx_info(struct intel_digi=
tal_port *dig_port, u32 *d<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static<br>
-int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,<br>
+int intel_dp_hdcp2_read_msg(struct intel_connector *connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; u8 msg_id, void *buf, size_t size)<br>
&nbsp;{<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D intel_attached_dig_port(connector);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i=
915 =3D to_i915(dig_port-&gt;base.base.dev);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_dp *dp =3D &a=
mp;dig_port-&gt;dp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_hdcp *hdcp =
=3D &amp;dp-&gt;attached_connector-&gt;hdcp;<br>
@@ -574,7 +576,7 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *=
dig_port,<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static<br>
-int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *dig_port,=
<br>
+int intel_dp_hdcp2_config_stream_type(struct intel_connector *connector,<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; bool is_repeater, u8 content_type)<br>
&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int ret;<br>
@@ -593,7 +595,7 @@ int intel_dp_hdcp2_config_stream_type(struct intel_digi=
tal_port *dig_port,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_type_msg.msg_id =3D=
 HDCP_2_2_ERRATA_DP_STREAM_TYPE;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_type_msg.stream_typ=
e =3D content_type;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D&nbsp; intel_dp_hdcp2_write_ms=
g(dig_port, &amp;stream_type_msg,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D&nbsp; intel_dp_hdcp2_write_ms=
g(connector, &amp;stream_type_msg,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; sizeof(stream_type_msg));<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return ret &lt; 0 ? ret : =
0;<br>
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i9=
15/display/intel_hdcp.c<br>
index a42549fa9691..cb45f21f71eb 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c<br>
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c<br>
@@ -1415,7 +1415,6 @@ static int hdcp2_deauthenticate_port(struct intel_con=
nector *connector)<br>
&nbsp;/* Authentication flow starts from here */<br>
&nbsp;static int hdcp2_authentication_key_exchange(struct intel_connector *=
connector)<br>
&nbsp;{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D intel_attached_dig_port(connector);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i=
915 =3D to_i915(connector-&gt;base.dev);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_hdcp *hdcp =
=3D &amp;connector-&gt;hdcp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; union {<br>
@@ -1437,12 +1436,12 @@ static int hdcp2_authentication_key_exchange(struct=
 intel_connector *connector)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;write_2_2_msg(dig_po=
rt, &amp;msgs.ake_init,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;write_2_2_msg(connec=
tor, &amp;msgs.ake_init,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sizeof(msgs.ake_init=
));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(dig_por=
t, HDCP_2_2_AKE_SEND_CERT,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(connect=
or, HDCP_2_2_AKE_SEND_CERT,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;msgs.send_cert, sizeo=
f(msgs.send_cert));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
@@ -1471,11 +1470,11 @@ static int hdcp2_authentication_key_exchange(struct=
 intel_connector *connector)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;write_2_2_msg(dig_po=
rt, &amp;msgs.no_stored_km, size);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;write_2_2_msg(connec=
tor, &amp;msgs.no_stored_km, size);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(dig_por=
t, HDCP_2_2_AKE_SEND_HPRIME,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(connect=
or, HDCP_2_2_AKE_SEND_HPRIME,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;msgs.send_hprime, siz=
eof(msgs.send_hprime));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
@@ -1486,7 +1485,7 @@ static int hdcp2_authentication_key_exchange(struct i=
ntel_connector *connector)<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!hdcp-&gt;is_paired) {=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; /* Pairing is required */<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(dig_port,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; HDCP_2_2_AKE_SEND_PAIRING_INFO,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; &amp;msgs.pairing_info,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; sizeof(msgs.pairing_info));<br>
@@ -1504,7 +1503,6 @@ static int hdcp2_authentication_key_exchange(struct i=
ntel_connector *connector)<br>
&nbsp;<br>
&nbsp;static int hdcp2_locality_check(struct intel_connector *connector)<br=
>
&nbsp;{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D intel_attached_dig_port(connector);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_hdcp *hdcp =
=3D &amp;connector-&gt;hdcp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; union {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; struct hdcp2_lc_init lc_init;<br>
@@ -1518,12 +1516,12 @@ static int hdcp2_locality_check(struct intel_connec=
tor *connector)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; conti=
nue;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D shim-&gt;write_2_2_msg(dig_port, &amp;msgs.lc_init,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D shim-&gt;write_2_2_msg(connector, &amp;msgs.lc_init,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; sizeof(msgs.lc_init));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; conti=
nue;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(dig_port,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; HDCP_2_2_LC_SEND_LPRIME,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; &amp;msgs.send_lprime,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; sizeof(msgs.send_lprime));<br>
@@ -1540,7 +1538,6 @@ static int hdcp2_locality_check(struct intel_connecto=
r *connector)<br>
&nbsp;<br>
&nbsp;static int hdcp2_session_key_exchange(struct intel_connector *connect=
or)<br>
&nbsp;{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D intel_attached_dig_port(connector);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_hdcp *hdcp =
=3D &amp;connector-&gt;hdcp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct hdcp2_ske_send_eks =
send_eks;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int ret;<br>
@@ -1549,7 +1546,7 @@ static int hdcp2_session_key_exchange(struct intel_co=
nnector *connector)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D hdcp-&gt;shim-&gt;write_2_2_m=
sg(dig_port, &amp;send_eks,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D hdcp-&gt;shim-&gt;write_2_2_m=
sg(connector, &amp;send_eks,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; sizeof(send_eks));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
@@ -1587,12 +1584,12 @@ int _hdcp2_propagate_stream_management_info(struct =
intel_connector *connector)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; streams_size_delta =3D (HD=
CP_2_2_MAX_CONTENT_STREAMS_CNT - data-&gt;k) *<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sizeof(struct hdcp2_streamid_typ=
e);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Send it to Repeater */<=
br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;write_2_2_msg(dig_po=
rt, &amp;msgs.stream_manage,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;write_2_2_msg(connec=
tor, &amp;msgs.stream_manage,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sizeof(msgs.stream_m=
anage) - streams_size_delta);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; goto out;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(dig_por=
t, HDCP_2_2_REP_STREAM_READY,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(connect=
or, HDCP_2_2_REP_STREAM_READY,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;msgs.stream_ready, si=
zeof(msgs.stream_ready));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; goto out;<br>
@@ -1622,7 +1619,7 @@ int hdcp2_authenticate_repeater_topology(struct intel=
_connector *connector)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 *rx_info;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int ret;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(dig_por=
t, HDCP_2_2_REP_SEND_RECVID_LIST,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;read_2_2_msg(connect=
or, HDCP_2_2_REP_SEND_RECVID_LIST,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;msgs.recvid_list, siz=
eof(msgs.recvid_list));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
@@ -1675,7 +1672,7 @@ int hdcp2_authenticate_repeater_topology(struct intel=
_connector *connector)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp-&gt;seq_num_v =3D seq=
_num_v;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;write_2_2_msg(dig_po=
rt, &amp;msgs.rep_ack,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D shim-&gt;write_2_2_msg(connec=
tor, &amp;msgs.rep_ack,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sizeof(msgs.rep_ack)=
);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return ret;<br>
@@ -1685,7 +1682,6 @@ int hdcp2_authenticate_repeater_topology(struct intel=
_connector *connector)<br>
&nbsp;<br>
&nbsp;static int hdcp2_authenticate_sink(struct intel_connector *connector)=
<br>
&nbsp;{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D intel_attached_dig_port(connector);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i=
915 =3D to_i915(connector-&gt;base.dev);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_hdcp *hdcp =
=3D &amp;connector-&gt;hdcp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_hdcp_sh=
im *shim =3D hdcp-&gt;shim;<br>
@@ -1711,7 +1707,7 @@ static int hdcp2_authenticate_sink(struct intel_conne=
ctor *connector)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (shim-&gt;config_stream=
_type) {<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D shim-&gt;config_stream_type(dig_port,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ret =3D shim-&gt;config_stream_type(connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp-&gt;is_repea=
ter,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; hdcp-&gt;content_=
type);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<br>
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i9=
15/display/intel_hdmi.c<br>
index 94a7e1537f42..4c66618537ae 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c<br>
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c<br>
@@ -1665,9 +1665,10 @@ intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_p=
ort *dig_port,<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static<br>
-int intel_hdmi_hdcp2_write_msg(struct intel_digital_port *dig_port,<br>
+int intel_hdmi_hdcp2_write_msg(struct intel_connector *connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; void *buf, size_t size)<br>
&nbsp;{<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D intel_attached_dig_port(connector);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int offset;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; offset =3D HDCP_2_2_HDMI_R=
EG_WR_MSG_OFFSET;<br>
@@ -1675,9 +1676,10 @@ int intel_hdmi_hdcp2_write_msg(struct intel_digital_=
port *dig_port,<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static<br>
-int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *dig_port,<br>
+int intel_hdmi_hdcp2_read_msg(struct intel_connector *connector,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 msg_id, void *buf, size_t size)<br>
&nbsp;{<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_digital_port *dig_port =
=3D intel_attached_dig_port(connector);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *i=
915 =3D to_i915(dig_port-&gt;base.base.dev);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_hdmi *hdmi =
=3D &amp;dig_port-&gt;hdmi;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_hdcp *hdcp =
=3D &amp;hdmi-&gt;attached_connector-&gt;hdcp;<br>
-- <br>
2.25.1<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_DM6PR11MB3177CB1C26F5DF31ACF2793DBA1FADM6PR11MB3177namp_--

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bDz4BudfOmrO7QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 12:28:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA186B6468
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 12:28:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1080610EA75;
	Tue, 23 Jun 2026 10:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A5710EA75;
 Tue, 23 Jun 2026 10:28:50 +0000 (UTC)
Received: from 87-93-171-105.bb.dnainternet.fi ([87.93.171.105]
 helo=[192.168.101.113])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wbyN4-0000000147G-1TYd; Tue, 23 Jun 2026 13:28:48 +0300
Message-ID: <db3bb5d5efdeee469b291906a7d686af2eee64de.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Tue, 23 Jun 2026 13:28:45 +0300
In-Reply-To: <20260616200849.3534628-8-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-8-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.3-r1932428 (2026-03-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.3-r1932428
Subject: Re: [PATCH v2 07/28] drm/i915/dp_link_caps: Move forced and max
 link debugfs entries to link caps
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,lists.freedesktop.org:from_smtp,coelho.fi:mid,coelho.fi:from_mime];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCVD_TLS_LAST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FA186B6468

On Tue, 2026-06-16 at 23:08 +0300, Imre Deak wrote:
> Move the debugfs entries for the forced and max DP link parameters to
> intel_dp_link_caps. Their functionality is part of the link capability
> logic and will be updated to use the link capability state in follow-up
> changes.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


> ---
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 280 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_dp_link_caps.h |   3 +
>  .../drm/i915/display/intel_dp_link_training.c | 263 ----------------
>  4 files changed, 285 insertions(+), 263 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 08004c1ba03f4..3f02868ef105b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -32,6 +32,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
> +#include "intel_dp_link_caps.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_dp_mst.h"
>  #include "intel_dp_test.h"
> @@ -1342,6 +1343,7 @@ void intel_connector_debugfs_add(struct intel_conne=
ctor *connector)
>  	intel_psr_connector_debugfs_add(connector);
>  	intel_alpm_lobf_debugfs_add(connector);
>  	intel_dp_link_training_debugfs_add(connector);
> +	intel_dp_link_caps_debugfs_add(connector);
>  	intel_link_bw_connector_debugfs_add(connector);
> =20
>  	if (DISPLAY_VER(display) >=3D 11 &&
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.c
> index e39e6c99ec25f..ea90e84500a89 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -3,6 +3,7 @@
>   * Copyright =C2=A9 2026 Intel Corporation
>   */
> =20
> +#include <linux/debugfs.h>
>  #include <linux/slab.h>
> =20
>  #include <drm/drm_print.h>
> @@ -70,6 +71,285 @@ void intel_dp_link_caps_get_forced_params(struct inte=
l_dp_link_caps *link_caps,
>  	forced_params->lane_count =3D forced_lane_count(link_caps->dp);
>  }
> =20
> +static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector =3D to_intel_connector(m->private);
> +	struct intel_display *display =3D to_intel_display(connector);
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	int current_rate =3D -1;
> +	int force_rate;
> +	int err;
> +	int i;
> +
> +	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> +	if (err)
> +		return err;
> +
> +	intel_dp_flush_connector_commits(connector);
> +
> +	if (intel_dp->link.active)
> +		current_rate =3D intel_dp->link_rate;
> +
> +	force_rate =3D intel_dp->link.force_rate;
> +
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> +
> +	seq_printf(m, "%sauto%s",
> +		   force_rate =3D=3D 0 ? "[" : "",
> +		   force_rate =3D=3D 0 ? "]" : "");
> +
> +	for (i =3D 0; i < intel_dp->num_source_rates; i++)
> +		seq_printf(m, " %s%d%s%s",
> +			   intel_dp->source_rates[i] =3D=3D force_rate ? "[" : "",
> +			   intel_dp->source_rates[i],
> +			   intel_dp->source_rates[i] =3D=3D current_rate ? "*" : "",
> +			   intel_dp->source_rates[i] =3D=3D force_rate ? "]" : "");
> +
> +	seq_putc(m, '\n');
> +
> +	return 0;
> +}
> +
> +static int parse_link_rate(struct intel_dp *intel_dp, const char __user =
*ubuf, size_t len)
> +{
> +	char *kbuf;
> +	const char *p;
> +	int rate;
> +	int ret =3D 0;
> +
> +	kbuf =3D memdup_user_nul(ubuf, len);
> +	if (IS_ERR(kbuf))
> +		return PTR_ERR(kbuf);
> +
> +	p =3D strim(kbuf);
> +
> +	if (!strcmp(p, "auto")) {
> +		rate =3D 0;
> +	} else {
> +		ret =3D kstrtoint(p, 0, &rate);
> +		if (ret < 0)
> +			goto out_free;
> +
> +		if (intel_dp_rate_index(intel_dp->source_rates,
> +					intel_dp->num_source_rates,
> +					rate) < 0)
> +			ret =3D -EINVAL;
> +	}
> +
> +out_free:
> +	kfree(kbuf);
> +
> +	return ret < 0 ? ret : rate;
> +}
> +
> +static ssize_t i915_dp_force_link_rate_write(struct file *file,
> +					     const char __user *ubuf,
> +					     size_t len, loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct intel_connector *connector =3D to_intel_connector(m->private);
> +	struct intel_display *display =3D to_intel_display(connector);
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	int rate;
> +	int err;
> +
> +	rate =3D parse_link_rate(intel_dp, ubuf, len);
> +	if (rate < 0)
> +		return rate;
> +
> +	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> +	if (err)
> +		return err;
> +
> +	intel_dp_flush_connector_commits(connector);
> +
> +	intel_dp_reset_link_params(intel_dp);
> +	intel_dp->link.force_rate =3D rate;
> +
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> +
> +	*offp +=3D len;
> +
> +	return len;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_link_rate);
> +
> +static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector =3D to_intel_connector(m->private);
> +	struct intel_display *display =3D to_intel_display(connector);
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	int current_lane_count =3D -1;
> +	int force_lane_count;
> +	int err;
> +	int i;
> +
> +	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> +	if (err)
> +		return err;
> +
> +	intel_dp_flush_connector_commits(connector);
> +
> +	if (intel_dp->link.active)
> +		current_lane_count =3D intel_dp->lane_count;
> +	force_lane_count =3D intel_dp->link.force_lane_count;
> +
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> +
> +	seq_printf(m, "%sauto%s",
> +		   force_lane_count =3D=3D 0 ? "[" : "",
> +		   force_lane_count =3D=3D 0 ? "]" : "");
> +
> +	for (i =3D 1; i <=3D 4; i <<=3D 1)
> +		seq_printf(m, " %s%d%s%s",
> +			   i =3D=3D force_lane_count ? "[" : "",
> +			   i,
> +			   i =3D=3D current_lane_count ? "*" : "",
> +			   i =3D=3D force_lane_count ? "]" : "");
> +
> +	seq_putc(m, '\n');
> +
> +	return 0;
> +}
> +
> +static int parse_lane_count(const char __user *ubuf, size_t len)
> +{
> +	char *kbuf;
> +	const char *p;
> +	int lane_count;
> +	int ret =3D 0;
> +
> +	kbuf =3D memdup_user_nul(ubuf, len);
> +	if (IS_ERR(kbuf))
> +		return PTR_ERR(kbuf);
> +
> +	p =3D strim(kbuf);
> +
> +	if (!strcmp(p, "auto")) {
> +		lane_count =3D 0;
> +	} else {
> +		ret =3D kstrtoint(p, 0, &lane_count);
> +		if (ret < 0)
> +			goto out_free;
> +
> +		switch (lane_count) {
> +		case 1:
> +		case 2:
> +		case 4:
> +			break;
> +		default:
> +			ret =3D -EINVAL;
> +		}
> +	}
> +
> +out_free:
> +	kfree(kbuf);
> +
> +	return ret < 0 ? ret : lane_count;
> +}
> +
> +static ssize_t i915_dp_force_lane_count_write(struct file *file,
> +					      const char __user *ubuf,
> +					      size_t len, loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct intel_connector *connector =3D to_intel_connector(m->private);
> +	struct intel_display *display =3D to_intel_display(connector);
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	int lane_count;
> +	int err;
> +
> +	lane_count =3D parse_lane_count(ubuf, len);
> +	if (lane_count < 0)
> +		return lane_count;
> +
> +	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> +	if (err)
> +		return err;
> +
> +	intel_dp_flush_connector_commits(connector);
> +
> +	intel_dp_reset_link_params(intel_dp);
> +	intel_dp->link.force_lane_count =3D lane_count;
> +
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> +
> +	*offp +=3D len;
> +
> +	return len;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_lane_count);
> +
> +static int i915_dp_max_link_rate_show(void *data, u64 *val)
> +{
> +	struct intel_connector *connector =3D to_intel_connector(data);
> +	struct intel_display *display =3D to_intel_display(connector);
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	int err;
> +
> +	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> +	if (err)
> +		return err;
> +
> +	intel_dp_flush_connector_commits(connector);
> +
> +	*val =3D intel_dp->link.max_rate;
> +
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> +
> +	return 0;
> +}
> +DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_link_rate_fops, i915_dp_max_link_ra=
te_show, NULL, "%llu\n");
> +
> +static int i915_dp_max_lane_count_show(void *data, u64 *val)
> +{
> +	struct intel_connector *connector =3D to_intel_connector(data);
> +	struct intel_display *display =3D to_intel_display(connector);
> +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	int err;
> +
> +	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> +	if (err)
> +		return err;
> +
> +	intel_dp_flush_connector_commits(connector);
> +
> +	*val =3D intel_dp->link.max_lane_count;
> +
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> +
> +	return 0;
> +}
> +DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_c=
ount_show, NULL, "%llu\n");
> +
> +
> +/**
> + * intel_dp_link_caps_debugfs_add - add link caps debugfs files for a co=
nnector
> + * @connector: connector to add the debugfs files for
> + *
> + * Add the link-capability debugfs files for a DP @connector.
> + */
> +void intel_dp_link_caps_debugfs_add(struct intel_connector *connector)
> +{
> +	struct dentry *root =3D connector->base.debugfs_entry;
> +
> +	if (connector->base.connector_type !=3D DRM_MODE_CONNECTOR_DisplayPort =
&&
> +	    connector->base.connector_type !=3D DRM_MODE_CONNECTOR_eDP)
> +		return;
> +
> +	debugfs_create_file("i915_dp_force_link_rate", 0644, root,
> +			    connector, &i915_dp_force_link_rate_fops);
> +
> +	debugfs_create_file("i915_dp_force_lane_count", 0644, root,
> +			    connector, &i915_dp_force_lane_count_fops);
> +
> +	debugfs_create_file("i915_dp_max_link_rate", 0444, root,
> +			    connector, &i915_dp_max_link_rate_fops);
> +
> +	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
> +			    connector, &i915_dp_max_lane_count_fops);
> +}
> +
>  struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *inte=
l_dp)
>  {
>  	struct intel_dp_link_caps *link_caps;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/=
gpu/drm/i915/display/intel_dp_link_caps.h
> index 61dbce86ee3d0..c6a84891db464 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -4,6 +4,7 @@
>  #ifndef __INTEL_DP_LINK_CAPS_H__
>  #define __INTEL_DP_LINK_CAPS_H__
> =20
> +struct intel_connector;
>  struct intel_dp;
>  struct intel_dp_link_caps;
>  struct intel_dp_link_config;
> @@ -16,6 +17,8 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)=
;
>  void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *lin=
k_caps,
>  					  struct intel_dp_link_config *forced_params);
> =20
> +void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
> +
>  struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *inte=
l_dp);
>  void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index b915cfdeabd0e..cbef3d45baf9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -2660,257 +2660,6 @@ void intel_dp_check_link_state(struct intel_dp *i=
ntel_dp)
>  	intel_encoder_link_check_queue_work(encoder, 0);
>  }
> =20
> -static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
> -{
> -	struct intel_connector *connector =3D to_intel_connector(m->private);
> -	struct intel_display *display =3D to_intel_display(connector);
> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> -	int current_rate =3D -1;
> -	int force_rate;
> -	int err;
> -	int i;
> -
> -	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> -	if (err)
> -		return err;
> -
> -	intel_dp_flush_connector_commits(connector);
> -
> -	if (intel_dp->link.active)
> -		current_rate =3D intel_dp->link_rate;
> -
> -	force_rate =3D intel_dp->link.force_rate;
> -
> -	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> -
> -	seq_printf(m, "%sauto%s",
> -		   force_rate =3D=3D 0 ? "[" : "",
> -		   force_rate =3D=3D 0 ? "]" : "");
> -
> -	for (i =3D 0; i < intel_dp->num_source_rates; i++)
> -		seq_printf(m, " %s%d%s%s",
> -			   intel_dp->source_rates[i] =3D=3D force_rate ? "[" : "",
> -			   intel_dp->source_rates[i],
> -			   intel_dp->source_rates[i] =3D=3D current_rate ? "*" : "",
> -			   intel_dp->source_rates[i] =3D=3D force_rate ? "]" : "");
> -
> -	seq_putc(m, '\n');
> -
> -	return 0;
> -}
> -
> -static int parse_link_rate(struct intel_dp *intel_dp, const char __user =
*ubuf, size_t len)
> -{
> -	char *kbuf;
> -	const char *p;
> -	int rate;
> -	int ret =3D 0;
> -
> -	kbuf =3D memdup_user_nul(ubuf, len);
> -	if (IS_ERR(kbuf))
> -		return PTR_ERR(kbuf);
> -
> -	p =3D strim(kbuf);
> -
> -	if (!strcmp(p, "auto")) {
> -		rate =3D 0;
> -	} else {
> -		ret =3D kstrtoint(p, 0, &rate);
> -		if (ret < 0)
> -			goto out_free;
> -
> -		if (intel_dp_rate_index(intel_dp->source_rates,
> -					intel_dp->num_source_rates,
> -					rate) < 0)
> -			ret =3D -EINVAL;
> -	}
> -
> -out_free:
> -	kfree(kbuf);
> -
> -	return ret < 0 ? ret : rate;
> -}
> -
> -static ssize_t i915_dp_force_link_rate_write(struct file *file,
> -					     const char __user *ubuf,
> -					     size_t len, loff_t *offp)
> -{
> -	struct seq_file *m =3D file->private_data;
> -	struct intel_connector *connector =3D to_intel_connector(m->private);
> -	struct intel_display *display =3D to_intel_display(connector);
> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> -	int rate;
> -	int err;
> -
> -	rate =3D parse_link_rate(intel_dp, ubuf, len);
> -	if (rate < 0)
> -		return rate;
> -
> -	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> -	if (err)
> -		return err;
> -
> -	intel_dp_flush_connector_commits(connector);
> -
> -	intel_dp_reset_link_params(intel_dp);
> -	intel_dp->link.force_rate =3D rate;
> -
> -	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> -
> -	*offp +=3D len;
> -
> -	return len;
> -}
> -DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_link_rate);
> -
> -static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
> -{
> -	struct intel_connector *connector =3D to_intel_connector(m->private);
> -	struct intel_display *display =3D to_intel_display(connector);
> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> -	int current_lane_count =3D -1;
> -	int force_lane_count;
> -	int err;
> -	int i;
> -
> -	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> -	if (err)
> -		return err;
> -
> -	intel_dp_flush_connector_commits(connector);
> -
> -	if (intel_dp->link.active)
> -		current_lane_count =3D intel_dp->lane_count;
> -	force_lane_count =3D intel_dp->link.force_lane_count;
> -
> -	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> -
> -	seq_printf(m, "%sauto%s",
> -		   force_lane_count =3D=3D 0 ? "[" : "",
> -		   force_lane_count =3D=3D 0 ? "]" : "");
> -
> -	for (i =3D 1; i <=3D 4; i <<=3D 1)
> -		seq_printf(m, " %s%d%s%s",
> -			   i =3D=3D force_lane_count ? "[" : "",
> -			   i,
> -			   i =3D=3D current_lane_count ? "*" : "",
> -			   i =3D=3D force_lane_count ? "]" : "");
> -
> -	seq_putc(m, '\n');
> -
> -	return 0;
> -}
> -
> -static int parse_lane_count(const char __user *ubuf, size_t len)
> -{
> -	char *kbuf;
> -	const char *p;
> -	int lane_count;
> -	int ret =3D 0;
> -
> -	kbuf =3D memdup_user_nul(ubuf, len);
> -	if (IS_ERR(kbuf))
> -		return PTR_ERR(kbuf);
> -
> -	p =3D strim(kbuf);
> -
> -	if (!strcmp(p, "auto")) {
> -		lane_count =3D 0;
> -	} else {
> -		ret =3D kstrtoint(p, 0, &lane_count);
> -		if (ret < 0)
> -			goto out_free;
> -
> -		switch (lane_count) {
> -		case 1:
> -		case 2:
> -		case 4:
> -			break;
> -		default:
> -			ret =3D -EINVAL;
> -		}
> -	}
> -
> -out_free:
> -	kfree(kbuf);
> -
> -	return ret < 0 ? ret : lane_count;
> -}
> -
> -static ssize_t i915_dp_force_lane_count_write(struct file *file,
> -					      const char __user *ubuf,
> -					      size_t len, loff_t *offp)
> -{
> -	struct seq_file *m =3D file->private_data;
> -	struct intel_connector *connector =3D to_intel_connector(m->private);
> -	struct intel_display *display =3D to_intel_display(connector);
> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> -	int lane_count;
> -	int err;
> -
> -	lane_count =3D parse_lane_count(ubuf, len);
> -	if (lane_count < 0)
> -		return lane_count;
> -
> -	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> -	if (err)
> -		return err;
> -
> -	intel_dp_flush_connector_commits(connector);
> -
> -	intel_dp_reset_link_params(intel_dp);
> -	intel_dp->link.force_lane_count =3D lane_count;
> -
> -	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> -
> -	*offp +=3D len;
> -
> -	return len;
> -}
> -DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_lane_count);
> -
> -static int i915_dp_max_link_rate_show(void *data, u64 *val)
> -{
> -	struct intel_connector *connector =3D to_intel_connector(data);
> -	struct intel_display *display =3D to_intel_display(connector);
> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> -	int err;
> -
> -	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> -	if (err)
> -		return err;
> -
> -	intel_dp_flush_connector_commits(connector);
> -
> -	*val =3D intel_dp->link.max_rate;
> -
> -	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> -
> -	return 0;
> -}
> -DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_link_rate_fops, i915_dp_max_link_ra=
te_show, NULL, "%llu\n");
> -
> -static int i915_dp_max_lane_count_show(void *data, u64 *val)
> -{
> -	struct intel_connector *connector =3D to_intel_connector(data);
> -	struct intel_display *display =3D to_intel_display(connector);
> -	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> -	int err;
> -
> -	err =3D drm_modeset_lock_single_interruptible(&display->drm->mode_confi=
g.connection_mutex);
> -	if (err)
> -		return err;
> -
> -	intel_dp_flush_connector_commits(connector);
> -
> -	*val =3D intel_dp->link.max_lane_count;
> -
> -	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
> -
> -	return 0;
> -}
> -DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_c=
ount_show, NULL, "%llu\n");
> -
>  static int i915_dp_force_link_training_failure_show(void *data, u64 *val=
)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(data);
> @@ -3033,18 +2782,6 @@ void intel_dp_link_training_debugfs_add(struct int=
el_connector *connector)
>  	    connector->base.connector_type !=3D DRM_MODE_CONNECTOR_eDP)
>  		return;
> =20
> -	debugfs_create_file("i915_dp_force_link_rate", 0644, root,
> -			    connector, &i915_dp_force_link_rate_fops);
> -
> -	debugfs_create_file("i915_dp_force_lane_count", 0644, root,
> -			    connector, &i915_dp_force_lane_count_fops);
> -
> -	debugfs_create_file("i915_dp_max_link_rate", 0444, root,
> -			    connector, &i915_dp_max_link_rate_fops);
> -
> -	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
> -			    connector, &i915_dp_max_lane_count_fops);
> -
>  	debugfs_create_file("i915_dp_force_link_training_failure", 0644, root,
>  			    connector, &i915_dp_force_link_training_failure_fops);
> =20

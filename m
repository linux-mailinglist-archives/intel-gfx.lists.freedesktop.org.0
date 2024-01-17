Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A3382FE49
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 02:13:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 788D810E074;
	Wed, 17 Jan 2024 01:13:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 627A710E074
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 01:13:41 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id
 a640c23a62f3a-a27733ae1dfso1205358266b.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 17:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1705453959; x=1706058759;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YI8XYM2ZH8XNP7SrRDiK39BHV6y/SDSduOaxIR0DFcM=;
 b=GgXKFIvWe4mdUkIkbjSZFpCIlKGS/mguequd1seJy0U8tXIXRhoY4NOrm2UTGz6smA
 ffUPSTZEoB5BQY5WIUQP9Y8PTnnRREzEgX5kDbyFjqVuzUHRmzBWYT7IL8xSAY48SwoF
 WUzuZrW2mcIPi8sr4GNosVcB/6EHP83qRs6uQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705453959; x=1706058759;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YI8XYM2ZH8XNP7SrRDiK39BHV6y/SDSduOaxIR0DFcM=;
 b=xLGeFhbe9YCuXvZCeC2fsEqDFVD1MyQTndiW6d6eBjNkUTYQ/XAhTu8lSAmvbJ0Uem
 IxSaKQdZVWzIM6EKo3Iv8mnljyZbIkAq25XA9k4CtQaEnaH9AWuLHbmFySDyd7xa3Keq
 hQDhJvGEfkfq8EPqduCF1h5wtfvCiVF5Ejr9wpA9fck613Ny4Lm+jLug+FZPS/rLdocn
 tNKE67nuIxixY6ofFitDnme3CSokhCf0i3eMOZTw/ad/k5P4px09J6WujK223aFE3hjK
 u7krDJKxQ5fTubKudGBQeP4TGXIpfCIN6Lodx38t7t8Fu7OqNgzvk1j23d7nqXTyDYRd
 xv1A==
X-Gm-Message-State: AOJu0Ywo++605aRwlzhi0R3QvmAist7HvZktX/aYaqxx+rCSW8cmt2CQ
 CY+e80y1BJPLHKfUwQrjHRFtPZ3wdbZf2FqBIwl9N6PFdxhh
X-Google-Smtp-Source: AGHT+IGK4raSXF//ExV5MYUR/AasFMeRu+w0mxdhR31v+IglHNJKfx7QXLdTd2xe4me3rXUB6xFVS/BQE4xSYFvZqvg=
X-Received: by 2002:a17:906:374d:b0:a23:321e:48e9 with SMTP id
 e13-20020a170906374d00b00a23321e48e9mr2139020ejc.67.1705453959437; Tue, 16
 Jan 2024 17:12:39 -0800 (PST)
MIME-Version: 1.0
References: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
 <20240108120725.20057-2-stanislav.lisovskiy@intel.com>
 <ZaFn4TSiXPf6Ku-i@intel.com> <ZaTzcLXAZEOaa0T/@intel.com>
In-Reply-To: <ZaTzcLXAZEOaa0T/@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 16 Jan 2024 17:12:28 -0800
Message-ID: <CAE72mNkbGEqmRYSBnW2My42UrNZyFMYC=_p5W1hETpDrJiLYDQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm/i915: Add bigjoiner force enable option to debugfs
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks Stan for the patch.
I agree that since by forcing big joiner enable we are simulating a
higher mode/pixel clock on a connector, this should be a per connector
debugfs except for edp that can be exposed.

Manasi

On Mon, Jan 15, 2024 at 12:57=E2=80=AFAM Lisovskiy, Stanislav
<stanislav.lisovskiy@intel.com> wrote:
>
> On Fri, Jan 12, 2024 at 06:25:05PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> > On Mon, Jan 08, 2024 at 02:07:23PM +0200, Stanislav Lisovskiy wrote:
> > > For validation purposes, it might be useful to be able to
> > > force Bigjoiner mode, even if current dotclock/resolution
> > > do not require that.
> > > Lets add such to option to debugfs.
> > >
> > > v2: - Apparently intel_dp_need_bigjoiner can't be used, when
> > >       debugfs entry is created so lets just check manually
> > >       the DISPLAY_VER.
> > >
> > > v3: - Switch to intel_connector from drm_connector(Jani Nikula)
> > >     - Remove redundant modeset lock(Jani Nikula)
> > >     - Use kstrtobool_from_user for boolean value(Jani Nikula)
> > >
> > > v4: - Apply the changes to proper function(Jani Nikula)
> > >
> > > v5: - Removed unnecessary check from i915_bigjoiner_enable_show
> > >       (Ville Syrj=C3=A4l=C3=A4)
> > >     - Added eDP connector check to intel_connector_debugfs_add
> > >       (Ville Syrj=C3=A4l=C3=A4)
> > >     - Removed debug message in order to prevent dmesg flooding
> > >       (Ville Syrj=C3=A4l=C3=A4)
> > >
> > > v6: - Assume now always that m->private is intel_connector
> > >     - Fixed other similar conflicts
> > >
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_debugfs.c  | 59 +++++++++++++++++=
++
> > >  .../drm/i915/display/intel_display_types.h    |  2 +
> > >  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
> > >  3 files changed, 63 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/d=
rivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > index d951edb366871..353e71b4e1db2 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > @@ -1413,6 +1413,22 @@ out: drm_modeset_unlock(&i915->drm.mode_config=
.connection_mutex);
> > >     return ret;
> > >  }
> > >
> > > +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data=
)
> > > +{
> > > +   struct intel_connector *connector =3D m->private;
> > > +   struct intel_encoder *encoder =3D intel_attached_encoder(connecto=
r);
> > > +   struct intel_dp *intel_dp;
> > > +
> > > +   if (!encoder)
> > > +           return -ENODEV;
> > > +
> > > +   intel_dp =3D enc_to_intel_dp(encoder);
> > > +
> > > +   seq_printf(m, "Bigjoiner enable: %d\n", intel_dp->force_bigjoiner=
_enable);
> >
> > So it's a per-connector debugfs knob but we track it in the
> > SST DP encoder? That's rather odd, and not going to work for MST.
>
> I guess you mean, I should move it to the connector instead, makes sense.
>
> >
> > > +
> > > +   return 0;
> > > +}
> > > +
> > >  static ssize_t i915_dsc_output_format_write(struct file *file,
> > >                                         const char __user *ubuf,
> > >                                         size_t len, loff_t *offp)
> > > @@ -1434,12 +1450,39 @@ static ssize_t i915_dsc_output_format_write(s=
truct file *file,
> > >     return len;
> > >  }
> > >
> > > +static ssize_t i915_bigjoiner_enable_fops_write(struct file *file,
> > > +                                           const char __user *ubuf,
> > > +                                           size_t len, loff_t *offp)
> > > +{
> > > +   struct seq_file *m =3D file->private_data;
> > > +   struct intel_connector *connector =3D m->private;
> > > +   struct intel_encoder *encoder =3D intel_attached_encoder(connecto=
r);
> > > +   struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > > +   bool bigjoiner_en =3D 0;
> > > +   int ret;
> > > +
> > > +   ret =3D kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> > > +   if (ret < 0)
> > > +           return ret;
> > > +
> > > +   intel_dp->force_bigjoiner_enable =3D bigjoiner_en;
> > > +   *offp +=3D len;
> > > +
> > > +   return len;
> > > +}
> > > +
> > >  static int i915_dsc_output_format_open(struct inode *inode,
> > >                                    struct file *file)
> > >  {
> > >     return single_open(file, i915_dsc_output_format_show, inode->i_pr=
ivate);
> > >  }
> > >
> > > +static int i915_bigjoiner_enable_open(struct inode *inode,
> > > +                                 struct file *file)
> > > +{
> > > +   return single_open(file, i915_bigjoiner_enable_show, inode->i_pri=
vate);
> > > +}
> > > +
> > >  static const struct file_operations i915_dsc_output_format_fops =3D =
{
> > >     .owner =3D THIS_MODULE,
> > >     .open =3D i915_dsc_output_format_open,
> > > @@ -1527,6 +1570,15 @@ static const struct file_operations i915_dsc_f=
ractional_bpp_fops =3D {
> > >     .write =3D i915_dsc_fractional_bpp_write
> > >  };
> > >
> > > +static const struct file_operations i915_bigjoiner_enable_fops =3D {
> > > +   .owner =3D THIS_MODULE,
> > > +   .open =3D i915_bigjoiner_enable_open,
> > > +   .read =3D seq_read,
> > > +   .llseek =3D seq_lseek,
> > > +   .release =3D single_release,
> > > +   .write =3D i915_bigjoiner_enable_fops_write
> > > +};
> >
> > Why are we implementing this long-hand for a simple boolean flag?
>
> Will check, thought thats the only way..
>
> >
> > > +
> > >  /*
> > >   * Returns the Current CRTC's bpc.
> > >   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bp=
c
> > > @@ -1608,6 +1660,13 @@ void intel_connector_debugfs_add(struct intel_=
connector *connector)
> > >                                 connector, &i915_dsc_fractional_bpp_f=
ops);
> > >     }
> > >
> > > +   if (DISPLAY_VER(i915) >=3D 11 &&
> > > +       (connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> > > +        connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)) {
> > > +           debugfs_create_file("i915_bigjoiner_force_enable", 0644, =
root,
> > > +                               &connector->base, &i915_bigjoiner_ena=
ble_fops);
> > > +   }
> > > +
> > >     if (connector_type =3D=3D DRM_MODE_CONNECTOR_DSI ||
> > >         connector_type =3D=3D DRM_MODE_CONNECTOR_eDP ||
> > >         connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/dri=
vers/gpu/drm/i915/display/intel_display_types.h
> > > index b9b9d9f2bc0ba..e4c5a44dd02f5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1768,6 +1768,8 @@ struct intel_dp {
> > >     bool is_mst;
> > >     int active_mst_links;
> > >
> > > +   bool force_bigjoiner_enable;
> > > +
> > >     /* connector directly attached - won't be use for modeset in mst =
world */
> > >     struct intel_connector *attached_connector;
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index 9ff0cbd9c0df5..525ab926582d5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -1208,7 +1208,8 @@ bool intel_dp_need_bigjoiner(struct intel_dp *i=
ntel_dp,
> > >     if (!intel_dp_can_bigjoiner(intel_dp))
> > >             return false;
> > >
> > > -   return clock > i915->max_dotclk_freq || hdisplay > 5120;
> > > +   return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> > > +          intel_dp->force_bigjoiner_enable;
> > >  }
> > >
> > >  static enum drm_mode_status
> > > --
> > > 2.37.3
> >
> > --
> > Ville Syrj=C3=A4l=C3=A4
> > Intel

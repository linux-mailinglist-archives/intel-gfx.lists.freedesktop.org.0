Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5B120FFEA
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 00:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C7DC6E362;
	Tue, 30 Jun 2020 22:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC57A6E362;
 Tue, 30 Jun 2020 22:11:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4AF0A47E8;
 Tue, 30 Jun 2020 22:11:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anitha Chrisanthus" <anitha.chrisanthus@intel.com>
Date: Tue, 30 Jun 2020 22:11:05 -0000
Message-ID: <159355506570.22701.16003768513373898481@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_Keem_Bay_DRM_driver?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Add support for Keem Bay DRM driver
URL   : https://patchwork.freedesktop.org/series/78961/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c489c4330583 drm/kmb: Add support for KeemBay Display
-:39: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#39: 
new file mode 100644

-:256: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#256: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:187:
+
+}

-:345: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#345: FILE: drivers/gpu/drm/kmb/kmb_crtc.h:55:
+};
+#define to_kmb_crtc_state(x) container_of(x, struct kmb_crtc_state, crtc_base)

-:347: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#347: FILE: drivers/gpu/drm/kmb/kmb_crtc.h:57:
+extern void kmb_plane_destroy(struct drm_plane *plane);

-:348: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#348: FILE: drivers/gpu/drm/kmb/kmb_crtc.h:58:
+extern struct drm_plane *kmb_plane_init(struct drm_device *drm);

-:892: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_CFG>
#892: FILE: drivers/gpu/drm/kmb/kmb_plane.c:86:
+		kmb_write(lcd, LCD_LAYERn_DMA_CFG(i), ~LCD_DMA_LAYER_ENABLE);

-:895: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_START_ADDR>
#895: FILE: drivers/gpu/drm/kmb/kmb_plane.c:89:
+		kmb_write(lcd, LCD_LAYERn_DMA_START_ADDR(i), addr);

-:896: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_START_SHADOW>
#896: FILE: drivers/gpu/drm/kmb/kmb_plane.c:90:
+		kmb_write(lcd, LCD_LAYERn_DMA_START_SHADOW(i), addr);

-:901: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LEN>
#901: FILE: drivers/gpu/drm/kmb/kmb_plane.c:95:
+		kmb_write(lcd, LCD_LAYERn_DMA_LEN(i), dma_len);

-:903: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LINE_VSTRIDE>
#903: FILE: drivers/gpu/drm/kmb/kmb_plane.c:97:
+		kmb_write(lcd, LCD_LAYERn_DMA_LINE_VSTRIDE(i), fb->pitches[0]);

-:904: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LINE_WIDTH>
#904: FILE: drivers/gpu/drm/kmb/kmb_plane.c:98:
+		kmb_write(lcd, LCD_LAYERn_DMA_LINE_WIDTH(i),

-:1022: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#1022: FILE: drivers/gpu/drm/kmb/kmb_plane.c:216:
+	const uint32_t *plane_formats;

-:1026: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#1026: FILE: drivers/gpu/drm/kmb/kmb_plane.c:220:
+	for (i = 0; i < lcd->n_layers; i++) {
+

-:1043: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1043: FILE: drivers/gpu/drm/kmb/kmb_plane.c:237:
+		ret = drm_universal_plane_init(drm, plane, 0xFF,
+				       &kmb_plane_funcs, plane_formats,

-:1168: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1168: FILE: drivers/gpu/drm/kmb/kmb_regs.h:46:
+#define LCD_LAYERn_CFG(N)		(LCD_LAYER0_CFG + (0x400*N))
                          		                        ^

-:1168: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CFG>
#1168: FILE: drivers/gpu/drm/kmb/kmb_regs.h:46:
+#define LCD_LAYERn_CFG(N)		(LCD_LAYER0_CFG + (0x400*N))

-:1168: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1168: FILE: drivers/gpu/drm/kmb/kmb_regs.h:46:
+#define LCD_LAYERn_CFG(N)		(LCD_LAYER0_CFG + (0x400*N))

-:1170: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1170: FILE: drivers/gpu/drm/kmb/kmb_regs.h:48:
+#define LCD_LAYERn_COL_START(N)		(LCD_LAYER0_COL_START + (0x400*N))
                                		                              ^

-:1170: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_COL_START>
#1170: FILE: drivers/gpu/drm/kmb/kmb_regs.h:48:
+#define LCD_LAYERn_COL_START(N)		(LCD_LAYER0_COL_START + (0x400*N))

-:1170: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1170: FILE: drivers/gpu/drm/kmb/kmb_regs.h:48:
+#define LCD_LAYERn_COL_START(N)		(LCD_LAYER0_COL_START + (0x400*N))

-:1172: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1172: FILE: drivers/gpu/drm/kmb/kmb_regs.h:50:
+#define LCD_LAYERn_ROW_START(N)		(LCD_LAYER0_ROW_START + (0x400*N))
                                		                              ^

-:1172: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_ROW_START>
#1172: FILE: drivers/gpu/drm/kmb/kmb_regs.h:50:
+#define LCD_LAYERn_ROW_START(N)		(LCD_LAYER0_ROW_START + (0x400*N))

-:1172: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1172: FILE: drivers/gpu/drm/kmb/kmb_regs.h:50:
+#define LCD_LAYERn_ROW_START(N)		(LCD_LAYER0_ROW_START + (0x400*N))

-:1174: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1174: FILE: drivers/gpu/drm/kmb/kmb_regs.h:52:
+#define LCD_LAYERn_WIDTH(N)		(LCD_LAYER0_WIDTH + (0x400*N))
                            		                          ^

-:1174: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_WIDTH>
#1174: FILE: drivers/gpu/drm/kmb/kmb_regs.h:52:
+#define LCD_LAYERn_WIDTH(N)		(LCD_LAYER0_WIDTH + (0x400*N))

-:1174: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1174: FILE: drivers/gpu/drm/kmb/kmb_regs.h:52:
+#define LCD_LAYERn_WIDTH(N)		(LCD_LAYER0_WIDTH + (0x400*N))

-:1176: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1176: FILE: drivers/gpu/drm/kmb/kmb_regs.h:54:
+#define LCD_LAYERn_HEIGHT(N)		(LCD_LAYER0_HEIGHT + (0x400*N))
                             		                           ^

-:1176: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_HEIGHT>
#1176: FILE: drivers/gpu/drm/kmb/kmb_regs.h:54:
+#define LCD_LAYERn_HEIGHT(N)		(LCD_LAYER0_HEIGHT + (0x400*N))

-:1176: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1176: FILE: drivers/gpu/drm/kmb/kmb_regs.h:54:
+#define LCD_LAYERn_HEIGHT(N)		(LCD_LAYER0_HEIGHT + (0x400*N))

-:1178: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1178: FILE: drivers/gpu/drm/kmb/kmb_regs.h:56:
+#define LCD_LAYERn_SCALE_CFG(N)		(LCD_LAYER0_SCALE_CFG + (0x400*N))
                                		                              ^

-:1178: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_SCALE_CFG>
#1178: FILE: drivers/gpu/drm/kmb/kmb_regs.h:56:
+#define LCD_LAYERn_SCALE_CFG(N)		(LCD_LAYER0_SCALE_CFG + (0x400*N))

-:1178: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1178: FILE: drivers/gpu/drm/kmb/kmb_regs.h:56:
+#define LCD_LAYERn_SCALE_CFG(N)		(LCD_LAYER0_SCALE_CFG + (0x400*N))

-:1180: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1180: FILE: drivers/gpu/drm/kmb/kmb_regs.h:58:
+#define LCD_LAYERn_ALPHA(N)		(LCD_LAYER0_ALPHA + (0x400*N))
                            		                          ^

-:1180: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_ALPHA>
#1180: FILE: drivers/gpu/drm/kmb/kmb_regs.h:58:
+#define LCD_LAYERn_ALPHA(N)		(LCD_LAYER0_ALPHA + (0x400*N))

-:1180: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1180: FILE: drivers/gpu/drm/kmb/kmb_regs.h:58:
+#define LCD_LAYERn_ALPHA(N)		(LCD_LAYER0_ALPHA + (0x400*N))

-:1182: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1182: FILE: drivers/gpu/drm/kmb/kmb_regs.h:60:
+#define LCD_LAYERn_INV_COLOUR_LS(N)	(LCD_LAYER0_INV_COLOUR_LS + (0x400*N))
                                    	                                  ^

-:1182: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_INV_COLOUR_LS>
#1182: FILE: drivers/gpu/drm/kmb/kmb_regs.h:60:
+#define LCD_LAYERn_INV_COLOUR_LS(N)	(LCD_LAYER0_INV_COLOUR_LS + (0x400*N))

-:1182: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1182: FILE: drivers/gpu/drm/kmb/kmb_regs.h:60:
+#define LCD_LAYERn_INV_COLOUR_LS(N)	(LCD_LAYER0_INV_COLOUR_LS + (0x400*N))

-:1184: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1184: FILE: drivers/gpu/drm/kmb/kmb_regs.h:62:
+#define LCD_LAYERn_INV_COLOUR_MS(N)	(LCD_LAYER0_INV_COLOUR_MS + (0x400*N))
                                    	                                  ^

-:1184: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_INV_COLOUR_MS>
#1184: FILE: drivers/gpu/drm/kmb/kmb_regs.h:62:
+#define LCD_LAYERn_INV_COLOUR_MS(N)	(LCD_LAYER0_INV_COLOUR_MS + (0x400*N))

-:1184: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1184: FILE: drivers/gpu/drm/kmb/kmb_regs.h:62:
+#define LCD_LAYERn_INV_COLOUR_MS(N)	(LCD_LAYER0_INV_COLOUR_MS + (0x400*N))

-:1186: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1186: FILE: drivers/gpu/drm/kmb/kmb_regs.h:64:
+#define LCD_LAYERn_TRANS_COLOUR_LS(N)	(LCD_LAYER0_TRANS_COLOUR_LS + (0x400*N))
                                      	                                    ^

-:1186: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_TRANS_COLOUR_LS>
#1186: FILE: drivers/gpu/drm/kmb/kmb_regs.h:64:
+#define LCD_LAYERn_TRANS_COLOUR_LS(N)	(LCD_LAYER0_TRANS_COLOUR_LS + (0x400*N))

-:1186: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1186: FILE: drivers/gpu/drm/kmb/kmb_regs.h:64:
+#define LCD_LAYERn_TRANS_COLOUR_LS(N)	(LCD_LAYER0_TRANS_COLOUR_LS + (0x400*N))

-:1188: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1188: FILE: drivers/gpu/drm/kmb/kmb_regs.h:66:
+#define LCD_LAYERn_TRANS_COLOUR_MS(N)	(LCD_LAYER0_TRANS_COLOUR_MS + (0x400*N))
                                      	                                    ^

-:1188: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_TRANS_COLOUR_MS>
#1188: FILE: drivers/gpu/drm/kmb/kmb_regs.h:66:
+#define LCD_LAYERn_TRANS_COLOUR_MS(N)	(LCD_LAYER0_TRANS_COLOUR_MS + (0x400*N))

-:1188: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1188: FILE: drivers/gpu/drm/kmb/kmb_regs.h:66:
+#define LCD_LAYERn_TRANS_COLOUR_MS(N)	(LCD_LAYER0_TRANS_COLOUR_MS + (0x400*N))

-:1190: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1190: FILE: drivers/gpu/drm/kmb/kmb_regs.h:68:
+#define LCD_LAYERn_CSC_COEFF11(N)	(LCD_LAYER0_CSC_COEFF11 + (0x400*N))
                                  	                                ^

-:1190: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF11>
#1190: FILE: drivers/gpu/drm/kmb/kmb_regs.h:68:
+#define LCD_LAYERn_CSC_COEFF11(N)	(LCD_LAYER0_CSC_COEFF11 + (0x400*N))

-:1190: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1190: FILE: drivers/gpu/drm/kmb/kmb_regs.h:68:
+#define LCD_LAYERn_CSC_COEFF11(N)	(LCD_LAYER0_CSC_COEFF11 + (0x400*N))

-:1192: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1192: FILE: drivers/gpu/drm/kmb/kmb_regs.h:70:
+#define LCD_LAYERn_CSC_COEFF12(N)	(LCD_LAYER0_CSC_COEFF12 + (0x400*N))
                                  	                                ^

-:1192: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF12>
#1192: FILE: drivers/gpu/drm/kmb/kmb_regs.h:70:
+#define LCD_LAYERn_CSC_COEFF12(N)	(LCD_LAYER0_CSC_COEFF12 + (0x400*N))

-:1192: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1192: FILE: drivers/gpu/drm/kmb/kmb_regs.h:70:
+#define LCD_LAYERn_CSC_COEFF12(N)	(LCD_LAYER0_CSC_COEFF12 + (0x400*N))

-:1194: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1194: FILE: drivers/gpu/drm/kmb/kmb_regs.h:72:
+#define LCD_LAYERn_CSC_COEFF13(N)	(LCD_LAYER0_CSC_COEFF13 + (0x400*N))
                                  	                                ^

-:1194: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF13>
#1194: FILE: drivers/gpu/drm/kmb/kmb_regs.h:72:
+#define LCD_LAYERn_CSC_COEFF13(N)	(LCD_LAYER0_CSC_COEFF13 + (0x400*N))

-:1194: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1194: FILE: drivers/gpu/drm/kmb/kmb_regs.h:72:
+#define LCD_LAYERn_CSC_COEFF13(N)	(LCD_LAYER0_CSC_COEFF13 + (0x400*N))

-:1196: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1196: FILE: drivers/gpu/drm/kmb/kmb_regs.h:74:
+#define LCD_LAYERn_CSC_COEFF21(N)	(LCD_LAYER0_CSC_COEFF21 + (0x400*N))
                                  	                                ^

-:1196: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF21>
#1196: FILE: drivers/gpu/drm/kmb/kmb_regs.h:74:
+#define LCD_LAYERn_CSC_COEFF21(N)	(LCD_LAYER0_CSC_COEFF21 + (0x400*N))

-:1196: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1196: FILE: drivers/gpu/drm/kmb/kmb_regs.h:74:
+#define LCD_LAYERn_CSC_COEFF21(N)	(LCD_LAYER0_CSC_COEFF21 + (0x400*N))

-:1198: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1198: FILE: drivers/gpu/drm/kmb/kmb_regs.h:76:
+#define LCD_LAYERn_CSC_COEFF22(N)	(LCD_LAYER0_CSC_COEFF22 + (0x400*N))
                                  	                                ^

-:1198: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF22>
#1198: FILE: drivers/gpu/drm/kmb/kmb_regs.h:76:
+#define LCD_LAYERn_CSC_COEFF22(N)	(LCD_LAYER0_CSC_COEFF22 + (0x400*N))

-:1198: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1198: FILE: drivers/gpu/drm/kmb/kmb_regs.h:76:
+#define LCD_LAYERn_CSC_COEFF22(N)	(LCD_LAYER0_CSC_COEFF22 + (0x400*N))

-:1200: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1200: FILE: drivers/gpu/drm/kmb/kmb_regs.h:78:
+#define LCD_LAYERn_CSC_COEFF23(N)	(LCD_LAYER0_CSC_COEFF23 + (0x400*N))
                                  	                                ^

-:1200: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF23>
#1200: FILE: drivers/gpu/drm/kmb/kmb_regs.h:78:
+#define LCD_LAYERn_CSC_COEFF23(N)	(LCD_LAYER0_CSC_COEFF23 + (0x400*N))

-:1200: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1200: FILE: drivers/gpu/drm/kmb/kmb_regs.h:78:
+#define LCD_LAYERn_CSC_COEFF23(N)	(LCD_LAYER0_CSC_COEFF23 + (0x400*N))

-:1202: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1202: FILE: drivers/gpu/drm/kmb/kmb_regs.h:80:
+#define LCD_LAYERn_CSC_COEFF31(N)	(LCD_LAYER0_CSC_COEFF31 + (0x400*N))
                                  	                                ^

-:1202: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF31>
#1202: FILE: drivers/gpu/drm/kmb/kmb_regs.h:80:
+#define LCD_LAYERn_CSC_COEFF31(N)	(LCD_LAYER0_CSC_COEFF31 + (0x400*N))

-:1202: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1202: FILE: drivers/gpu/drm/kmb/kmb_regs.h:80:
+#define LCD_LAYERn_CSC_COEFF31(N)	(LCD_LAYER0_CSC_COEFF31 + (0x400*N))

-:1204: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1204: FILE: drivers/gpu/drm/kmb/kmb_regs.h:82:
+#define LCD_LAYERn_CSC_COEFF32(N)	  (LCD_LAYER0_CSC_COEFF32 + (0x400*N))
                                  	                                  ^

-:1204: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF32>
#1204: FILE: drivers/gpu/drm/kmb/kmb_regs.h:82:
+#define LCD_LAYERn_CSC_COEFF32(N)	  (LCD_LAYER0_CSC_COEFF32 + (0x400*N))

-:1204: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1204: FILE: drivers/gpu/drm/kmb/kmb_regs.h:82:
+#define LCD_LAYERn_CSC_COEFF32(N)	  (LCD_LAYER0_CSC_COEFF32 + (0x400*N))

-:1206: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1206: FILE: drivers/gpu/drm/kmb/kmb_regs.h:84:
+#define LCD_LAYERn_CSC_COEFF33(N)	(LCD_LAYER0_CSC_COEFF33 + (0x400*N))
                                  	                                ^

-:1206: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF33>
#1206: FILE: drivers/gpu/drm/kmb/kmb_regs.h:84:
+#define LCD_LAYERn_CSC_COEFF33(N)	(LCD_LAYER0_CSC_COEFF33 + (0x400*N))

-:1206: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1206: FILE: drivers/gpu/drm/kmb/kmb_regs.h:84:
+#define LCD_LAYERn_CSC_COEFF33(N)	(LCD_LAYER0_CSC_COEFF33 + (0x400*N))

-:1208: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1208: FILE: drivers/gpu/drm/kmb/kmb_regs.h:86:
+#define LCD_LAYERn_CSC_OFF1(N)		(LCD_LAYER0_CSC_OFF1 + (0x400*N))
                               		                             ^

-:1208: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_OFF1>
#1208: FILE: drivers/gpu/drm/kmb/kmb_regs.h:86:
+#define LCD_LAYERn_CSC_OFF1(N)		(LCD_LAYER0_CSC_OFF1 + (0x400*N))

-:1208: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1208: FILE: drivers/gpu/drm/kmb/kmb_regs.h:86:
+#define LCD_LAYERn_CSC_OFF1(N)		(LCD_LAYER0_CSC_OFF1 + (0x400*N))

-:1210: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1210: FILE: drivers/gpu/drm/kmb/kmb_regs.h:88:
+#define LCD_LAYERn_CSC_OFF2(N)		(LCD_LAYER0_CSC_OFF2 + (0x400*N))
                               		                             ^

-:1210: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_OFF2>
#1210: FILE: drivers/gpu/drm/kmb/kmb_regs.h:88:
+#define LCD_LAYERn_CSC_OFF2(N)		(LCD_LAYER0_CSC_OFF2 + (0x400*N))

-:1210: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1210: FILE: drivers/gpu/drm/kmb/kmb_regs.h:88:
+#define LCD_LAYERn_CSC_OFF2(N)		(LCD_LAYER0_CSC_OFF2 + (0x400*N))

-:1212: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1212: FILE: drivers/gpu/drm/kmb/kmb_regs.h:90:
+#define LCD_LAYERn_CSC_OFF3(N)		(LCD_LAYER0_CSC_OFF3 + (0x400*N))
                               		                             ^

-:1212: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_OFF3>
#1212: FILE: drivers/gpu/drm/kmb/kmb_regs.h:90:
+#define LCD_LAYERn_CSC_OFF3(N)		(LCD_LAYER0_CSC_OFF3 + (0x400*N))

-:1212: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1212: FILE: drivers/gpu/drm/kmb/kmb_regs.h:90:
+#define LCD_LAYERn_CSC_OFF3(N)		(LCD_LAYER0_CSC_OFF3 + (0x400*N))

-:1214: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1214: FILE: drivers/gpu/drm/kmb/kmb_regs.h:92:
+#define LCD_LAYERn_DMA_CFG(N)		(LCD_LAYER0_DMA_CFG + (0x400*N))
                              		                            ^

-:1214: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1214: FILE: drivers/gpu/drm/kmb/kmb_regs.h:92:
+#define LCD_LAYERn_DMA_CFG(N)		(LCD_LAYER0_DMA_CFG + (0x400*N))

-:1216: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1216: FILE: drivers/gpu/drm/kmb/kmb_regs.h:94:
+#define LCD_LAYERn_DMA_START_ADDR(N)	(LCD_LAYER0_DMA_START_ADR + (0x400*N))
                                     	                                  ^

-:1216: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1216: FILE: drivers/gpu/drm/kmb/kmb_regs.h:94:
+#define LCD_LAYERn_DMA_START_ADDR(N)	(LCD_LAYER0_DMA_START_ADR + (0x400*N))

-:1218: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1218: FILE: drivers/gpu/drm/kmb/kmb_regs.h:96:
+#define LCD_LAYERn_DMA_START_SHADOW(N)	(LCD_LAYER0_DMA_START_SHADOW + (0x400*N))
                                       	                                     ^

-:1218: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1218: FILE: drivers/gpu/drm/kmb/kmb_regs.h:96:
+#define LCD_LAYERn_DMA_START_SHADOW(N)	(LCD_LAYER0_DMA_START_SHADOW + (0x400*N))

-:1220: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1220: FILE: drivers/gpu/drm/kmb/kmb_regs.h:98:
+#define LCD_LAYERn_DMA_LEN(N)		(LCD_LAYER0_DMA_LEN + (0x400*N))
                              		                            ^

-:1220: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1220: FILE: drivers/gpu/drm/kmb/kmb_regs.h:98:
+#define LCD_LAYERn_DMA_LEN(N)		(LCD_LAYER0_DMA_LEN + (0x400*N))

-:1222: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1222: FILE: drivers/gpu/drm/kmb/kmb_regs.h:100:
+#define LCD_LAYERn_DMA_LEN_SHADOW(N)	(LCD_LAYER0_DMA_LEN_SHADOW + (0x400*N))
                                     	                                   ^

-:1222: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LEN_SHADOW>
#1222: FILE: drivers/gpu/drm/kmb/kmb_regs.h:100:
+#define LCD_LAYERn_DMA_LEN_SHADOW(N)	(LCD_LAYER0_DMA_LEN_SHADOW + (0x400*N))

-:1222: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1222: FILE: drivers/gpu/drm/kmb/kmb_regs.h:100:
+#define LCD_LAYERn_DMA_LEN_SHADOW(N)	(LCD_LAYER0_DMA_LEN_SHADOW + (0x400*N))

-:1224: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1224: FILE: drivers/gpu/drm/kmb/kmb_regs.h:102:
+#define LCD_LAYERn_DMA_STATUS(N)	(LCD_LAYER0_DMA_STATUS + (0x400*N))
                                 	                               ^

-:1224: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_STATUS>
#1224: FILE: drivers/gpu/drm/kmb/kmb_regs.h:102:
+#define LCD_LAYERn_DMA_STATUS(N)	(LCD_LAYER0_DMA_STATUS + (0x400*N))

-:1224: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1224: FILE: drivers/gpu/drm/kmb/kmb_regs.h:102:
+#define LCD_LAYERn_DMA_STATUS(N)	(LCD_LAYER0_DMA_STATUS + (0x400*N))

-:1226: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1226: FILE: drivers/gpu/drm/kmb/kmb_regs.h:104:
+#define LCD_LAYERn_DMA_LINE_WIDTH(N)	(LCD_LAYER0_DMA_LINE_WIDTH + (0x400*N))
                                     	                                   ^

-:1226: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1226: FILE: drivers/gpu/drm/kmb/kmb_regs.h:104:
+#define LCD_LAYERn_DMA_LINE_WIDTH(N)	(LCD_LAYER0_DMA_LINE_WIDTH + (0x400*N))

-:1228: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1228: FILE: drivers/gpu/drm/kmb/kmb_regs.h:106:
+#define LCD_LAYERn_DMA_LINE_VSTRIDE(N)	(LCD_LAYER0_DMA_LINE_VSTRIDE + (0x400*N))
                                       	                                     ^

-:1228: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1228: FILE: drivers/gpu/drm/kmb/kmb_regs.h:106:
+#define LCD_LAYERn_DMA_LINE_VSTRIDE(N)	(LCD_LAYER0_DMA_LINE_VSTRIDE + (0x400*N))

-:1230: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1230: FILE: drivers/gpu/drm/kmb/kmb_regs.h:108:
+#define LCD_LAYERn_DMA_FIFO_STATUS(N)	(LCD_LAYER0_DMA_FIFO_STATUS + (0x400*N))
                                      	                                    ^

-:1230: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_FIFO_STATUS>
#1230: FILE: drivers/gpu/drm/kmb/kmb_regs.h:108:
+#define LCD_LAYERn_DMA_FIFO_STATUS(N)	(LCD_LAYER0_DMA_FIFO_STATUS + (0x400*N))

-:1230: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1230: FILE: drivers/gpu/drm/kmb/kmb_regs.h:108:
+#define LCD_LAYERn_DMA_FIFO_STATUS(N)	(LCD_LAYER0_DMA_FIFO_STATUS + (0x400*N))

-:1232: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1232: FILE: drivers/gpu/drm/kmb/kmb_regs.h:110:
+#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))
                           		                         ^

-:1232: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CFG2>
#1232: FILE: drivers/gpu/drm/kmb/kmb_regs.h:110:
+#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))

-:1232: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1232: FILE: drivers/gpu/drm/kmb/kmb_regs.h:110:
+#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))

-:1235: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1235: FILE: drivers/gpu/drm/kmb/kmb_regs.h:113:
+#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))
                           		                         ^

-:1235: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1235: FILE: drivers/gpu/drm/kmb/kmb_regs.h:113:
+#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))

-:1426: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1426: FILE: drivers/gpu/drm/kmb/kmb_regs.h:304:
+#define LAYER3_DMA_FIFO_UNDERFLOW_BIT		(1<<26)
                                      		  ^

-:1427: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1427: FILE: drivers/gpu/drm/kmb/kmb_regs.h:305:
+#define LAYER3_DMA_OVERFLOW_BIT			(1<<25)
                                			  ^

-:1428: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1428: FILE: drivers/gpu/drm/kmb/kmb_regs.h:306:
+#define LAYER3_DMA_IDLE_BIT			(1<<24)
                            			  ^

-:1429: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1429: FILE: drivers/gpu/drm/kmb/kmb_regs.h:307:
+#define LAYER3_DMA_DONE_BIT			(1<<23)
                            			  ^

-:1431: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1431: FILE: drivers/gpu/drm/kmb/kmb_regs.h:309:
+#define LAYER2_DMA_FIFO_UNDERFLOW_BIT		(1<<22)
                                      		  ^

-:1432: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1432: FILE: drivers/gpu/drm/kmb/kmb_regs.h:310:
+#define LAYER2_DMA_OVERFLOW_BIT			(1<<21)
                                			  ^

-:1433: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1433: FILE: drivers/gpu/drm/kmb/kmb_regs.h:311:
+#define LAYER2_DMA_IDLE_BIT			(1<<20)
                            			  ^

-:1434: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1434: FILE: drivers/gpu/drm/kmb/kmb_regs.h:312:
+#define LAYER2_DMA_DONE_BIT			(1<<19)
                            			  ^

-:1436: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1436: FILE: drivers/gpu/drm/kmb/kmb_regs.h:314:
+#define LAYER1_DMA_CR_FIFO_UNDERFLOW_BIT	(1<<18)
                                         	  ^

-:1437: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1437: FILE: drivers/gpu/drm/kmb/kmb_regs.h:315:
+#define LAYER1_DMA_CR_FIFO_OVERFLOW_BIT		(1<<17)
                                        		  ^

-:1438: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1438: FILE: drivers/gpu/drm/kmb/kmb_regs.h:316:
+#define LAYER1_DMA_CB_FIFO_UNDERFLOW_BIT	(1<<16)
                                         	  ^

-:1439: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1439: FILE: drivers/gpu/drm/kmb/kmb_regs.h:317:
+#define LAYER1_DMA_CB_FIFO_OVERFLOW_BIT		(1<<15)
                                        		  ^

-:1441: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1441: FILE: drivers/gpu/drm/kmb/kmb_regs.h:319:
+#define LAYER1_DMA_FIFO_UNDERFLOW_BIT		(1<<14)
                                      		  ^

-:1442: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1442: FILE: drivers/gpu/drm/kmb/kmb_regs.h:320:
+#define LAYER1_DMA_OVERFLOW_BIT			(1<<13)
                                			  ^

-:1443: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1443: FILE: drivers/gpu/drm/kmb/kmb_regs.h:321:
+#define LAYER1_DMA_IDLE_BIT			(1<<12)
                            			  ^

-:1444: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1444: FILE: drivers/gpu/drm/kmb/kmb_regs.h:322:
+#define LAYER1_DMA_DONE_BIT			(1<<11)
                            			  ^

-:1446: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1446: FILE: drivers/gpu/drm/kmb/kmb_regs.h:324:
+#define LAYER0_DMA_CR_FIFO_UNDERFLOW_BIT	(1<<10)
                                         	  ^

-:1447: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1447: FILE: drivers/gpu/drm/kmb/kmb_regs.h:325:
+#define LAYER0_DMA_CR_FIFO_OVERFLOW_BIT		(1<<9)
                                        		  ^

-:1448: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1448: FILE: drivers/gpu/drm/kmb/kmb_regs.h:326:
+#define LAYER0_DMA_CB_FIFO_UNDERFLOW_BIT	(1<<8)
                                         	  ^

-:1449: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1449: FILE: drivers/gpu/drm/kmb/kmb_regs.h:327:
+#define LAYER0_DMA_CB_FIFO_OVERFLOW_BIT		(1<<7)
                                        		  ^

-:1451: WARNING:TYPO_SPELLING: 'UNDEFLOW' may be misspelled - perhaps 'UNDERFLOW'?
#1451: FILE: drivers/gpu/drm/kmb/kmb_regs.h:329:
+#define LAYER0_DMA_FIFO_UNDEFLOW_BIT		(1<<6)

-:1451: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1451: FILE: drivers/gpu/drm/kmb/kmb_regs.h:329:
+#define LAYER0_DMA_FIFO_UNDEFLOW_BIT		(1<<6)
                                     		  ^

-:1452: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1452: FILE: drivers/gpu/drm/kmb/kmb_regs.h:330:
+#define LAYER0_DMA_OVERFLOW_BIT			(1<<5)
                                			  ^

-:1453: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1453: FILE: drivers/gpu/drm/kmb/kmb_regs.h:331:
+#define LAYER0_DMA_IDLE_BIT			(1<<4)
                            			  ^

-:1454: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1454: FILE: drivers/gpu/drm/kmb/kmb_regs.h:332:
+#define LAYER0_DMA_DONE_BIT			(1<<3)
                            			  ^

-:1456: CHECK:CAMELCASE: Avoid CamelCase: <BLT_VIDEOn_DMAm_STATE>
#1456: FILE: drivers/gpu/drm/kmb/kmb_regs.h:334:
+#define  BLT_VIDEOn_DMAm_STATE			0x00

-:1457: CHECK:CAMELCASE: Avoid CamelCase: <BLT_VIDEOn_DMAm_BYTES>
#1457: FILE: drivers/gpu/drm/kmb/kmb_regs.h:335:
+#define  BLT_VIDEOn_DMAm_BYTES			0x00

-:1460: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1460: FILE: drivers/gpu/drm/kmb/kmb_regs.h:338:
+#define  BLT_LAYERn_WIDTH(N)			(0x40C + (0x400*N))
                             			               ^

-:1460: CHECK:CAMELCASE: Avoid CamelCase: <BLT_LAYERn_WIDTH>
#1460: FILE: drivers/gpu/drm/kmb/kmb_regs.h:338:
+#define  BLT_LAYERn_WIDTH(N)			(0x40C + (0x400*N))

-:1460: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1460: FILE: drivers/gpu/drm/kmb/kmb_regs.h:338:
+#define  BLT_LAYERn_WIDTH(N)			(0x40C + (0x400*N))

-:1461: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1461: FILE: drivers/gpu/drm/kmb/kmb_regs.h:339:
+#define  BLT_LAYERn_HEIGHT_OFFSET(N)		(0x410 + (0x400*N))
                                     		               ^

-:1461: CHECK:CAME

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
